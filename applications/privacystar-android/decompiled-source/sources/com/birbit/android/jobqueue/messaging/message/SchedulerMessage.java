package com.birbit.android.jobqueue.messaging.message;

import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
import com.birbit.android.jobqueue.scheduling.SchedulerConstraint;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/SchedulerMessage.class */
public class SchedulerMessage extends Message {
    public static final int START = 1;
    public static final int STOP = 2;
    @NonNull
    private SchedulerConstraint constraint;
    private int what;

    public SchedulerMessage() {
        super(Type.SCHEDULER);
    }

    @NonNull
    public SchedulerConstraint getConstraint() {
        return this.constraint;
    }

    public int getWhat() {
        return this.what;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.constraint = null;
    }

    public void set(int i, @NonNull SchedulerConstraint schedulerConstraint) {
        this.what = i;
        this.constraint = schedulerConstraint;
    }
}
