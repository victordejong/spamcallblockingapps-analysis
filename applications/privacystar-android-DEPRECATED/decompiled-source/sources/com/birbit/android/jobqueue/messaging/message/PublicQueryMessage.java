package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.IntCallback;
import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/PublicQueryMessage.class */
public class PublicQueryMessage extends Message implements IntCallback.MessageWithCallback {
    public static final int ACTIVE_CONSUMER_COUNT = 6;
    public static final int CLEAR = 5;
    public static final int COUNT = 0;
    public static final int COUNT_READY = 1;
    public static final int INTERNAL_RUNNABLE = 101;
    public static final int JOB_STATUS = 4;
    public static final int SCHEDULER_START = 7;
    public static final int START = 2;
    public static final int STOP = 3;
    private IntCallback callback;
    private String stringArg;
    private int what = -1;

    public PublicQueryMessage() {
        super(Type.PUBLIC_QUERY);
    }

    public IntCallback getCallback() {
        return this.callback;
    }

    public String getStringArg() {
        return this.stringArg;
    }

    public int getWhat() {
        return this.what;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.callback = null;
        this.what = -1;
    }

    public void set(int i, IntCallback intCallback) {
        this.callback = intCallback;
        this.what = i;
    }

    public void set(int i, String str, IntCallback intCallback) {
        this.what = i;
        this.stringArg = str;
        this.callback = intCallback;
    }

    @Override // com.birbit.android.jobqueue.IntCallback.MessageWithCallback
    public void setCallback(IntCallback intCallback) {
        this.callback = intCallback;
    }

    public String toString() {
        return "PublicQuery[" + this.what + "]";
    }
}
