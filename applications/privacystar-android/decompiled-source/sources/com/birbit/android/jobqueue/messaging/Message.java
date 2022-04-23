package com.birbit.android.jobqueue.messaging;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/Message.class */
public abstract class Message {
    Message next;
    public long readyNs = Long.MIN_VALUE;
    public final Type type;

    /* JADX INFO: Access modifiers changed from: protected */
    public Message(Type type) {
        this.type = type;
    }

    protected abstract void onRecycled();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void recycle() {
        this.next = null;
        this.readyNs = Long.MIN_VALUE;
        onRecycled();
    }
}
