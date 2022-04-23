package com.amazonaws.mobileconnectors.p016s3.transfermanager;
@Deprecated
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration.class */
public class TransferManagerConfiguration {
    public long minimumUploadPartSize = 5242880;
    public long multipartUploadThreshold = 16777216;

    public long getMinimumUploadPartSize() {
        return this.minimumUploadPartSize;
    }

    public long getMultipartUploadThreshold() {
        return this.multipartUploadThreshold;
    }
}
