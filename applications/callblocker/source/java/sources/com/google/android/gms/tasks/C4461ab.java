package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.api.internal.AbstractC2554i;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.internal.C2662s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/ab.class */
public final class C4461ab<TResult> extends AbstractC4469g<TResult> {

    /* renamed from: a */
    private final Object f19499a = new Object();

    /* renamed from: b */
    private final C4491z<TResult> f19500b = new C4491z<>();
    @GuardedBy("mLock")

    /* renamed from: c */
    private boolean f19501c;

    /* renamed from: d */
    private volatile boolean f19502d;
    @GuardedBy("mLock")

    /* renamed from: e */
    private TResult f19503e;
    @GuardedBy("mLock")

    /* renamed from: f */
    private Exception f19504f;

    /* renamed from: com.google.android.gms.tasks.ab$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/ab$a.class */
    private static class C4462a extends LifecycleCallback {

        /* renamed from: b */
        private final List<WeakReference<AbstractC4490y<?>>> f19505b = new ArrayList();

        private C4462a(AbstractC2554i abstractC2554i) {
            super(abstractC2554i);
            this.f7079a.mo14241a("TaskOnStopCallback", this);
        }

        /* renamed from: b */
        public static C4462a m3907b(Activity activity) {
            AbstractC2554i a = m14403a(activity);
            C4462a c4462a = (C4462a) a.mo14240a("TaskOnStopCallback", C4462a.class);
            C4462a c4462a2 = c4462a;
            if (c4462a == null) {
                c4462a2 = new C4462a(a);
            }
            return c4462a2;
        }

        /* renamed from: a */
        public final <T> void m3908a(AbstractC4490y<T> abstractC4490y) {
            synchronized (this.f19505b) {
                this.f19505b.add(new WeakReference<>(abstractC4490y));
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        /* renamed from: d */
        public void mo3906d() {
            synchronized (this.f19505b) {
                for (WeakReference<AbstractC4490y<?>> weakReference : this.f19505b) {
                    AbstractC4490y<?> abstractC4490y = weakReference.get();
                    if (abstractC4490y != null) {
                        abstractC4490y.mo3860a();
                    }
                }
                this.f19505b.clear();
            }
        }
    }

    @GuardedBy("mLock")
    /* renamed from: g */
    private final void m3912g() {
        C2662s.m13976a(this.f19501c, "Task is not yet complete");
    }

    @GuardedBy("mLock")
    /* renamed from: h */
    private final void m3911h() {
        C2662s.m13976a(!this.f19501c, "Task is already complete");
    }

    @GuardedBy("mLock")
    /* renamed from: i */
    private final void m3910i() {
        if (this.f19502d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: j */
    private final void m3909j() {
        synchronized (this.f19499a) {
            if (!this.f19501c) {
                return;
            }
            this.f19500b.m3858a(this);
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3904a(Activity activity, AbstractC4467e<? super TResult> abstractC4467e) {
        C4486u c4486u = new C4486u(C4471i.f19509a, abstractC4467e);
        this.f19500b.m3857a(c4486u);
        C4462a.m3907b(activity).m3908a(c4486u);
        m3909j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3903a(AbstractC4465c<TResult> abstractC4465c) {
        return mo3898a(C4471i.f19509a, abstractC4465c);
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3902a(AbstractC4466d abstractC4466d) {
        return mo3897a(C4471i.f19509a, abstractC4466d);
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final <TContinuationResult> AbstractC4469g<TContinuationResult> mo3900a(Executor executor, AbstractC4459a<TResult, TContinuationResult> abstractC4459a) {
        C4461ab c4461ab = new C4461ab();
        this.f19500b.m3857a(new C4476k(executor, abstractC4459a, c4461ab));
        m3909j();
        return c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3899a(Executor executor, AbstractC4464b abstractC4464b) {
        this.f19500b.m3857a(new C4480o(executor, abstractC4464b));
        m3909j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3898a(Executor executor, AbstractC4465c<TResult> abstractC4465c) {
        this.f19500b.m3857a(new C4482q(executor, abstractC4465c));
        m3909j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3897a(Executor executor, AbstractC4466d abstractC4466d) {
        this.f19500b.m3857a(new C4484s(executor, abstractC4466d));
        m3909j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final AbstractC4469g<TResult> mo3896a(Executor executor, AbstractC4467e<? super TResult> abstractC4467e) {
        this.f19500b.m3857a(new C4486u(executor, abstractC4467e));
        m3909j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final <TContinuationResult> AbstractC4469g<TContinuationResult> mo3895a(Executor executor, AbstractC4468f<TResult, TContinuationResult> abstractC4468f) {
        C4461ab c4461ab = new C4461ab();
        this.f19500b.m3857a(new C4488w(executor, abstractC4468f, c4461ab));
        m3909j();
        return c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final <X extends Throwable> TResult mo3901a(Class<X> cls) {
        TResult tresult;
        synchronized (this.f19499a) {
            m3912g();
            m3910i();
            if (cls.isInstance(this.f19504f)) {
                throw cls.cast(this.f19504f);
            }
            if (this.f19504f != null) {
                throw new RuntimeExecutionException(this.f19504f);
            }
            tresult = this.f19503e;
        }
        return tresult;
    }

    /* renamed from: a */
    public final void m3917a(Exception exc) {
        C2662s.m13980a(exc, "Exception must not be null");
        synchronized (this.f19499a) {
            m3911h();
            this.f19501c = true;
            this.f19504f = exc;
        }
        this.f19500b.m3858a(this);
    }

    /* renamed from: a */
    public final void m3916a(TResult tresult) {
        synchronized (this.f19499a) {
            m3911h();
            this.f19501c = true;
            this.f19503e = tresult;
        }
        this.f19500b.m3858a(this);
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: a */
    public final boolean mo3905a() {
        boolean z;
        synchronized (this.f19499a) {
            z = this.f19501c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: b */
    public final <TContinuationResult> AbstractC4469g<TContinuationResult> mo3893b(Executor executor, AbstractC4459a<TResult, AbstractC4469g<TContinuationResult>> abstractC4459a) {
        C4461ab c4461ab = new C4461ab();
        this.f19500b.m3857a(new C4478m(executor, abstractC4459a, c4461ab));
        m3909j();
        return c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: b */
    public final boolean mo3894b() {
        boolean z;
        synchronized (this.f19499a) {
            z = this.f19501c && !this.f19502d && this.f19504f == null;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m3915b(Exception exc) {
        boolean z = true;
        C2662s.m13980a(exc, "Exception must not be null");
        synchronized (this.f19499a) {
            if (this.f19501c) {
                z = false;
            } else {
                this.f19501c = true;
                this.f19504f = exc;
                this.f19500b.m3858a(this);
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m3914b(TResult tresult) {
        boolean z = true;
        synchronized (this.f19499a) {
            if (this.f19501c) {
                z = false;
            } else {
                this.f19501c = true;
                this.f19503e = tresult;
                this.f19500b.m3858a(this);
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: c */
    public final boolean mo3892c() {
        return this.f19502d;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: d */
    public final TResult mo3891d() {
        TResult tresult;
        synchronized (this.f19499a) {
            m3912g();
            m3910i();
            if (this.f19504f != null) {
                throw new RuntimeExecutionException(this.f19504f);
            }
            tresult = this.f19503e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.AbstractC4469g
    /* renamed from: e */
    public final Exception mo3890e() {
        Exception exc;
        synchronized (this.f19499a) {
            exc = this.f19504f;
        }
        return exc;
    }

    /* renamed from: f */
    public final boolean m3913f() {
        boolean z = true;
        synchronized (this.f19499a) {
            if (this.f19501c) {
                z = false;
            } else {
                this.f19501c = true;
                this.f19502d = true;
                this.f19500b.m3858a(this);
            }
        }
        return z;
    }
}
