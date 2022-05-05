package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/JobConsumerIdleMessage.class */
public class JobConsumerIdleMessage extends Message {
    private long lastJobCompleted;
    private Object worker;

    public JobConsumerIdleMessage() {
        super(Type.JOB_CONSUMER_IDLE);
    }

    public long getLastJobCompleted() {
        return this.lastJobCompleted;
    }

    public Object getWorker() {
        return this.worker;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.worker = null;
    }

    public void setLastJobCompleted(long j) {
        this.lastJobCompleted = j;
    }

    public void setWorker(Object obj) {
        this.worker = obj;
    }
}
