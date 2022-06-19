package androidx.core.p033c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.core.c.c */
/* loaded from: classes-dex2jar.jar:androidx/core/c/c.class */
public final class C0780c {

    /* renamed from: b */
    HandlerThread f3457b;

    /* renamed from: c */
    Handler f3458c;

    /* renamed from: d */
    final int f3459d;

    /* renamed from: g */
    private final int f3462g;

    /* renamed from: h */
    private final String f3463h;

    /* renamed from: a */
    final Object f3456a = new Object();

    /* renamed from: f */
    private Handler.Callback f3461f = new Handler.Callback() { // from class: androidx.core.c.c.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return true;
                }
                C0780c c0780c = C0780c.this;
                ((Runnable) message.obj).run();
                synchronized (c0780c.f3456a) {
                    c0780c.f3458c.removeMessages(0);
                    c0780c.f3458c.sendMessageDelayed(c0780c.f3458c.obtainMessage(0), c0780c.f3459d);
                }
                return true;
            }
            C0780c c0780c2 = C0780c.this;
            synchronized (c0780c2.f3456a) {
                if (c0780c2.f3458c.hasMessages(1)) {
                    return true;
                }
                c0780c2.f3457b.quit();
                c0780c2.f3457b = null;
                c0780c2.f3458c = null;
                return true;
            }
        }
    };

    /* renamed from: e */
    private int f3460e = 0;

    /* renamed from: androidx.core.c.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/c/c$a.class */
    public interface AbstractC0785a<T> {
        /* renamed from: a */
        void mo44511a(T t);
    }

    public C0780c(String str, int i, int i2) {
        this.f3463h = str;
        this.f3462g = i;
        this.f3459d = i2;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: a */
    public final <T> T m44512a(final Callable<T> callable, int i) throws InterruptedException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m44513a(new Runnable() { // from class: androidx.core.c.c.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception e) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    newCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            char nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException e) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: a */
    public final void m44513a(Runnable runnable) {
        synchronized (this.f3456a) {
            if (this.f3457b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f3463h, this.f3462g);
                this.f3457b = handlerThread;
                handlerThread.start();
                this.f3458c = new Handler(this.f3457b.getLooper(), this.f3461f);
                this.f3460e++;
            }
            this.f3458c.removeMessages(0);
            Handler handler = this.f3458c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }
}
