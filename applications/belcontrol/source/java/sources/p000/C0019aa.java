package p000;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: aa */
/* loaded from: classes-dex2jar.jar:aa.class */
public class C0019aa {

    /* renamed from: b */
    public HandlerThread f197b;

    /* renamed from: c */
    public Handler f198c;

    /* renamed from: f */
    public final int f201f;

    /* renamed from: g */
    public final int f202g;

    /* renamed from: h */
    public final String f203h;

    /* renamed from: a */
    public final Object f196a = new Object();

    /* renamed from: e */
    public Handler.Callback f200e = new C0020a();

    /* renamed from: d */
    public int f199d = 0;

    /* renamed from: aa$a */
    /* loaded from: classes-dex2jar.jar:aa$a.class */
    public class C0020a implements Handler.Callback {
        public C0020a() {
            C0019aa.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                C0019aa.this.m7317a();
                return true;
            } else if (i != 1) {
                return true;
            } else {
                C0019aa.this.m7316b((Runnable) message.obj);
                return true;
            }
        }
    }

    /* renamed from: aa$b */
    /* loaded from: classes-dex2jar.jar:aa$b.class */
    public class RunnableC0021b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Callable f205a;

        /* renamed from: b */
        public final /* synthetic */ Handler f206b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC0024d f207c;

        /* renamed from: aa$b$a */
        /* loaded from: classes-dex2jar.jar:aa$b$a.class */
        public class RunnableC0022a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Object f208a;

            public RunnableC0022a(Object obj) {
                RunnableC0021b.this = r4;
                this.f208a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0021b.this.f207c.m7312a(this.f208a);
            }
        }

        public RunnableC0021b(C0019aa c0019aa, Callable callable, Handler handler, AbstractC0024d abstractC0024d) {
            this.f205a = callable;
            this.f206b = handler;
            this.f207c = abstractC0024d;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f205a.call();
            } catch (Exception e) {
                obj = null;
            }
            this.f206b.post(new RunnableC0022a(obj));
        }
    }

    /* renamed from: aa$c */
    /* loaded from: classes-dex2jar.jar:aa$c.class */
    public class RunnableC0023c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AtomicReference f210a;

        /* renamed from: b */
        public final /* synthetic */ Callable f211b;

        /* renamed from: c */
        public final /* synthetic */ ReentrantLock f212c;

        /* renamed from: d */
        public final /* synthetic */ AtomicBoolean f213d;

        /* renamed from: f */
        public final /* synthetic */ Condition f214f;

        public RunnableC0023c(C0019aa c0019aa, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f210a = atomicReference;
            this.f211b = callable;
            this.f212c = reentrantLock;
            this.f213d = atomicBoolean;
            this.f214f = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f210a.set(this.f211b.call());
            } catch (Exception e) {
            }
            this.f212c.lock();
            try {
                this.f213d.set(false);
                this.f214f.signal();
            } finally {
                this.f212c.unlock();
            }
        }
    }

    /* renamed from: aa$d */
    /* loaded from: classes-dex2jar.jar:aa$d.class */
    public interface AbstractC0024d<T> {
        /* renamed from: a */
        void m7312a(T t);
    }

    public C0019aa(String str, int i, int i2) {
        this.f203h = str;
        this.f202g = i;
        this.f201f = i2;
    }

    /* renamed from: a */
    public void m7317a() {
        synchronized (this.f196a) {
            if (this.f198c.hasMessages(1)) {
                return;
            }
            this.f197b.quit();
            this.f197b = null;
            this.f198c = null;
        }
    }

    /* renamed from: b */
    public void m7316b(Runnable runnable) {
        runnable.run();
        synchronized (this.f196a) {
            this.f198c.removeMessages(0);
            Handler handler = this.f198c;
            handler.sendMessageDelayed(handler.obtainMessage(0), this.f201f);
        }
    }

    /* renamed from: c */
    public final void m7315c(Runnable runnable) {
        synchronized (this.f196a) {
            if (this.f197b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f203h, this.f202g);
                this.f197b = handlerThread;
                handlerThread.start();
                this.f198c = new Handler(this.f197b.getLooper(), this.f200e);
                this.f199d++;
            }
            this.f198c.removeMessages(0);
            Handler handler = this.f198c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    /* renamed from: d */
    public <T> void m7314d(Callable<T> callable, AbstractC0024d<T> abstractC0024d) {
        m7315c(new RunnableC0021b(this, callable, new Handler(), abstractC0024d));
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: e */
    public <T> T m7313e(Callable<T> callable, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m7315c(new RunnableC0023c(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
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
}
