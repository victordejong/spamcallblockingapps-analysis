package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.C15088x;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.s */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/s.class */
public final class C15195s<ResultT> extends AbstractC15180d<ResultT> {

    /* renamed from: a */
    private final Object f55027a = new Object();

    /* renamed from: b */
    private final C15191o<ResultT> f55028b = new C15191o<>();

    /* renamed from: c */
    private boolean f55029c;

    /* renamed from: d */
    private ResultT f55030d;

    /* renamed from: e */
    private Exception f55031e;

    /* renamed from: e */
    private final void m9308e() {
        C15088x.m9479a(!this.f55029c, "Task is already complete");
    }

    /* renamed from: f */
    private final void m9307f() {
        synchronized (this.f55027a) {
            if (!this.f55029c) {
                return;
            }
            this.f55028b.m9326a(this);
        }
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final AbstractC15180d<ResultT> mo9320a(AbstractC15177a<ResultT> abstractC15177a) {
        this.f55028b.m9325a(new C15184h(C15181e.f55005a, abstractC15177a));
        m9307f();
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final AbstractC15180d<ResultT> mo9319a(AbstractC15178b abstractC15178b) {
        mo9315a(C15181e.f55005a, abstractC15178b);
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final AbstractC15180d<ResultT> mo9318a(AbstractC15179c<? super ResultT> abstractC15179c) {
        mo9314a(C15181e.f55005a, abstractC15179c);
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final AbstractC15180d<ResultT> mo9315a(Executor executor, AbstractC15178b abstractC15178b) {
        this.f55028b.m9325a(new C15187k(executor, abstractC15178b));
        m9307f();
        return this;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final AbstractC15180d<ResultT> mo9314a(Executor executor, AbstractC15179c<? super ResultT> abstractC15179c) {
        this.f55028b.m9325a(new C15189m(executor, abstractC15179c));
        m9307f();
        return this;
    }

    /* renamed from: a */
    public final void m9317a(Exception exc) {
        synchronized (this.f55027a) {
            m9308e();
            this.f55029c = true;
            this.f55031e = exc;
        }
        this.f55028b.m9326a(this);
    }

    /* renamed from: a */
    public final void m9316a(ResultT resultt) {
        synchronized (this.f55027a) {
            m9308e();
            this.f55029c = true;
            this.f55030d = resultt;
        }
        this.f55028b.m9326a(this);
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: a */
    public final boolean mo9321a() {
        boolean z;
        synchronized (this.f55027a) {
            z = this.f55029c;
        }
        return z;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: b */
    public final boolean mo9313b() {
        boolean z;
        synchronized (this.f55027a) {
            z = false;
            if (this.f55029c) {
                z = false;
                if (this.f55031e == null) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m9312b(Exception exc) {
        synchronized (this.f55027a) {
            if (this.f55029c) {
                return false;
            }
            this.f55029c = true;
            this.f55031e = exc;
            this.f55028b.m9326a(this);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m9311b(ResultT resultt) {
        synchronized (this.f55027a) {
            if (this.f55029c) {
                return false;
            }
            this.f55029c = true;
            this.f55030d = resultt;
            this.f55028b.m9326a(this);
            return true;
        }
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: c */
    public final ResultT mo9310c() {
        ResultT resultt;
        synchronized (this.f55027a) {
            C15088x.m9479a(this.f55029c, "Task is not yet complete");
            Exception exc = this.f55031e;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            resultt = this.f55030d;
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15180d
    /* renamed from: d */
    public final Exception mo9309d() {
        Exception exc;
        synchronized (this.f55027a) {
            exc = this.f55031e;
        }
        return exc;
    }
}
