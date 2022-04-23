package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/m.class */
public final class C5939m extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5939m f19299a;

    /* renamed from: e */
    public static C5939m m22621e() {
        C5939m mVar;
        synchronized (C5939m.class) {
            try {
                if (f19299a == null) {
                    f19299a = new C5939m();
                }
                mVar = f19299a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_memory_capture_frequency_bg_ms";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_session_gauge_memory_capture_frequency_bg_ms";
    }

    /* renamed from: d */
    public Long m22622d() {
        return 0L;
    }
}
