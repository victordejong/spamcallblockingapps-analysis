package com.amazonaws.mobileconnectors.p016s3.transfermanager;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
@Deprecated
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress.class */
public final class TransferProgress {
    public static final Log log = LogFactory.getLog(TransferProgress.class);
    public volatile long bytesTransferred = 0;
    public volatile long totalBytesToTransfer = -1;

    public void setTotalBytesToTransfer(long j) {
        this.totalBytesToTransfer = j;
    }

    public void updateProgress(long j) {
        synchronized (this) {
            this.bytesTransferred += j;
            if (this.totalBytesToTransfer > -1 && this.bytesTransferred > this.totalBytesToTransfer) {
                this.bytesTransferred = this.totalBytesToTransfer;
                if (log.isDebugEnabled()) {
                    log.debug("Number of bytes transfered is more than the actual total bytes to transfer. Total number of bytes to Transfer : " + this.totalBytesToTransfer + ". Bytes Transferred : " + (this.bytesTransferred + j));
                }
            }
        }
    }
}
