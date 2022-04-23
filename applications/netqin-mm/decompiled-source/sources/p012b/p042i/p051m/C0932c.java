package p012b.p042i.p051m;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: b.i.m.c */
/* loaded from: classes-dex2jar.jar:b/i/m/c.class */
public class C0932c {

    /* renamed from: b */
    public HandlerThread f4160b;

    /* renamed from: c */
    public Handler f4161c;

    /* renamed from: f */
    public final int f4164f;

    /* renamed from: g */
    public final int f4165g;

    /* renamed from: h */
    public final String f4166h;

    /* renamed from: a */
    public final Object f4159a = new Object();

    /* renamed from: e */
    public Handler.Callback f4163e = new C0933a();

    /* renamed from: d */
    public int f4162d = 0;

    /* renamed from: b.i.m.c$a */
    /* loaded from: classes-dex2jar.jar:b/i/m/c$a.class */
    public class C0933a implements Handler.Callback {
        public C0933a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                C0932c.this.m35468a();
                return true;
            } else if (i != 1) {
                return true;
            } else {
                C0932c.this.m35467a((Runnable) message.obj);
                return true;
            }
        }
    }

    /* renamed from: b.i.m.c$b */
    /* loaded from: classes-dex2jar.jar:b/i/m/c$b.class */
    public class RunnableC0934b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Callable f4168a;

        /* renamed from: b */
        public final /* synthetic */ Handler f4169b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC0937d f4170c;

        /* renamed from: b.i.m.c$b$a */
        /* loaded from: classes-dex2jar.jar:b/i/m/c$b$a.class */
        public class RunnableC0935a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Object f4171a;

            public RunnableC0935a(Object obj) {
                this.f4171a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0934b.this.f4170c.mo35463a(this.f4171a);
            }
        }

        public RunnableC0934b(C0932c cVar, Callable callable, Handler handler, AbstractC0937d dVar) {
            this.f4168a = callable;
            this.f4169b = handler;
            this.f4170c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f4168a.call();
            } catch (Exception e) {
                obj = null;
            }
            this.f4169b.post(new RunnableC0935a(obj));
        }
    }

    /* renamed from: b.i.m.c$c */
    /* loaded from: classes-dex2jar.jar:b/i/m/c$c.class */
    public class RunnableC0936c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AtomicReference f4173a;

        /* renamed from: b */
        public final /* synthetic */ Callable f4174b;

        /* renamed from: c */
        public final /* synthetic */ ReentrantLock f4175c;

        /* renamed from: d */
        public final /* synthetic */ AtomicBoolean f4176d;

        /* renamed from: e */
        public final /* synthetic */ Condition f4177e;

        public RunnableC0936c(C0932c cVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f4173a = atomicReference;
            this.f4174b = callable;
            this.f4175c = reentrantLock;
            this.f4176d = atomicBoolean;
            this.f4177e = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f4173a.set(this.f4174b.call());
            } catch (Exception e) {
            }
            this.f4175c.lock();
            try {
                this.f4176d.set(false);
                this.f4177e.signal();
            } finally {
                this.f4175c.unlock();
            }
        }
    }

    /* renamed from: b.i.m.c$d */
    /* loaded from: classes-dex2jar.jar:b/i/m/c$d.class */
    public interface AbstractC0937d<T> {
        /* renamed from: a */
        void mo35463a(T t);
    }

    public C0932c(String str, int i, int i2) {
        this.f4166h = str;
        this.f4165g = i;
        this.f4164f = i2;
    }

    /* renamed from: a */
    public <T> T m35466a(Callable<T> callable, int i) throws InterruptedException {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m35464b(new RunnableC0936c(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                T t = (T) atomicReference.get();
                reentrantLock.unlock();
                return t;
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException e) {
                }
                if (!atomicBoolean.get()) {
                    T t2 = (T) atomicReference.get();
                    reentrantLock.unlock();
                    return t2;
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    public void m35468a() {
        synchronized (this.f4159a) {
            if (!this.f4161c.hasMessages(1)) {
                this.f4160b.quit();
                this.f4160b = null;
                this.f4161c = null;
            }
        }
    }

    /* renamed from: a */
    public void m35467a(Runnable runnable) {
        runnable.run();
        synchronized (this.f4159a) {
            this.f4161c.removeMessages(0);
            this.f4161c.sendMessageDelayed(this.f4161c.obtainMessage(0), this.f4164f);
        }
    }

    /* renamed from: a */
    public <T> void m35465a(Callable<T> callable, AbstractC0937d<T> dVar) {
        m35464b(new RunnableC0934b(this, callable, new Handler(), dVar));
    }

    /* renamed from: b */
    public final void m35464b(Runnable runnable) {
        synchronized (this.f4159a) {
            if (this.f4160b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f4166h, this.f4165g);
                this.f4160b = handlerThread;
                handlerThread.start();
                this.f4161c = new Handler(this.f4160b.getLooper(), this.f4163e);
                this.f4162d++;
            }
            this.f4161c.removeMessages(0);
            this.f4161c.sendMessage(this.f4161c.obtainMessage(1, runnable));
        }
    }
}
