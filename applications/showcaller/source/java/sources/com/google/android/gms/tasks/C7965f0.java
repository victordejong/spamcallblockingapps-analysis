package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/f0.class */
public final class C7965f0<TResult> extends AbstractC7966g<TResult> {

    /* renamed from: a */
    private final Object f35943a = new Object();

    /* renamed from: b */
    private final C7959c0<TResult> f35944b = new C7959c0<>();

    /* renamed from: c */
    private boolean f35945c;

    /* renamed from: d */
    private volatile boolean f35946d;

    /* renamed from: e */
    private TResult f35947e;

    /* renamed from: f */
    private Exception f35948f;

    /* renamed from: A */
    private final void m5835A() {
        if (!this.f35946d) {
            return;
        }
        throw new CancellationException("Task is already canceled.");
    }

    /* renamed from: B */
    private final void m5834B() {
        synchronized (this.f35943a) {
            if (!this.f35945c) {
                return;
            }
            this.f35944b.m5836b(this);
        }
    }

    /* renamed from: y */
    private final void m5828y() {
        C6155o.m17014n(this.f35945c, "Task is not yet complete");
    }

    /* renamed from: z */
    private final void m5827z() {
        if (!this.f35945c) {
            return;
        }
        throw DuplicateTaskCompletionException.m5839of(this);
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: a */
    public final AbstractC7966g<TResult> mo5826a(Executor executor, AbstractC7956b abstractC7956b) {
        this.f35944b.m5837a(new C7979s(executor, abstractC7956b));
        m5834B();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: b */
    public final AbstractC7966g<TResult> mo5825b(AbstractC7958c<TResult> abstractC7958c) {
        this.f35944b.m5837a(new C7981u(C7969i.f35952a, abstractC7958c));
        m5834B();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: c */
    public final AbstractC7966g<TResult> mo5824c(Executor executor, AbstractC7958c<TResult> abstractC7958c) {
        this.f35944b.m5837a(new C7981u(executor, abstractC7958c));
        m5834B();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: d */
    public final AbstractC7966g<TResult> mo5823d(AbstractC7960d abstractC7960d) {
        mo5822e(C7969i.f35952a, abstractC7960d);
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: e */
    public final AbstractC7966g<TResult> mo5822e(Executor executor, AbstractC7960d abstractC7960d) {
        this.f35944b.m5837a(new C7983w(executor, abstractC7960d));
        m5834B();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: f */
    public final AbstractC7966g<TResult> mo5821f(AbstractC7962e<? super TResult> abstractC7962e) {
        mo5820g(C7969i.f35952a, abstractC7962e);
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: g */
    public final AbstractC7966g<TResult> mo5820g(Executor executor, AbstractC7962e<? super TResult> abstractC7962e) {
        this.f35944b.m5837a(new C7985y(executor, abstractC7962e));
        m5834B();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: h */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5819h(AbstractC7954a<TResult, TContinuationResult> abstractC7954a) {
        return mo5818i(C7969i.f35952a, abstractC7954a);
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: i */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5818i(Executor executor, AbstractC7954a<TResult, TContinuationResult> abstractC7954a) {
        C7965f0 c7965f0 = new C7965f0();
        this.f35944b.m5837a(new C7975o(executor, abstractC7954a, c7965f0));
        m5834B();
        return c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: j */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5817j(AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> abstractC7954a) {
        return mo5816k(C7969i.f35952a, abstractC7954a);
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: k */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5816k(Executor executor, AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> abstractC7954a) {
        C7965f0 c7965f0 = new C7965f0();
        this.f35944b.m5837a(new C7977q(executor, abstractC7954a, c7965f0));
        m5834B();
        return c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: l */
    public final Exception mo5815l() {
        Exception exc;
        synchronized (this.f35943a) {
            exc = this.f35948f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: m */
    public final TResult mo5814m() {
        TResult tresult;
        synchronized (this.f35943a) {
            m5828y();
            m5835A();
            Exception exc = this.f35948f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = this.f35947e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: n */
    public final <X extends Throwable> TResult mo5813n(Class<X> cls) {
        TResult tresult;
        synchronized (this.f35943a) {
            m5828y();
            m5835A();
            if (cls.isInstance(this.f35948f)) {
                throw cls.cast(this.f35948f);
            }
            Exception exc = this.f35948f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = this.f35947e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: o */
    public final boolean mo5812o() {
        return this.f35946d;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: p */
    public final boolean mo5811p() {
        boolean z;
        synchronized (this.f35943a) {
            z = this.f35945c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: q */
    public final boolean mo5810q() {
        boolean z;
        synchronized (this.f35943a) {
            z = false;
            if (this.f35945c) {
                z = false;
                if (!this.f35946d) {
                    z = false;
                    if (this.f35948f == null) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: r */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5809r(AbstractC7964f<TResult, TContinuationResult> abstractC7964f) {
        Executor executor = C7969i.f35952a;
        C7965f0 c7965f0 = new C7965f0();
        this.f35944b.m5837a(new C7955a0(executor, abstractC7964f, c7965f0));
        m5834B();
        return c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7966g
    /* renamed from: s */
    public final <TContinuationResult> AbstractC7966g<TContinuationResult> mo5808s(Executor executor, AbstractC7964f<TResult, TContinuationResult> abstractC7964f) {
        C7965f0 c7965f0 = new C7965f0();
        this.f35944b.m5837a(new C7955a0(executor, abstractC7964f, c7965f0));
        m5834B();
        return c7965f0;
    }

    /* renamed from: t */
    public final void m5833t(TResult tresult) {
        synchronized (this.f35943a) {
            m5827z();
            this.f35945c = true;
            this.f35947e = tresult;
        }
        this.f35944b.m5836b(this);
    }

    /* renamed from: u */
    public final boolean m5832u(TResult tresult) {
        synchronized (this.f35943a) {
            if (this.f35945c) {
                return false;
            }
            this.f35945c = true;
            this.f35947e = tresult;
            this.f35944b.m5836b(this);
            return true;
        }
    }

    /* renamed from: v */
    public final void m5831v(Exception exc) {
        C6155o.m17017k(exc, "Exception must not be null");
        synchronized (this.f35943a) {
            m5827z();
            this.f35945c = true;
            this.f35948f = exc;
        }
        this.f35944b.m5836b(this);
    }

    /* renamed from: w */
    public final boolean m5830w(Exception exc) {
        C6155o.m17017k(exc, "Exception must not be null");
        synchronized (this.f35943a) {
            if (this.f35945c) {
                return false;
            }
            this.f35945c = true;
            this.f35948f = exc;
            this.f35944b.m5836b(this);
            return true;
        }
    }

    /* renamed from: x */
    public final boolean m5829x() {
        synchronized (this.f35943a) {
            if (this.f35945c) {
                return false;
            }
            this.f35945c = true;
            this.f35946d = true;
            this.f35944b.m5836b(this);
            return true;
        }
    }
}
