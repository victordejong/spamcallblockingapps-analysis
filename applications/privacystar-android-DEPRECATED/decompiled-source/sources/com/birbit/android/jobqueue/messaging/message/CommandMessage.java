package com.birbit.android.jobqueue.messaging.message;

import com.birbit.android.jobqueue.messaging.Message;
import com.birbit.android.jobqueue.messaging.Type;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/message/CommandMessage.class */
public class CommandMessage extends Message {
    public static final int POKE = 2;
    public static final int QUIT = 1;
    public static final int RUNNABLE = 3;
    private Runnable runnable;
    private int what;

    public CommandMessage() {
        super(Type.COMMAND);
    }

    public Runnable getRunnable() {
        return this.runnable;
    }

    public int getWhat() {
        return this.what;
    }

    @Override // com.birbit.android.jobqueue.messaging.Message
    protected void onRecycled() {
        this.what = -1;
        this.runnable = null;
    }

    public void set(int i) {
        this.what = i;
    }

    public void setRunnable(Runnable runnable) {
        this.runnable = runnable;
    }

    public String toString() {
        return "Command[" + this.what + "]";
    }
}
