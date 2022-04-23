package p081h.p203i.p204a.p224e.p293r;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.r.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/d0.class */
public final class C9135d0<TResult> extends AbstractC9143h<TResult> {

    /* renamed from: a */
    public final Object f20820a = new Object();

    /* renamed from: b */
    public final C9131b0<TResult> f20821b = new C9131b0<>();
    @GuardedBy("mLock")

    /* renamed from: c */
    public boolean f20822c;

    /* renamed from: d */
    public volatile boolean f20823d;
    @Nullable
    @GuardedBy("mLock")

    /* renamed from: e */
    public TResult f20824e;
    @GuardedBy("mLock")

    /* renamed from: f */
    public Exception f20825f;

    /* renamed from: h.i.a.e.r.d0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/r/d0$a.class */
    public static class C9136a extends LifecycleCallback {

        /* renamed from: b */
        public final List<WeakReference<AbstractC9129a0<?>>> f20826b = new ArrayList();

        public C9136a(AbstractC6874h hVar) {
            super(hVar);
            this.f6535a.mo21475a("TaskOnStopCallback", this);
        }

        /* renamed from: b */
        public static C9136a m16035b(Activity activity) {
            AbstractC6874h a = LifecycleCallback.m31971a(activity);
            C9136a aVar = (C9136a) a.mo21474a("TaskOnStopCallback", C9136a.class);
            C9136a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new C9136a(a);
            }
            return aVar2;
        }

        /* renamed from: a */
        public final <T> void m16036a(AbstractC9129a0<T> a0Var) {
            synchronized (this.f20826b) {
                this.f20826b.add(new WeakReference<>(a0Var));
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        /* renamed from: e */
        public void mo16034e() {
            synchronized (this.f20826b) {
                for (WeakReference<AbstractC9129a0<?>> weakReference : this.f20826b) {
                    AbstractC9129a0<?> a0Var = weakReference.get();
                    if (a0Var != null) {
                        a0Var.mo15975c();
                    }
                }
                this.f20826b.clear();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16029a(@NonNull Activity activity, @NonNull AbstractC9134d dVar) {
        Executor executor = C9146j.f20832a;
        C9140f0.m16033a(executor);
        C9161u uVar = new C9161u(executor, dVar);
        this.f20821b.m16047a(uVar);
        C9136a.m16035b(activity).m16036a(uVar);
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16028a(@NonNull Activity activity, @NonNull AbstractC9137e<? super TResult> eVar) {
        Executor executor = C9146j.f20832a;
        C9140f0.m16033a(executor);
        C9164x xVar = new C9164x(executor, eVar);
        this.f20821b.m16047a(xVar);
        C9136a.m16035b(activity).m16036a(xVar);
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16027a(@NonNull AbstractC9128a<TResult, TContinuationResult> aVar) {
        return mo16020a(C9146j.f20832a, aVar);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16026a(@NonNull AbstractC9130b bVar) {
        mo16019a(C9146j.f20832a, bVar);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16025a(@NonNull AbstractC9132c<TResult> cVar) {
        mo16018a(C9146j.f20832a, cVar);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16024a(@NonNull AbstractC9134d dVar) {
        mo16017a(C9146j.f20832a, dVar);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16023a(@NonNull AbstractC9137e<? super TResult> eVar) {
        mo16016a(C9146j.f20832a, eVar);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16022a(@NonNull AbstractC9141g<TResult, TContinuationResult> gVar) {
        return mo16015a(C9146j.f20832a, gVar);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16020a(@NonNull Executor executor, @NonNull AbstractC9128a<TResult, TContinuationResult> aVar) {
        C9135d0 d0Var = new C9135d0();
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9153m(executor, aVar, d0Var));
        m16037j();
        return d0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16019a(@NonNull Executor executor, @NonNull AbstractC9130b bVar) {
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9156p(executor, bVar));
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16018a(@NonNull Executor executor, @NonNull AbstractC9132c<TResult> cVar) {
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9160t(executor, cVar));
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16017a(@NonNull Executor executor, @NonNull AbstractC9134d dVar) {
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9161u(executor, dVar));
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final AbstractC9143h<TResult> mo16016a(@NonNull Executor executor, @NonNull AbstractC9137e<? super TResult> eVar) {
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9164x(executor, eVar));
        m16037j();
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: a */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16015a(Executor executor, AbstractC9141g<TResult, TContinuationResult> gVar) {
        C9135d0 d0Var = new C9135d0();
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9165y(executor, gVar, d0Var));
        m16037j();
        return d0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @Nullable
    /* renamed from: a */
    public final Exception mo16030a() {
        Exception exc;
        synchronized (this.f20820a) {
            exc = this.f20825f;
        }
        return exc;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    /* renamed from: a */
    public final <X extends Throwable> TResult mo16021a(@NonNull Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f20820a) {
            m16040g();
            m16038i();
            if (cls.isInstance(this.f20825f)) {
                throw cls.cast(this.f20825f);
            } else if (this.f20825f == null) {
                tresult = this.f20824e;
            } else {
                throw new C9139f(this.f20825f);
            }
        }
        return tresult;
    }

    /* renamed from: a */
    public final void m16045a(@NonNull Exception exc) {
        C7021t.m21289a(exc, "Exception must not be null");
        synchronized (this.f20820a) {
            m16039h();
            this.f20822c = true;
            this.f20825f = exc;
        }
        this.f20821b.m16046a(this);
    }

    /* renamed from: a */
    public final void m16044a(TResult tresult) {
        synchronized (this.f20820a) {
            m16039h();
            this.f20822c = true;
            this.f20824e = tresult;
        }
        this.f20821b.m16046a(this);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: b */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16013b(@NonNull AbstractC9128a<TResult, AbstractC9143h<TContinuationResult>> aVar) {
        return mo16012b(C9146j.f20832a, aVar);
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    @NonNull
    /* renamed from: b */
    public final <TContinuationResult> AbstractC9143h<TContinuationResult> mo16012b(@NonNull Executor executor, @NonNull AbstractC9128a<TResult, AbstractC9143h<TContinuationResult>> aVar) {
        C9135d0 d0Var = new C9135d0();
        C9131b0<TResult> b0Var = this.f20821b;
        C9140f0.m16033a(executor);
        b0Var.m16047a(new C9154n(executor, aVar, d0Var));
        m16037j();
        return d0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    /* renamed from: b */
    public final TResult mo16014b() {
        TResult tresult;
        synchronized (this.f20820a) {
            m16040g();
            m16038i();
            if (this.f20825f == null) {
                tresult = this.f20824e;
            } else {
                throw new C9139f(this.f20825f);
            }
        }
        return tresult;
    }

    /* renamed from: b */
    public final boolean m16043b(@NonNull Exception exc) {
        C7021t.m21289a(exc, "Exception must not be null");
        synchronized (this.f20820a) {
            if (this.f20822c) {
                return false;
            }
            this.f20822c = true;
            this.f20825f = exc;
            this.f20821b.m16046a(this);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m16042b(TResult tresult) {
        synchronized (this.f20820a) {
            if (this.f20822c) {
                return false;
            }
            this.f20822c = true;
            this.f20824e = tresult;
            this.f20821b.m16046a(this);
            return true;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    /* renamed from: c */
    public final boolean mo16011c() {
        return this.f20823d;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    /* renamed from: d */
    public final boolean mo16010d() {
        boolean z;
        synchronized (this.f20820a) {
            z = this.f20822c;
        }
        return z;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9143h
    /* renamed from: e */
    public final boolean mo16009e() {
        boolean z;
        synchronized (this.f20820a) {
            z = this.f20822c && !this.f20823d && this.f20825f == null;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m16041f() {
        synchronized (this.f20820a) {
            if (this.f20822c) {
                return false;
            }
            this.f20822c = true;
            this.f20823d = true;
            this.f20821b.m16046a(this);
            return true;
        }
    }

    @GuardedBy("mLock")
    /* renamed from: g */
    public final void m16040g() {
        C7021t.m21281b(this.f20822c, "Task is not yet complete");
    }

    @GuardedBy("mLock")
    /* renamed from: h */
    public final void m16039h() {
        C7021t.m21281b(!this.f20822c, "Task is already complete");
    }

    @GuardedBy("mLock")
    /* renamed from: i */
    public final void m16038i() {
        if (this.f20823d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: j */
    public final void m16037j() {
        synchronized (this.f20820a) {
            if (this.f20822c) {
                this.f20821b.m16046a(this);
            }
        }
    }
}
