package com.birbit.android.jobqueue.messaging.message;

import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/CallbackMessage.class */
public class CallbackMessage extends Message {
    public static final int ON_ADDED = 1;
    public static final int ON_AFTER_RUN = 5;
    public static final int ON_CANCEL = 3;
    public static final int ON_DONE = 4;
    public static final int ON_RUN = 2;
    private boolean byUserRequest;
    private Job job;
    private int resultCode;
    @Nullable
    private Throwable throwable;
    private int what;

    public CallbackMessage() {
        super(Type.CALLBACK);
    }

    public Job getJob() {
        return this.job;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    @Nullable
    public Throwable getThrowable() {
        return this.throwable;
    }

    public int getWhat() {
        return this.what;
    }

    public boolean isByUserRequest() {
        return this.byUserRequest;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.job = null;
        this.throwable = null;
    }

    public void set(Job job, int i) {
        this.what = i;
        this.job = job;
    }

    public void set(Job job, int i, int i2) {
        this.what = i;
        this.resultCode = i2;
        this.job = job;
    }

    public void set(Job job, int i, boolean z, @Nullable Throwable th) {
        this.what = i;
        this.byUserRequest = z;
        this.job = job;
        this.throwable = th;
    }
}
