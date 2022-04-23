package com.amazonaws.services.s3.model;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ProgressEvent.class */
public class ProgressEvent extends com.amazonaws.event.ProgressEvent {
    public ProgressEvent(int i) {
        super(i);
    }

    public ProgressEvent(int i, long j) {
        super(i, j);
    }

    @Deprecated
    public int getBytesTransfered() {
        return (int) getBytesTransferred();
    }

    @Deprecated
    public void setBytesTransfered(int i) {
        setBytesTransferred(i);
    }
}
