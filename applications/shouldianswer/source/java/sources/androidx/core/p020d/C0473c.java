package androidx.core.p020d;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.core.d.c */
/* loaded from: classes-dex2jar.jar:androidx/core/d/c.class */
public class C0473c {

    /* renamed from: b */
    private HandlerThread f1736b;

    /* renamed from: c */
    private Handler f1737c;

    /* renamed from: f */
    private final int f1740f;

    /* renamed from: g */
    private final int f1741g;

    /* renamed from: h */
    private final String f1742h;

    /* renamed from: a */
    private final Object f1735a = new Object();

    /* renamed from: e */
    private Handler.Callback f1739e = new Handler.Callback() { // from class: androidx.core.d.c.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                C0473c.this.m6518a();
                return true;
            } else if (i != 1) {
                return true;
            } else {
                C0473c.this.m6517a((Runnable) message.obj);
                return true;
            }
        }
    };

    /* renamed from: d */
    private int f1738d = 0;

    /* renamed from: androidx.core.d.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/c$a.class */
    public interface AbstractC0478a<T> {
        /* renamed from: a */
        void mo6513a(T t);
    }

    public C0473c(String str, int i, int i2) {
        this.f1742h = str;
        this.f1741g = i;
        this.f1740f = i2;
    }

    /* renamed from: b */
    private void m6514b(Runnable runnable) {
        synchronized (this.f1735a) {
            if (this.f1736b == null) {
                this.f1736b = new HandlerThread(this.f1742h, this.f1741g);
                this.f1736b.start();
                this.f1737c = new Handler(this.f1736b.getLooper(), this.f1739e);
                this.f1738d++;
            }
            this.f1737c.removeMessages(0);
            this.f1737c.sendMessage(this.f1737c.obtainMessage(1, runnable));
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: a */
    public <T> T m6516a(final Callable<T> callable, int i) {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m6514b(new Runnable() { // from class: androidx.core.d.c.3
            @Override // java.lang.Runnable
            public void run() {
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
    void m6518a() {
        synchronized (this.f1735a) {
            if (this.f1737c.hasMessages(1)) {
                return;
            }
            this.f1736b.quit();
            this.f1736b = null;
            this.f1737c = null;
        }
    }

    /* renamed from: a */
    void m6517a(Runnable runnable) {
        runnable.run();
        synchronized (this.f1735a) {
            this.f1737c.removeMessages(0);
            this.f1737c.sendMessageDelayed(this.f1737c.obtainMessage(0), this.f1740f);
        }
    }

    /* renamed from: a */
    public <T> void m6515a(final Callable<T> callable, final AbstractC0478a<T> abstractC0478a) {
        final Handler handler = new Handler();
        m6514b(new Runnable() { // from class: androidx.core.d.c.2
            @Override // java.lang.Runnable
            public void run() {
                Object obj;
                try {
                    obj = callable.call();
                } catch (Exception e) {
                    obj = null;
                }
                final Object obj2 = obj;
                handler.post(new Runnable() { // from class: androidx.core.d.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC0478a.mo6513a(obj2);
                    }
                });
            }
        });
    }
}
