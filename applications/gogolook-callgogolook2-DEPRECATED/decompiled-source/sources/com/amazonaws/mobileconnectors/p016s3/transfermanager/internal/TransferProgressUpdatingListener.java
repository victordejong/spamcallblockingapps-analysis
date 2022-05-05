package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferProgress;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener.class */
public class TransferProgressUpdatingListener implements ProgressListener {
    public final TransferProgress transferProgress;

    public TransferProgressUpdatingListener(TransferProgress transferProgress) {
        this.transferProgress = transferProgress;
    }

    @Override // com.amazonaws.event.ProgressListener
    public void progressChanged(ProgressEvent progressEvent) {
        long bytesTransferred = progressEvent.getBytesTransferred();
        if (bytesTransferred != 0) {
            this.transferProgress.updateProgress(bytesTransferred);
        }
    }
}
