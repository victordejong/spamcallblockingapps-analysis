package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/AddJobMessage.class */
public class AddJobMessage extends Message {
    private Job job;

    public AddJobMessage() {
        super(Type.ADD_JOB);
    }

    public Job getJob() {
        return this.job;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.job = null;
    }

    public void setJob(Job job) {
        this.job = job;
    }
}
