package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/k.class */
public final class C5937k extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5937k f19297a;

    /* renamed from: e */
    public static C5937k m22625e() {
        C5937k kVar;
        synchronized (C5937k.class) {
            try {
                if (f19297a == null) {
                    f19297a = new C5937k();
                }
                kVar = f19297a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_cpu_capture_frequency_fg_ms";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
    }

    /* renamed from: d */
    public Long m22626d() {
        return 100L;
    }
}
