package androidx.core.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:androidx/core/c/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    HandlerThread f1809b;

    /* renamed from: c  reason: collision with root package name */
    Handler f1810c;

    /* renamed from: d  reason: collision with root package name */
    final int f1811d;
    private final int g;
    private final String h;

    /* renamed from: a  reason: collision with root package name */
    final Object f1808a = new Object();
    private Handler.Callback f = new Handler.Callback() { // from class: androidx.core.c.c.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                c cVar = c.this;
                synchronized (cVar.f1808a) {
                    if (cVar.f1810c.hasMessages(1)) {
                        return true;
                    }
                    cVar.f1809b.quit();
                    cVar.f1809b = null;
                    cVar.f1810c = null;
                    return true;
                }
            } else if (i != 1) {
                return true;
            } else {
                c cVar2 = c.this;
                ((Runnable) message.obj).run();
                synchronized (cVar2.f1808a) {
                    cVar2.f1810c.removeMessages(0);
                    cVar2.f1810c.sendMessageDelayed(cVar2.f1810c.obtainMessage(0), cVar2.f1811d);
                }
                return true;
            }
        }
    };
    private int e = 0;

    /* loaded from: classes-dex2jar.jar:androidx/core/c/c$a.class */
    public interface a<T> {
        void a(T t);
    }

    public c(String str, int i, int i2) {
        this.h = str;
        this.g = i;
        this.f1811d = i2;
    }

    public final <T> T a(final Callable<T> callable, int i) throws InterruptedException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        a(new Runnable() { // from class: androidx.core.c.c.3
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
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Runnable runnable) {
        synchronized (this.f1808a) {
            if (this.f1809b == null) {
                HandlerThread handlerThread = new HandlerThread(this.h, this.g);
                this.f1809b = handlerThread;
                handlerThread.start();
                this.f1810c = new Handler(this.f1809b.getLooper(), this.f);
                this.e++;
            }
            this.f1810c.removeMessages(0);
            Handler handler = this.f1810c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }
}
