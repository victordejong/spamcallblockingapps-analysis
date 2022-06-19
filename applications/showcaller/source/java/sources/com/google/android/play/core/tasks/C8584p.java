package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.C8516t;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.tasks.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/p.class */
public final class C8584p<ResultT> extends AbstractC8571c<ResultT> {

    /* renamed from: a */
    private final Object f38184a = new Object();

    /* renamed from: b */
    private final C8580l<ResultT> f38185b = new C8580l<>();

    /* renamed from: c */
    private boolean f38186c;

    /* renamed from: d */
    private ResultT f38187d;

    /* renamed from: e */
    private Exception f38188e;

    /* renamed from: k */
    private final void m3300k() {
        C8516t.m3468c(this.f38186c, "Task is not yet complete");
    }

    /* renamed from: l */
    private final void m3299l() {
        C8516t.m3468c(!this.f38186c, "Task is already complete");
    }

    /* renamed from: m */
    private final void m3298m() {
        synchronized (this.f38184a) {
            if (!this.f38186c) {
                return;
            }
            this.f38185b.m3316b(this);
        }
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: a */
    public final AbstractC8571c<ResultT> mo3310a(Executor executor, AbstractC8569a abstractC8569a) {
        this.f38185b.m3317a(new C8575g(executor, abstractC8569a));
        m3298m();
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: b */
    public final AbstractC8571c<ResultT> mo3309b(Executor executor, AbstractC8570b<? super ResultT> abstractC8570b) {
        this.f38185b.m3317a(new C8577i(executor, abstractC8570b));
        m3298m();
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: c */
    public final Exception mo3308c() {
        Exception exc;
        synchronized (this.f38184a) {
            exc = this.f38188e;
        }
        return exc;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: d */
    public final ResultT mo3307d() {
        ResultT resultt;
        synchronized (this.f38184a) {
            m3300k();
            Exception exc = this.f38188e;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            resultt = this.f38187d;
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: e */
    public final boolean mo3306e() {
        boolean z;
        synchronized (this.f38184a) {
            z = this.f38186c;
        }
        return z;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8571c
    /* renamed from: f */
    public final boolean mo3305f() {
        boolean z;
        synchronized (this.f38184a) {
            z = false;
            if (this.f38186c) {
                z = false;
                if (this.f38188e == null) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public final void m3304g(ResultT resultt) {
        synchronized (this.f38184a) {
            m3299l();
            this.f38186c = true;
            this.f38187d = resultt;
        }
        this.f38185b.m3316b(this);
    }

    /* renamed from: h */
    public final boolean m3303h(ResultT resultt) {
        synchronized (this.f38184a) {
            if (this.f38186c) {
                return false;
            }
            this.f38186c = true;
            this.f38187d = resultt;
            this.f38185b.m3316b(this);
            return true;
        }
    }

    /* renamed from: i */
    public final void m3302i(Exception exc) {
        synchronized (this.f38184a) {
            m3299l();
            this.f38186c = true;
            this.f38188e = exc;
        }
        this.f38185b.m3316b(this);
    }

    /* renamed from: j */
    public final boolean m3301j(Exception exc) {
        synchronized (this.f38184a) {
            if (this.f38186c) {
                return false;
            }
            this.f38186c = true;
            this.f38188e = exc;
            this.f38185b.m3316b(this);
            return true;
        }
    }
}
