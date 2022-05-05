package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/provider/SelfDestructiveThread.class */
public class SelfDestructiveThread {
    @GuardedBy

    /* renamed from: b */
    private HandlerThread f3138b;
    @GuardedBy

    /* renamed from: c */
    private Handler f3139c;

    /* renamed from: f */
    private final int f3142f;

    /* renamed from: g */
    private final int f3143g;

    /* renamed from: h */
    private final String f3144h;

    /* renamed from: a */
    private final Object f3137a = new Object();

    /* renamed from: e */
    private Handler.Callback f3141e = new Handler.Callback() { // from class: androidx.core.provider.SelfDestructiveThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                SelfDestructiveThread.this.m19406a();
                return true;
            } else if (i != 1) {
                return true;
            } else {
                SelfDestructiveThread.this.m19405b((Runnable) message.obj);
                return true;
            }
        }
    };
    @GuardedBy

    /* renamed from: d */
    private int f3140d = 0;

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/SelfDestructiveThread$ReplyCallback.class */
    public interface ReplyCallback<T> {
        /* renamed from: a */
        void mo19401a(T t);
    }

    public SelfDestructiveThread(String str, int i, int i2) {
        this.f3144h = str;
        this.f3143g = i;
        this.f3142f = i2;
    }

    /* renamed from: c */
    private void m19404c(Runnable runnable) {
        synchronized (this.f3137a) {
            if (this.f3138b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f3144h, this.f3143g);
                this.f3138b = handlerThread;
                handlerThread.start();
                this.f3139c = new Handler(this.f3138b.getLooper(), this.f3141e);
                this.f3140d++;
            }
            this.f3139c.removeMessages(0);
            this.f3139c.sendMessage(this.f3139c.obtainMessage(1, runnable));
        }
    }

    /* renamed from: a */
    void m19406a() {
        synchronized (this.f3137a) {
            if (!this.f3139c.hasMessages(1)) {
                this.f3138b.quit();
                this.f3138b = null;
                this.f3139c = null;
            }
        }
    }

    /* renamed from: b */
    void m19405b(Runnable runnable) {
        runnable.run();
        synchronized (this.f3137a) {
            this.f3139c.removeMessages(0);
            this.f3139c.sendMessageDelayed(this.f3139c.obtainMessage(0), this.f3142f);
        }
    }

    /* renamed from: d */
    public <T> void m19403d(final Callable<T> callable, final ReplyCallback<T> replyCallback) {
        final Handler handler = new Handler();
        m19404c(new Runnable(this) { // from class: androidx.core.provider.SelfDestructiveThread.2
            @Override // java.lang.Runnable
            public void run() {
                final Object obj;
                try {
                    obj = callable.call();
                } catch (Exception e) {
                    obj = null;
                }
                handler.post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        replyCallback.mo19401a(obj);
                    }
                });
            }
        });
    }

    /* renamed from: e */
    public <T> T m19402e(final Callable<T> callable, int i) throws InterruptedException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m19404c(new Runnable(this) { // from class: androidx.core.provider.SelfDestructiveThread.3
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
}
