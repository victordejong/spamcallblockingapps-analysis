package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/ConstraintChangeMessage.class */
public class ConstraintChangeMessage extends Message {
    private boolean forNextJob;

    public ConstraintChangeMessage() {
        super(Type.CONSTRAINT_CHANGE);
    }

    public boolean isForNextJob() {
        return this.forNextJob;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.forNextJob = false;
    }

    public void setForNextJob(boolean z) {
        this.forNextJob = z;
    }
}
