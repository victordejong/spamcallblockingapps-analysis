package androidx.core.p023e;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.core.e.c */
/* loaded from: classes-dex2jar.jar:androidx/core/e/c.class */
public class C0497c {

    /* renamed from: b */
    private HandlerThread f1887b;

    /* renamed from: c */
    private Handler f1888c;

    /* renamed from: f */
    private final int f1891f;

    /* renamed from: g */
    private final int f1892g;

    /* renamed from: h */
    private final String f1893h;

    /* renamed from: a */
    private final Object f1886a = new Object();

    /* renamed from: e */
    private Handler.Callback f1890e = new Handler.Callback() { // from class: androidx.core.e.c.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    C0497c.this.m20698a();
                    return true;
                case 1:
                    C0497c.this.m20697a((Runnable) message.obj);
                    return true;
                default:
                    return true;
            }
        }
    };

    /* renamed from: d */
    private int f1889d = 0;

    /* renamed from: androidx.core.e.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a.class */
    public interface AbstractC0502a<T> {
        /* renamed from: a */
        void mo20693a(T t);
    }

    public C0497c(String str, int i, int i2) {
        this.f1893h = str;
        this.f1892g = i;
        this.f1891f = i2;
    }

    /* renamed from: b */
    private void m20694b(Runnable runnable) {
        synchronized (this.f1886a) {
            if (this.f1887b == null) {
                this.f1887b = new HandlerThread(this.f1893h, this.f1892g);
                this.f1887b.start();
                this.f1888c = new Handler(this.f1887b.getLooper(), this.f1890e);
                this.f1889d++;
            }
            this.f1888c.removeMessages(0);
            this.f1888c.sendMessage(this.f1888c.obtainMessage(1, runnable));
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: a */
    public <T> T m20696a(final Callable<T> callable, int i) {
        char c;
        Object obj;
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m20694b(new Runnable() { // from class: androidx.core.e.c.3
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
            if (atomicBoolean.get()) {
                char nanos = TimeUnit.MILLISECONDS.toNanos(i);
                do {
                    try {
                        c = newCondition.awaitNanos(nanos);
                    } catch (InterruptedException e) {
                        c = nanos;
                    }
                    if (!atomicBoolean.get()) {
                        obj = atomicReference.get();
                        reentrantLock.unlock();
                    } else {
                        nanos = c;
                    }
                } while (c > 0);
                throw new InterruptedException("timeout");
            }
            obj = atomicReference.get();
            return (T) obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: a */
    void m20698a() {
        synchronized (this.f1886a) {
            if (this.f1888c.hasMessages(1)) {
                return;
            }
            this.f1887b.quit();
            this.f1887b = null;
            this.f1888c = null;
        }
    }

    /* renamed from: a */
    void m20697a(Runnable runnable) {
        runnable.run();
        synchronized (this.f1886a) {
            this.f1888c.removeMessages(0);
            this.f1888c.sendMessageDelayed(this.f1888c.obtainMessage(0), this.f1891f);
        }
    }

    /* renamed from: a */
    public <T> void m20695a(final Callable<T> callable, final AbstractC0502a<T> abstractC0502a) {
        final Handler handler = new Handler();
        m20694b(new Runnable() { // from class: androidx.core.e.c.2
            @Override // java.lang.Runnable
            public void run() {
                Object obj;
                try {
                    obj = callable.call();
                } catch (Exception e) {
                    obj = null;
                }
                final Object obj2 = obj;
                handler.post(new Runnable() { // from class: androidx.core.e.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC0502a.mo20693a(obj2);
                    }
                });
            }
        });
    }
}
