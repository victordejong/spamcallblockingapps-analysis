package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/PriorityMessageQueue.class */
public class PriorityMessageQueue implements MessageQueue {
    private static final String LOG_TAG = "priority_mq";
    private final DelayedMessageBag delayedBag;
    private final MessageFactory factory;
    private final Timer timer;
    private final Object LOCK = new Object();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private boolean postJobTick = false;
    private final UnsafeMessageQueue[] queues = new UnsafeMessageQueue[Type.MAX_PRIORITY + 1];

    public PriorityMessageQueue(Timer timer, MessageFactory messageFactory) {
        this.delayedBag = new DelayedMessageBag(messageFactory);
        this.factory = messageFactory;
        this.timer = timer;
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void cancelMessages(MessagePredicate messagePredicate) {
        synchronized (this.LOCK) {
            for (int i = 0; i <= Type.MAX_PRIORITY; i++) {
                UnsafeMessageQueue unsafeMessageQueue = this.queues[i];
                if (unsafeMessageQueue != null) {
                    unsafeMessageQueue.removeMessages(messagePredicate);
                }
            }
            this.delayedBag.removeMessages(messagePredicate);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void clear() {
        synchronized (this.LOCK) {
            for (int i = Type.MAX_PRIORITY; i >= 0; i--) {
                UnsafeMessageQueue unsafeMessageQueue = this.queues[i];
                if (unsafeMessageQueue != null) {
                    unsafeMessageQueue.clear();
                }
            }
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void consume(MessageQueueConsumer messageQueueConsumer) {
        if (this.running.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        while (this.running.get()) {
            Message next = next(messageQueueConsumer);
            if (next != null) {
                JqLog.m392d("[%s] consuming message of type %s", LOG_TAG, next.type);
                messageQueueConsumer.handleMessage(next);
                this.factory.release(next);
            }
        }
    }

    public Message next(MessageQueueConsumer messageQueueConsumer) {
        long nanoTime;
        Long flushReadyMessages;
        Message next;
        boolean z = false;
        while (this.running.get()) {
            synchronized (this.LOCK) {
                nanoTime = this.timer.nanoTime();
                JqLog.m392d("[%s] looking for next message at time %s", LOG_TAG, Long.valueOf(nanoTime));
                flushReadyMessages = this.delayedBag.flushReadyMessages(nanoTime, this);
                JqLog.m392d("[%s] next delayed job %s", LOG_TAG, flushReadyMessages);
                for (int i = Type.MAX_PRIORITY; i >= 0; i--) {
                    UnsafeMessageQueue unsafeMessageQueue = this.queues[i];
                    if (!(unsafeMessageQueue == null || (next = unsafeMessageQueue.next()) == null)) {
                        return next;
                    }
                }
                this.postJobTick = false;
            }
            boolean z2 = z;
            if (!z) {
                messageQueueConsumer.onIdle();
                z2 = true;
            }
            synchronized (this.LOCK) {
                JqLog.m392d("[%s] did on idle post a message? %s", LOG_TAG, Boolean.valueOf(this.postJobTick));
                if (this.postJobTick) {
                    z = z2;
                } else if (flushReadyMessages == null || flushReadyMessages.longValue() > nanoTime) {
                    if (this.running.get()) {
                        if (flushReadyMessages == null) {
                            try {
                                this.timer.waitOnObject(this.LOCK);
                            } catch (InterruptedException e) {
                            }
                        } else {
                            this.timer.waitOnObjectUntilNs(this.LOCK, flushReadyMessages.longValue());
                        }
                    }
                    z = z2;
                } else {
                    z = z2;
                }
            }
        }
        return null;
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void post(Message message) {
        synchronized (this.LOCK) {
            this.postJobTick = true;
            int i = message.type.priority;
            if (this.queues[i] == null) {
                UnsafeMessageQueue[] unsafeMessageQueueArr = this.queues;
                MessageFactory messageFactory = this.factory;
                unsafeMessageQueueArr[i] = new UnsafeMessageQueue(messageFactory, "queue_" + message.type.name());
            }
            this.queues[i].post(message);
            this.timer.notifyObject(this.LOCK);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void postAt(Message message, long j) {
        synchronized (this.LOCK) {
            this.postJobTick = true;
            this.delayedBag.add(message, j);
            this.timer.notifyObject(this.LOCK);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void stop() {
        this.running.set(false);
        synchronized (this.LOCK) {
            this.timer.notifyObject(this.LOCK);
        }
    }
}
