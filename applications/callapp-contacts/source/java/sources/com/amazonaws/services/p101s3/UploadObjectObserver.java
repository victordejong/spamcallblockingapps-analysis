package com.amazonaws.services.p101s3;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.internal.PartCreationEvent;
import com.amazonaws.services.p101s3.internal.S3DirectSpi;
import com.amazonaws.services.p101s3.model.UploadObjectRequest;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.services.s3.UploadObjectObserver */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/UploadObjectObserver.class */
public class UploadObjectObserver {

    /* renamed from: a */
    S3DirectSpi f12313a;

    /* renamed from: b */
    private final List<Future<UploadPartResult>> f12314b = new ArrayList();

    /* renamed from: c */
    private UploadObjectRequest f12315c;

    /* renamed from: d */
    private String f12316d;

    /* renamed from: e */
    private ExecutorService f12317e;

    /* renamed from: a */
    public final void m38443a(PartCreationEvent partCreationEvent) {
        final File file = partCreationEvent.f12352a;
        final UploadPartRequest withObjectMetadata = new UploadPartRequest().withBucketName(this.f12315c.getBucketName()).withFile(file).withKey(this.f12315c.getKey()).withPartNumber(partCreationEvent.f12353b).withPartSize(file.length()).withLastPart(partCreationEvent.f12354c).withUploadId(this.f12316d).withObjectMetadata(this.f12315c.getUploadPartMetadata());
        final OnFileDelete onFileDelete = partCreationEvent.f12355d;
        withObjectMetadata.getRequestClientOptions().m38697a(AmazonS3EncryptionClient.f12302i);
        this.f12314b.add(this.f12317e.submit(new Callable<UploadPartResult>() { // from class: com.amazonaws.services.s3.UploadObjectObserver.1
            /* renamed from: a */
            public UploadPartResult call() {
                try {
                    UploadObjectObserver uploadObjectObserver = UploadObjectObserver.this;
                    UploadPartResult mo38419a = uploadObjectObserver.f12313a.mo38419a(withObjectMetadata);
                    if (!file.delete()) {
                        Log m38584a = LogFactory.m38584a(getClass());
                        m38584a.mo38593b("Ignoring failure to delete file " + file + " which has already been uploaded");
                    } else {
                        OnFileDelete onFileDelete2 = onFileDelete;
                        if (onFileDelete2 != null) {
                            onFileDelete2.mo38433a();
                        }
                    }
                    return mo38419a;
                } catch (Throwable th) {
                    if (file.delete()) {
                        OnFileDelete onFileDelete3 = onFileDelete;
                        if (onFileDelete3 != null) {
                            onFileDelete3.mo38433a();
                        }
                    } else {
                        Log m38584a2 = LogFactory.m38584a(getClass());
                        m38584a2.mo38593b("Ignoring failure to delete file " + file + " which has already been uploaded");
                    }
                    throw th;
                }
            }
        }));
    }
}
