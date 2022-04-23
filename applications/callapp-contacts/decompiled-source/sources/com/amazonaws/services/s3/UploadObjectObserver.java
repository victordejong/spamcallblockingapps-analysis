package com.amazonaws.services.s3;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.PartCreationEvent;
import com.amazonaws.services.s3.internal.S3DirectSpi;
import com.amazonaws.services.s3.model.UploadObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/UploadObjectObserver.class */
public class UploadObjectObserver {

    /* renamed from: a  reason: collision with root package name */
    S3DirectSpi f6781a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Future<UploadPartResult>> f6782b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private UploadObjectRequest f6783c;

    /* renamed from: d  reason: collision with root package name */
    private String f6784d;
    private ExecutorService e;

    public final void a(PartCreationEvent partCreationEvent) {
        final File file = partCreationEvent.f6811a;
        final UploadPartRequest withObjectMetadata = new UploadPartRequest().withBucketName(this.f6783c.getBucketName()).withFile(file).withKey(this.f6783c.getKey()).withPartNumber(partCreationEvent.f6812b).withPartSize(file.length()).withLastPart(partCreationEvent.f6813c).withUploadId(this.f6784d).withObjectMetadata(this.f6783c.getUploadPartMetadata());
        final OnFileDelete onFileDelete = partCreationEvent.f6814d;
        withObjectMetadata.getRequestClientOptions().a(AmazonS3EncryptionClient.i);
        this.f6782b.add(this.e.submit(new Callable<UploadPartResult>() { // from class: com.amazonaws.services.s3.UploadObjectObserver.1
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: a */
            public UploadPartResult call() {
                try {
                    UploadObjectObserver uploadObjectObserver = UploadObjectObserver.this;
                    UploadPartResult a2 = uploadObjectObserver.f6781a.a(withObjectMetadata);
                    if (!file.delete()) {
                        Log a3 = LogFactory.a(getClass());
                        a3.b("Ignoring failure to delete file " + file + " which has already been uploaded");
                    } else {
                        OnFileDelete onFileDelete2 = onFileDelete;
                        if (onFileDelete2 != null) {
                            onFileDelete2.a();
                        }
                    }
                    return a2;
                } catch (Throwable th) {
                    if (file.delete()) {
                        OnFileDelete onFileDelete3 = onFileDelete;
                        if (onFileDelete3 != null) {
                            onFileDelete3.a();
                        }
                    } else {
                        Log a4 = LogFactory.a(getClass());
                        a4.b("Ignoring failure to delete file " + file + " which has already been uploaded");
                    }
                    throw th;
                }
            }
        }));
    }
}
