package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Handler;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p276q.HandlerC8545a;
/* renamed from: h.i.a.e.m.b.s4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/s4.class */
public abstract class AbstractC9056s4 {

    /* renamed from: d */
    public static volatile Handler f20636d;

    /* renamed from: a */
    public final AbstractC9041q1 f20637a;

    /* renamed from: b */
    public final Runnable f20638b;

    /* renamed from: c */
    public volatile long f20639c;

    public AbstractC9056s4(AbstractC9041q1 q1Var) {
        C7021t.m21290a(q1Var);
        this.f20637a = q1Var;
        this.f20638b = new RunnableC9063t4(this, q1Var);
    }

    /* renamed from: a */
    public final void m16221a() {
        this.f20639c = 0L;
        m16218b().removeCallbacks(this.f20638b);
    }

    /* renamed from: a */
    public final void m16220a(long j) {
        m16221a();
        if (j >= 0) {
            this.f20639c = this.f20637a.mo16174e().currentTimeMillis();
            if (!m16218b().postDelayed(this.f20638b, j)) {
                this.f20637a.mo16178c().m16375s().m16337a("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    /* renamed from: b */
    public final Handler m16218b() {
        Handler handler;
        if (f20636d != null) {
            return f20636d;
        }
        synchronized (AbstractC9056s4.class) {
            try {
                if (f20636d == null) {
                    f20636d = new HandlerC8545a(this.f20637a.getContext().getMainLooper());
                }
                handler = f20636d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: c */
    public abstract void mo16217c();

    /* renamed from: d */
    public final boolean m16216d() {
        return this.f20639c != 0;
    }
}
