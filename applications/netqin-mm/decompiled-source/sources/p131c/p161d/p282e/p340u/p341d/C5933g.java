package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/g.class */
public final class C5933g extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5933g f19293a;

    /* renamed from: e */
    public static C5933g m22633e() {
        C5933g gVar;
        synchronized (C5933g.class) {
            try {
                if (f19293a == null) {
                    f19293a = new C5933g();
                }
                gVar = f19293a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.TimeLimitSec";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_rl_time_limit_sec";
    }

    /* renamed from: d */
    public Long m22634d() {
        return 600L;
    }
}
