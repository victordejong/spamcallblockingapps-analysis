package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ah.class */
public final class ah<TResult> extends h<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f30007a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final ad<TResult> f30008b = new ad<>();

    /* renamed from: c  reason: collision with root package name */
    private boolean f30009c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f30010d;
    private TResult e;
    private Exception f;

    private final void g() {
        o.a(this.f30009c, "Task is not yet complete");
    }

    private final void h() {
        if (this.f30009c) {
            throw DuplicateTaskCompletionException.a(this);
        }
    }

    private final void i() {
        if (this.f30010d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void j() {
        synchronized (this.f30007a) {
            if (this.f30009c) {
                this.f30008b.a(this);
            }
        }
    }

    @Override // com.google.android.gms.tasks.h
    public final <TContinuationResult> h<TContinuationResult> a(b<TResult, TContinuationResult> bVar) {
        return a(j.f30015a, bVar);
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(d<TResult> dVar) {
        this.f30008b.a(new v(j.f30015a, dVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(e eVar) {
        a(j.f30015a, eVar);
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(f<? super TResult> fVar) {
        a(j.f30015a, fVar);
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final <TContinuationResult> h<TContinuationResult> a(g<TResult, TContinuationResult> gVar) {
        Executor executor = j.f30015a;
        ah ahVar = new ah();
        this.f30008b.a(new ab(executor, gVar, ahVar));
        j();
        return ahVar;
    }

    @Override // com.google.android.gms.tasks.h
    public final <TContinuationResult> h<TContinuationResult> a(Executor executor, b<TResult, TContinuationResult> bVar) {
        ah ahVar = new ah();
        this.f30008b.a(new p(executor, bVar, ahVar));
        j();
        return ahVar;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(Executor executor, c cVar) {
        this.f30008b.a(new t(executor, cVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(Executor executor, d<TResult> dVar) {
        this.f30008b.a(new v(executor, dVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(Executor executor, e eVar) {
        this.f30008b.a(new x(executor, eVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final h<TResult> a(Executor executor, f<? super TResult> fVar) {
        this.f30008b.a(new z(executor, fVar));
        j();
        return this;
    }

    @Override // com.google.android.gms.tasks.h
    public final <TContinuationResult> h<TContinuationResult> a(Executor executor, g<TResult, TContinuationResult> gVar) {
        ah ahVar = new ah();
        this.f30008b.a(new ab(executor, gVar, ahVar));
        j();
        return ahVar;
    }

    @Override // com.google.android.gms.tasks.h
    public final <X extends Throwable> TResult a(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f30007a) {
            g();
            i();
            if (!cls.isInstance(this.f)) {
                Exception exc = this.f;
                if (exc == null) {
                    tresult = this.e;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } else {
                throw cls.cast(this.f);
            }
        }
        return tresult;
    }

    public final void a(Exception exc) {
        o.a(exc, "Exception must not be null");
        synchronized (this.f30007a) {
            h();
            this.f30009c = true;
            this.f = exc;
        }
        this.f30008b.a(this);
    }

    public final void a(TResult tresult) {
        synchronized (this.f30007a) {
            h();
            this.f30009c = true;
            this.e = tresult;
        }
        this.f30008b.a(this);
    }

    @Override // com.google.android.gms.tasks.h
    public final boolean a() {
        boolean z;
        synchronized (this.f30007a) {
            z = this.f30009c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.h
    public final <TContinuationResult> h<TContinuationResult> b(Executor executor, b<TResult, h<TContinuationResult>> bVar) {
        ah ahVar = new ah();
        this.f30008b.a(new r(executor, bVar, ahVar));
        j();
        return ahVar;
    }

    @Override // com.google.android.gms.tasks.h
    public final boolean b() {
        boolean z;
        synchronized (this.f30007a) {
            z = false;
            if (this.f30009c) {
                z = false;
                if (!this.f30010d) {
                    z = false;
                    if (this.f == null) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public final boolean b(Exception exc) {
        o.a(exc, "Exception must not be null");
        synchronized (this.f30007a) {
            if (this.f30009c) {
                return false;
            }
            this.f30009c = true;
            this.f = exc;
            this.f30008b.a(this);
            return true;
        }
    }

    public final boolean b(TResult tresult) {
        synchronized (this.f30007a) {
            if (this.f30009c) {
                return false;
            }
            this.f30009c = true;
            this.e = tresult;
            this.f30008b.a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.h
    public final boolean c() {
        return this.f30010d;
    }

    @Override // com.google.android.gms.tasks.h
    public final TResult d() {
        TResult tresult;
        synchronized (this.f30007a) {
            g();
            i();
            Exception exc = this.f;
            if (exc == null) {
                tresult = this.e;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.h
    public final Exception e() {
        Exception exc;
        synchronized (this.f30007a) {
            exc = this.f;
        }
        return exc;
    }

    public final boolean f() {
        synchronized (this.f30007a) {
            if (this.f30009c) {
                return false;
            }
            this.f30009c = true;
            this.f30010d = true;
            this.f30008b.a(this);
            return true;
        }
    }
}
