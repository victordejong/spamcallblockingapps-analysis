package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
/* renamed from: h.i.c.n.d.h.i */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/i.class */
public class C9550i {

    /* renamed from: a */
    public final Executor f21746a;

    /* renamed from: b */
    public AbstractC9143h<Void> f21747b = C9148k.m15999a((Object) null);

    /* renamed from: c */
    public final Object f21748c = new Object();

    /* renamed from: d */
    public ThreadLocal<Boolean> f21749d = new ThreadLocal<>();

    /* renamed from: h.i.c.n.d.h.i$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/i$a.class */
    public class RunnableC9551a implements Runnable {
        public RunnableC9551a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9550i.this.f21749d.set(true);
        }
    }

    /* renamed from: h.i.c.n.d.h.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/i$b.class */
    public class CallableC9552b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Runnable f21751a;

        public CallableC9552b(C9550i iVar, Runnable runnable) {
            this.f21751a = runnable;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            this.f21751a.run();
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.i$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/i$c.class */
    public class C9553c implements AbstractC9128a<Void, T> {

        /* renamed from: a */
        public final /* synthetic */ Callable f21752a;

        public C9553c(C9550i iVar, Callable callable) {
            this.f21752a = callable;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
        /* renamed from: a */
        public T mo14017a(@NonNull AbstractC9143h<Void> hVar) throws Exception {
            return this.f21752a.call();
        }
    }

    /* renamed from: h.i.c.n.d.h.i$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/i$d.class */
    public class C9554d implements AbstractC9128a<T, Void> {
        public C9554d(C9550i iVar) {
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo14017a(@NonNull AbstractC9143h<T> hVar) throws Exception {
            return null;
        }
    }

    public C9550i(Executor executor) {
        this.f21746a = executor;
        executor.execute(new RunnableC9551a());
    }

    /* renamed from: a */
    public final <T> AbstractC9128a<Void, T> m14887a(Callable<T> callable) {
        return new C9553c(this, callable);
    }

    /* renamed from: a */
    public final <T> AbstractC9143h<Void> m14890a(AbstractC9143h<T> hVar) {
        return hVar.mo16020a(this.f21746a, new C9554d(this));
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m14888a(Runnable runnable) {
        return m14885b(new CallableC9552b(this, runnable));
    }

    /* renamed from: a */
    public void m14891a() {
        if (!m14884c()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    /* renamed from: b */
    public <T> AbstractC9143h<T> m14885b(Callable<T> callable) {
        AbstractC9143h<T> a;
        synchronized (this.f21748c) {
            a = this.f21747b.mo16020a(this.f21746a, (AbstractC9128a<Void, TContinuationResult>) m14887a(callable));
            this.f21747b = m14890a(a);
        }
        return a;
    }

    /* renamed from: b */
    public Executor m14886b() {
        return this.f21746a;
    }

    /* renamed from: c */
    public <T> AbstractC9143h<T> m14883c(Callable<AbstractC9143h<T>> callable) {
        AbstractC9143h<T> b;
        synchronized (this.f21748c) {
            b = this.f21747b.mo16012b(this.f21746a, m14887a(callable));
            this.f21747b = m14890a(b);
        }
        return b;
    }

    /* renamed from: c */
    public final boolean m14884c() {
        return Boolean.TRUE.equals(this.f21749d.get());
    }
}
