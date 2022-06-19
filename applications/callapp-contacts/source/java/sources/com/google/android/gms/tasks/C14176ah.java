package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.ah */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ah.class */
public final class C14176ah<TResult> extends AbstractC14185h<TResult> {

    /* renamed from: a */
    private final Object f52133a = new Object();

    /* renamed from: b */
    private final C14172ad<TResult> f52134b = new C14172ad<>();

    /* renamed from: c */
    private boolean f52135c;

    /* renamed from: d */
    private volatile boolean f52136d;

    /* renamed from: e */
    private TResult f52137e;

    /* renamed from: f */
    private Exception f52138f;

    /* renamed from: g */
    private final void m11495g() {
        C12045o.m19157a(this.f52135c, "Task is not yet complete");
    }

    /* renamed from: h */
    private final void m11494h() {
        if (!this.f52135c) {
            return;
        }
        throw DuplicateTaskCompletionException.m11504a(this);
    }

    /* renamed from: i */
    private final void m11493i() {
        if (!this.f52136d) {
            return;
        }
        throw new CancellationException("Task is already canceled.");
    }

    /* renamed from: j */
    private final void m11492j() {
        synchronized (this.f52133a) {
            if (!this.f52135c) {
                return;
            }
            this.f52134b.m11501a(this);
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final <TContinuationResult> AbstractC14185h<TContinuationResult> mo11490a(AbstractC14179b<TResult, TContinuationResult> abstractC14179b) {
        return mo11484a(C14187j.f52143a, abstractC14179b);
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11489a(AbstractC14181d<TResult> abstractC14181d) {
        this.f52134b.m11502a(new C14199v(C14187j.f52143a, abstractC14181d));
        m11492j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11488a(AbstractC14182e abstractC14182e) {
        mo11481a(C14187j.f52143a, abstractC14182e);
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11487a(AbstractC14183f<? super TResult> abstractC14183f) {
        mo11480a(C14187j.f52143a, abstractC14183f);
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final <TContinuationResult> AbstractC14185h<TContinuationResult> mo11486a(AbstractC14184g<TResult, TContinuationResult> abstractC14184g) {
        Executor executor = C14187j.f52143a;
        C14176ah c14176ah = new C14176ah();
        this.f52134b.m11502a(new C14170ab(executor, abstractC14184g, c14176ah));
        m11492j();
        return c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final <TContinuationResult> AbstractC14185h<TContinuationResult> mo11484a(Executor executor, AbstractC14179b<TResult, TContinuationResult> abstractC14179b) {
        C14176ah c14176ah = new C14176ah();
        this.f52134b.m11502a(new C14193p(executor, abstractC14179b, c14176ah));
        m11492j();
        return c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11483a(Executor executor, AbstractC14180c abstractC14180c) {
        this.f52134b.m11502a(new C14197t(executor, abstractC14180c));
        m11492j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11482a(Executor executor, AbstractC14181d<TResult> abstractC14181d) {
        this.f52134b.m11502a(new C14199v(executor, abstractC14181d));
        m11492j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11481a(Executor executor, AbstractC14182e abstractC14182e) {
        this.f52134b.m11502a(new C14201x(executor, abstractC14182e));
        m11492j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final AbstractC14185h<TResult> mo11480a(Executor executor, AbstractC14183f<? super TResult> abstractC14183f) {
        this.f52134b.m11502a(new C14203z(executor, abstractC14183f));
        m11492j();
        return this;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final <TContinuationResult> AbstractC14185h<TContinuationResult> mo11479a(Executor executor, AbstractC14184g<TResult, TContinuationResult> abstractC14184g) {
        C14176ah c14176ah = new C14176ah();
        this.f52134b.m11502a(new C14170ab(executor, abstractC14184g, c14176ah));
        m11492j();
        return c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final <X extends Throwable> TResult mo11485a(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f52133a) {
            m11495g();
            m11493i();
            if (cls.isInstance(this.f52138f)) {
                throw cls.cast(this.f52138f);
            }
            Exception exc = this.f52138f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = this.f52137e;
        }
        return tresult;
    }

    /* renamed from: a */
    public final void m11500a(Exception exc) {
        C12045o.m19161a(exc, "Exception must not be null");
        synchronized (this.f52133a) {
            m11494h();
            this.f52135c = true;
            this.f52138f = exc;
        }
        this.f52134b.m11501a(this);
    }

    /* renamed from: a */
    public final void m11499a(TResult tresult) {
        synchronized (this.f52133a) {
            m11494h();
            this.f52135c = true;
            this.f52137e = tresult;
        }
        this.f52134b.m11501a(this);
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: a */
    public final boolean mo11491a() {
        boolean z;
        synchronized (this.f52133a) {
            z = this.f52135c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: b */
    public final <TContinuationResult> AbstractC14185h<TContinuationResult> mo11477b(Executor executor, AbstractC14179b<TResult, AbstractC14185h<TContinuationResult>> abstractC14179b) {
        C14176ah c14176ah = new C14176ah();
        this.f52134b.m11502a(new C14195r(executor, abstractC14179b, c14176ah));
        m11492j();
        return c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: b */
    public final boolean mo11478b() {
        boolean z;
        synchronized (this.f52133a) {
            z = false;
            if (this.f52135c) {
                z = false;
                if (!this.f52136d) {
                    z = false;
                    if (this.f52138f == null) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m11498b(Exception exc) {
        C12045o.m19161a(exc, "Exception must not be null");
        synchronized (this.f52133a) {
            if (this.f52135c) {
                return false;
            }
            this.f52135c = true;
            this.f52138f = exc;
            this.f52134b.m11501a(this);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m11497b(TResult tresult) {
        synchronized (this.f52133a) {
            if (this.f52135c) {
                return false;
            }
            this.f52135c = true;
            this.f52137e = tresult;
            this.f52134b.m11501a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: c */
    public final boolean mo11476c() {
        return this.f52136d;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: d */
    public final TResult mo11475d() {
        TResult tresult;
        synchronized (this.f52133a) {
            m11495g();
            m11493i();
            Exception exc = this.f52138f;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            tresult = this.f52137e;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.AbstractC14185h
    /* renamed from: e */
    public final Exception mo11474e() {
        Exception exc;
        synchronized (this.f52133a) {
            exc = this.f52138f;
        }
        return exc;
    }

    /* renamed from: f */
    public final boolean m11496f() {
        synchronized (this.f52133a) {
            if (this.f52135c) {
                return false;
            }
            this.f52135c = true;
            this.f52136d = true;
            this.f52134b.m11501a(this);
            return true;
        }
    }
}
