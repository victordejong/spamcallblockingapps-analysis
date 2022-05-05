package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.log.JqLog;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/UnsafeMessageQueue.class */
class UnsafeMessageQueue {
    private static final AtomicInteger idCounter = new AtomicInteger(0);
    private final MessageFactory factory;
    public final String logTag;
    private Message queue = null;
    private Message tail = null;

    public UnsafeMessageQueue(MessageFactory messageFactory, String str) {
        this.factory = messageFactory;
        this.logTag = str + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + idCounter.incrementAndGet();
    }

    private void remove(Message message, Message message2) {
        if (this.tail == message2) {
            this.tail = message;
        }
        if (message == null) {
            this.queue = message2.next;
        } else {
            message.next = message2.next;
        }
        this.factory.release(message2);
    }

    public void clear() {
        while (this.queue != null) {
            Message message = this.queue;
            this.queue = message.next;
            this.factory.release(message);
        }
        this.tail = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message next() {
        Message message = this.queue;
        JqLog.m392d("[%s] remove message %s", this.logTag, message);
        if (message != null) {
            this.queue = message.next;
            if (this.tail == message) {
                this.tail = null;
            }
        }
        return message;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void post(Message message) {
        JqLog.m392d("[%s] post message %s", this.logTag, message);
        if (this.tail == null) {
            this.queue = message;
            this.tail = message;
            return;
        }
        this.tail.next = message;
        this.tail = message;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postAtFront(Message message) {
        message.next = this.queue;
        if (this.tail == null) {
            this.tail = message;
        }
        this.queue = message;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeMessages(MessagePredicate messagePredicate) {
        Message message = this.queue;
        Message message2 = null;
        while (message != null) {
            if (messagePredicate.onMessage(message)) {
                message = message.next;
                remove(message2, message);
            } else {
                message = message.next;
                message2 = message;
            }
        }
    }
}
