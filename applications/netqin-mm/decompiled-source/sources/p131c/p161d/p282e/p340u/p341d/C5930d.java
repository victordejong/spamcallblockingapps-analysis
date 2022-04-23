package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/d.class */
public final class C5930d extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5930d f19290a;

    /* renamed from: e */
    public static C5930d m22639e() {
        C5930d dVar;
        synchronized (C5930d.class) {
            try {
                if (f19290a == null) {
                    f19290a = new C5930d();
                }
                dVar = f19290a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.NetworkEventCountBackground";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_rl_network_event_count_bg";
    }

    /* renamed from: d */
    public Long m22640d() {
        return 70L;
    }
}
