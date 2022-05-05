package com.birbit.android.jobqueue.messaging;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/MessageQueueConsumer.class */
public abstract class MessageQueueConsumer {
    public abstract void handleMessage(Message message);

    public abstract void onIdle();

    public void onStart() {
    }
}
