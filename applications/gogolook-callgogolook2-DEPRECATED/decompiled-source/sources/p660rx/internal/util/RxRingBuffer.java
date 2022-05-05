package p660rx.internal.util;

import java.io.PrintStream;
import java.util.Queue;
import p660rx.Subscription;
import p660rx.exceptions.MissingBackpressureException;
import p660rx.internal.operators.NotificationLite;
import p660rx.internal.util.atomic.SpscAtomicArrayQueue;
import p660rx.internal.util.unsafe.SpmcArrayQueue;
import p660rx.internal.util.unsafe.SpscArrayQueue;
import p660rx.internal.util.unsafe.UnsafeAccess;
/* renamed from: rx.internal.util.RxRingBuffer */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/RxRingBuffer.class */
public class RxRingBuffer implements Subscription {
    public static final int SIZE;
    public Queue<Object> queue;
    public volatile Object terminalState;

    static {
        int i = PlatformDependent.isAndroid() ? 16 : 128;
        String property = System.getProperty("rx.ring-buffer.size");
        int i2 = i;
        if (property != null) {
            try {
                i2 = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                PrintStream printStream = System.err;
                printStream.println("Failed to set 'rx.buffer.size' with value " + property + " => " + e.getMessage());
                i2 = i;
            }
        }
        SIZE = i2;
    }

    public RxRingBuffer() {
        this(new SpscAtomicArrayQueue(SIZE), SIZE);
    }

    public RxRingBuffer(Queue<Object> queue, int i) {
        this.queue = queue;
    }

    public RxRingBuffer(boolean z, int i) {
        this.queue = z ? new SpmcArrayQueue<>(i) : new SpscArrayQueue<>(i);
    }

    public static RxRingBuffer getSpmcInstance() {
        return UnsafeAccess.isUnsafeAvailable() ? new RxRingBuffer(true, SIZE) : new RxRingBuffer();
    }

    public static RxRingBuffer getSpscInstance() {
        return UnsafeAccess.isUnsafeAvailable() ? new RxRingBuffer(false, SIZE) : new RxRingBuffer();
    }

    public Object getValue(Object obj) {
        return NotificationLite.getValue(obj);
    }

    public boolean isCompleted(Object obj) {
        return NotificationLite.isCompleted(obj);
    }

    public boolean isEmpty() {
        Queue<Object> queue = this.queue;
        return queue == null || queue.isEmpty();
    }

    @Override // p660rx.Subscription
    public boolean isUnsubscribed() {
        return this.queue == null;
    }

    public void onCompleted() {
        if (this.terminalState == null) {
            this.terminalState = NotificationLite.completed();
        }
    }

    public void onNext(Object obj) throws MissingBackpressureException {
        boolean z;
        boolean z2;
        synchronized (this) {
            Queue<Object> queue = this.queue;
            z = true;
            if (queue != null) {
                z2 = !queue.offer(NotificationLite.next(obj));
                z = false;
            } else {
                z2 = false;
            }
        }
        if (z) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        } else if (z2) {
            throw new MissingBackpressureException();
        }
    }

    public Object peek() {
        synchronized (this) {
            Queue<Object> queue = this.queue;
            if (queue == null) {
                return null;
            }
            Object peek = queue.peek();
            Object obj = this.terminalState;
            Object obj2 = peek;
            if (peek == null) {
                obj2 = peek;
                if (obj != null) {
                    obj2 = peek;
                    if (queue.peek() == null) {
                        obj2 = obj;
                    }
                }
            }
            return obj2;
        }
    }

    public Object poll() {
        synchronized (this) {
            Queue<Object> queue = this.queue;
            if (queue == null) {
                return null;
            }
            Object poll = queue.poll();
            Object obj = this.terminalState;
            Object obj2 = poll;
            if (poll == null) {
                obj2 = poll;
                if (obj != null) {
                    obj2 = poll;
                    if (queue.peek() == null) {
                        this.terminalState = null;
                        obj2 = obj;
                    }
                }
            }
            return obj2;
        }
    }

    public void release() {
        synchronized (this) {
        }
    }

    @Override // p660rx.Subscription
    public void unsubscribe() {
        release();
    }
}
