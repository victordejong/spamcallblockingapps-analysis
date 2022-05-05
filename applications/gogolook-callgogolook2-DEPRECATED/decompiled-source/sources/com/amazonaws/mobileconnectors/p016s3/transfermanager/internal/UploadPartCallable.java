package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.PartETag;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import java.util.concurrent.Callable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartCallable */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable.class */
public class UploadPartCallable implements Callable<PartETag> {
    public final UploadPartRequest request;

    /* renamed from: s3 */
    public final AmazonS3 f810s3;

    public UploadPartCallable(AmazonS3 amazonS3, UploadPartRequest uploadPartRequest) {
        this.f810s3 = amazonS3;
        this.request = uploadPartRequest;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public PartETag call() throws Exception {
        return this.f810s3.uploadPart(this.request).getPartETag();
    }
}
