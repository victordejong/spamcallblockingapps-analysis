package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/RunJobResultMessage.class */
public class RunJobResultMessage extends Message {
    private JobHolder jobHolder;
    private int result;
    private Object worker;

    public RunJobResultMessage() {
        super(Type.RUN_JOB_RESULT);
    }

    public JobHolder getJobHolder() {
        return this.jobHolder;
    }

    public int getResult() {
        return this.result;
    }

    public Object getWorker() {
        return this.worker;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.jobHolder = null;
    }

    public void setJobHolder(JobHolder jobHolder) {
        this.jobHolder = jobHolder;
    }

    public void setResult(int i) {
        this.result = i;
    }

    public void setWorker(Object obj) {
        this.worker = obj;
    }
}
