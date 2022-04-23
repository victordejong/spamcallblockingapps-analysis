package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.log.JqLog;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/DelayedMessageBag.class */
class DelayedMessageBag {
    final MessageFactory factory;
    Message queue = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelayedMessageBag(MessageFactory messageFactory) {
        this.factory = messageFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(Message message, long j) {
        JqLog.m392d("add delayed message %s at time %s", message, Long.valueOf(j));
        message.readyNs = j;
        if (this.queue == null) {
            this.queue = message;
            return;
        }
        Message message2 = null;
        Message message3 = this.queue;
        while (message3 != null && message3.readyNs <= j) {
            message3 = message3.next;
            message2 = message3;
        }
        if (message2 == null) {
            message.next = this.queue;
            this.queue = message;
            return;
        }
        message2.next = message;
        message.next = message3;
    }

    public void clear() {
        while (this.queue != null) {
            Message message = this.queue;
            this.queue = message.next;
            this.factory.release(message);
        }
        this.queue = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long flushReadyMessages(long j, MessageQueue messageQueue) {
        JqLog.m392d("flushing messages at time %s", Long.valueOf(j));
        while (this.queue != null && this.queue.readyNs <= j) {
            Message message = this.queue;
            this.queue = message.next;
            message.next = null;
            messageQueue.post(message);
        }
        if (this.queue == null) {
            return null;
        }
        JqLog.m392d("returning next ready at %d ns", Long.valueOf(this.queue.readyNs - j));
        return Long.valueOf(this.queue.readyNs);
    }

    public void removeMessages(MessagePredicate messagePredicate) {
        Message message = this.queue;
        Message message2 = null;
        while (message != null) {
            boolean onMessage = messagePredicate.onMessage(message);
            message = message.next;
            if (onMessage) {
                if (message2 == null) {
                    this.queue = message.next;
                } else {
                    message2.next = message.next;
                }
                this.factory.release(message);
            } else {
                message2 = message;
            }
        }
    }
}
