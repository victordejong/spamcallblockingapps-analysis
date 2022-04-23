package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/f.class */
public final class C5932f extends AbstractC5946t<Float> {

    /* renamed from: a */
    public static C5932f f19292a;

    /* renamed from: e */
    public static C5932f m22635e() {
        C5932f fVar;
        synchronized (C5932f.class) {
            try {
                if (f19292a == null) {
                    f19292a = new C5932f();
                }
                fVar = f19292a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.NetworkRequestSamplingRate";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_vc_network_request_sampling_rate";
    }

    /* renamed from: d */
    public Float m22636d() {
        return Float.valueOf(1.0f);
    }
}
