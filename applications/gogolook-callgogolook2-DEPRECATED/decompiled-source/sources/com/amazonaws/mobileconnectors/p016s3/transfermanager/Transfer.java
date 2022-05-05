package com.amazonaws.mobileconnectors.p016s3.transfermanager;
@Deprecated
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.Transfer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/Transfer.class */
public interface Transfer {

    /* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState.class */
    public enum TransferState {
        Waiting,
        InProgress,
        Completed,
        Canceled,
        Failed
    }
}
