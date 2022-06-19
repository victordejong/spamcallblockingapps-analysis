package p220r4;

import com.google.android.play.core.tasks.RuntimeExecutionException;
import java.util.concurrent.Executor;
/* renamed from: r4.o */
/* loaded from: classes-dex2jar.jar:r4/o.class */
public final class C4206o<ResultT> {

    /* renamed from: a */
    public final Object f13198a = new Object();

    /* renamed from: b */
    public final C4202k f13199b = new C4202k();

    /* renamed from: c */
    public boolean f13200c;

    /* renamed from: d */
    public Object f13201d;

    /* renamed from: e */
    public Exception f13202e;

    /* renamed from: a */
    public final C4206o m1292a(Executor executor, AbstractC4193b<? super ResultT> abstractC4193b) {
        this.f13199b.m1296a(new C4200i(executor, abstractC4193b));
        m1287f();
        return this;
    }

    /* renamed from: b */
    public final ResultT m1291b() {
        ResultT resultt;
        synchronized (this.f13198a) {
            if (!this.f13200c) {
                throw new IllegalStateException("Task is not yet complete");
            }
            Exception exc = this.f13202e;
            if (exc != null) {
                throw new RuntimeExecutionException(exc);
            }
            resultt = (ResultT) this.f13201d;
        }
        return resultt;
    }

    /* renamed from: c */
    public final boolean m1290c() {
        boolean z;
        synchronized (this.f13198a) {
            z = false;
            if (this.f13200c) {
                z = false;
                if (this.f13202e == null) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    public final void m1289d(Exception exc) {
        synchronized (this.f13198a) {
            if (!(!this.f13200c)) {
                throw new IllegalStateException("Task is already complete");
            }
            this.f13200c = true;
            this.f13202e = exc;
        }
        this.f13199b.m1295b(this);
    }

    /* renamed from: e */
    public final void m1288e(Object obj) {
        synchronized (this.f13198a) {
            if (!(!this.f13200c)) {
                throw new IllegalStateException("Task is already complete");
            }
            this.f13200c = true;
            this.f13201d = obj;
        }
        this.f13199b.m1295b(this);
    }

    /* renamed from: f */
    public final void m1287f() {
        synchronized (this.f13198a) {
            if (!this.f13200c) {
                return;
            }
            this.f13199b.m1295b(this);
        }
    }
}
