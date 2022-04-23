package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/s.class */
public final class C5945s extends AbstractC5946t<Float> {

    /* renamed from: a */
    public static C5945s f19305a;

    /* renamed from: d */
    public static float m22610d() {
        return 0.0f;
    }

    /* renamed from: e */
    public static float m22609e() {
        return 100.0f;
    }

    /* renamed from: f */
    public static C5945s m22608f() {
        C5945s sVar;
        synchronized (C5945s.class) {
            try {
                if (f19305a == null) {
                    f19305a = new C5945s();
                }
                sVar = f19305a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.TransportRolloutPercentage";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_log_transport_android_percent";
    }
}
