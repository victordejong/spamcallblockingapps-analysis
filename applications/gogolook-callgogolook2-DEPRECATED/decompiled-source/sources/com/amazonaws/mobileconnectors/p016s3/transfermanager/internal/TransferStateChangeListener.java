package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.mobileconnectors.p016s3.transfermanager.Transfer;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferStateChangeListener */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener.class */
public interface TransferStateChangeListener {
    void transferStateChanged(Transfer transfer, Transfer.TransferState transferState);
}
