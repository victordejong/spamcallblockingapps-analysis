package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.timer.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/SafeMessageQueue.class */
public class SafeMessageQueue extends UnsafeMessageQueue implements MessageQueue {
    private final DelayedMessageBag delayedBag;
    private final MessageFactory factory;
    private final Timer timer;
    private final Object LOCK = new Object();
    private final AtomicBoolean running = new AtomicBoolean(false);
    private boolean postMessageTick = false;

    public SafeMessageQueue(Timer timer, MessageFactory messageFactory, String str) {
        super(messageFactory, str);
        this.factory = messageFactory;
        this.timer = timer;
        this.delayedBag = new DelayedMessageBag(messageFactory);
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void cancelMessages(MessagePredicate messagePredicate) {
        synchronized (this.LOCK) {
            super.removeMessages(messagePredicate);
            this.delayedBag.removeMessages(messagePredicate);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.UnsafeMessageQueue, com.birbit.android.jobqueue.messaging.MessageQueue
    public void clear() {
        synchronized (this.LOCK) {
            super.clear();
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void consume(MessageQueueConsumer messageQueueConsumer) {
        if (this.running.getAndSet(true)) {
            throw new IllegalStateException("only 1 consumer per MQ");
        }
        messageQueueConsumer.onStart();
        while (this.running.get()) {
            Message next = next(messageQueueConsumer);
            if (next != null) {
                messageQueueConsumer.handleMessage(next);
                this.factory.release(next);
            }
        }
        JqLog.m392d("[%s] finished queue", this.logTag);
    }

    public boolean isRunning() {
        return this.running.get();
    }

    Message next(MessageQueueConsumer messageQueueConsumer) {
        long nanoTime;
        Long flushReadyMessages;
        boolean z = false;
        while (this.running.get()) {
            synchronized (this.LOCK) {
                nanoTime = this.timer.nanoTime();
                flushReadyMessages = this.delayedBag.flushReadyMessages(nanoTime, this);
                Message next = super.next();
                if (next != null) {
                    return next;
                }
                this.postMessageTick = false;
            }
            boolean z2 = z;
            if (!z) {
                messageQueueConsumer.onIdle();
                z2 = true;
            }
            synchronized (this.LOCK) {
                if (this.postMessageTick) {
                    z = z2;
                } else if (flushReadyMessages == null || flushReadyMessages.longValue() > nanoTime) {
                    if (this.running.get()) {
                        if (flushReadyMessages == null) {
                            try {
                                JqLog.m392d("[%s] will wait on the lock forever", this.logTag);
                                this.timer.waitOnObject(this.LOCK);
                            } catch (InterruptedException e) {
                            }
                        } else {
                            JqLog.m392d("[%s] will wait on the lock until %d", this.logTag, flushReadyMessages);
                            this.timer.waitOnObjectUntilNs(this.LOCK, flushReadyMessages.longValue());
                        }
                    }
                    z = z2;
                } else {
                    JqLog.m392d("[%s] next message is ready, requery", this.logTag);
                    z = z2;
                }
            }
        }
        return null;
    }

    @Override // com.birbit.android.jobqueue.messaging.UnsafeMessageQueue, com.birbit.android.jobqueue.messaging.MessageQueue
    public void post(Message message) {
        synchronized (this.LOCK) {
            this.postMessageTick = true;
            super.post(message);
            this.timer.notifyObject(this.LOCK);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.MessageQueue
    public void postAt(Message message, long j) {
        synchronized (this.LOCK) {
            this.postMessageTick = true;
            this.delayedBag.add(message, j);
            this.timer.notifyObject(this.LOCK);
        }
    }

    @Override // com.birbit.android.jobqueue.messaging.UnsafeMessageQueue
    public void postAtFront(Message message) {
        synchronized (this.LOCK) {
            this.postMessageTick = true;
            super.postAtFront(message);
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
