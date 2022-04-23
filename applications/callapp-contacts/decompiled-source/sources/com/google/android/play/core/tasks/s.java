package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.x;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/s.class */
public final class s<ResultT> extends d<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31580a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final o<ResultT> f31581b = new o<>();

    /* renamed from: c  reason: collision with root package name */
    private boolean f31582c;

    /* renamed from: d  reason: collision with root package name */
    private ResultT f31583d;
    private Exception e;

    private final void e() {
        x.a(!this.f31582c, "Task is already complete");
    }

    private final void f() {
        synchronized (this.f31580a) {
            if (this.f31582c) {
                this.f31581b.a(this);
            }
        }
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(a<ResultT> aVar) {
        this.f31581b.a(new h(e.f31558a, aVar));
        f();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(b bVar) {
        a(e.f31558a, bVar);
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(c<? super ResultT> cVar) {
        a(e.f31558a, cVar);
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(Executor executor, b bVar) {
        this.f31581b.a(new k(executor, bVar));
        f();
        return this;
    }

    @Override // com.google.android.play.core.tasks.d
    public final d<ResultT> a(Executor executor, c<? super ResultT> cVar) {
        this.f31581b.a(new m(executor, cVar));
        f();
        return this;
    }

    public final void a(Exception exc) {
        synchronized (this.f31580a) {
            e();
            this.f31582c = true;
            this.e = exc;
        }
        this.f31581b.a(this);
    }

    public final void a(ResultT resultt) {
        synchronized (this.f31580a) {
            e();
            this.f31582c = true;
            this.f31583d = resultt;
        }
        this.f31581b.a(this);
    }

    @Override // com.google.android.play.core.tasks.d
    public final boolean a() {
        boolean z;
        synchronized (this.f31580a) {
            z = this.f31582c;
        }
        return z;
    }

    @Override // com.google.android.play.core.tasks.d
    public final boolean b() {
        boolean z;
        synchronized (this.f31580a) {
            z = false;
            if (this.f31582c) {
                z = false;
                if (this.e == null) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final boolean b(Exception exc) {
        synchronized (this.f31580a) {
            if (this.f31582c) {
                return false;
            }
            this.f31582c = true;
            this.e = exc;
            this.f31581b.a(this);
            return true;
        }
    }

    public final boolean b(ResultT resultt) {
        synchronized (this.f31580a) {
            if (this.f31582c) {
                return false;
            }
            this.f31582c = true;
            this.f31583d = resultt;
            this.f31581b.a(this);
            return true;
        }
    }

    @Override // com.google.android.play.core.tasks.d
    public final ResultT c() {
        ResultT resultt;
        synchronized (this.f31580a) {
            x.a(this.f31582c, "Task is not yet complete");
            Exception exc = this.e;
            if (exc == null) {
                resultt = this.f31583d;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.d
    public final Exception d() {
        Exception exc;
        synchronized (this.f31580a) {
            exc = this.e;
        }
        return exc;
    }
}
