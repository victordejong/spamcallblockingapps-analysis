package p193e.p1577m.p1578a.p1596c;

import android.os.Handler;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.s0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/s0.class */
public final class C24845s0 {

    /* renamed from: a */
    public final AbstractC24847b f69678a;

    /* renamed from: b */
    public final AbstractC24846a f69679b;

    /* renamed from: c */
    public final AbstractC24861y0 f69680c;

    /* renamed from: d */
    public int f69681d;

    /* renamed from: e */
    public Object f69682e;

    /* renamed from: f */
    public Handler f69683f;

    /* renamed from: g */
    public int f69684g;

    /* renamed from: h */
    public boolean f69685h;

    /* renamed from: i */
    public boolean f69686i;

    /* renamed from: j */
    public boolean f69687j;

    /* renamed from: e.m.a.c.s0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/s0$a.class */
    public interface AbstractC24846a {
    }

    /* renamed from: e.m.a.c.s0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/s0$b.class */
    public interface AbstractC24847b {
        /* renamed from: f */
        void mo4407f(int i, Object obj) throws C24189b0;
    }

    public C24845s0(AbstractC24846a abstractC24846a, AbstractC24847b abstractC24847b, AbstractC24861y0 abstractC24861y0, int i, Handler handler) {
        this.f69679b = abstractC24846a;
        this.f69678a = abstractC24847b;
        this.f69680c = abstractC24861y0;
        this.f69683f = handler;
        this.f69684g = i;
    }

    /* renamed from: a */
    public boolean m4422a() {
        synchronized (this) {
        }
        return false;
    }

    /* renamed from: b */
    public void m4421b(boolean z) {
        synchronized (this) {
            this.f69686i = z | this.f69686i;
            this.f69687j = true;
            notifyAll();
        }
    }

    /* renamed from: c */
    public C24845s0 m4420c() {
        C26232y.m2286x(!this.f69685h);
        C26232y.m2310r(true);
        this.f69685h = true;
        C24253e0 c24253e0 = (C24253e0) this.f69679b;
        synchronized (c24253e0) {
            if (!c24253e0.f67267w && c24253e0.f67252h.isAlive()) {
                c24253e0.f67251g.m4640c(15, this).sendToTarget();
            }
            m4421b(false);
        }
        return this;
    }

    /* renamed from: d */
    public C24845s0 m4419d(Object obj) {
        C26232y.m2286x(!this.f69685h);
        this.f69682e = obj;
        return this;
    }

    /* renamed from: e */
    public C24845s0 m4418e(int i) {
        C26232y.m2286x(!this.f69685h);
        this.f69681d = i;
        return this;
    }
}
