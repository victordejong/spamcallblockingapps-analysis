package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzq;
/* renamed from: c.d.b.d.i.a.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/f.class */
public abstract class AbstractC4687f {

    /* renamed from: d */
    public static volatile Handler f17064d;

    /* renamed from: a */
    public final AbstractC4765n4 f17065a;

    /* renamed from: b */
    public final Runnable f17066b;

    /* renamed from: c */
    public volatile long f17067c;

    public AbstractC4687f(AbstractC4765n4 n4Var) {
        Preconditions.m17288a(n4Var);
        this.f17065a = n4Var;
        this.f17066b = new RunnableC4697g(this, n4Var);
    }

    /* renamed from: a */
    public abstract void mo24871a();

    /* renamed from: a */
    public final void m25025a(long j) {
        m25022c();
        if (j >= 0) {
            this.f17067c = this.f17065a.mo8779z().mo17091b();
            if (!m25021d().postDelayed(this.f17066b, j)) {
                this.f17065a.mo8789p().m9152q().m9142a("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    /* renamed from: b */
    public final boolean m25023b() {
        return this.f17067c != 0;
    }

    /* renamed from: c */
    public final void m25022c() {
        this.f17067c = 0L;
        m25021d().removeCallbacks(this.f17066b);
    }

    /* renamed from: d */
    public final Handler m25021d() {
        Handler handler;
        if (f17064d != null) {
            return f17064d;
        }
        synchronized (AbstractC4687f.class) {
            try {
                if (f17064d == null) {
                    f17064d = new zzq(this.f17065a.mo8846B().getMainLooper());
                }
                handler = f17064d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }
}
