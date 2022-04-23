package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/p.class */
public final class C5942p extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5942p f19302a;

    /* renamed from: e */
    public static C5942p m22615e() {
        C5942p pVar;
        synchronized (C5942p.class) {
            try {
                if (f19302a == null) {
                    f19302a = new C5942p();
                }
                pVar = f19302a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.TraceEventCountBackground";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_rl_trace_event_count_bg";
    }

    /* renamed from: d */
    public Long m22616d() {
        return 30L;
    }
}
