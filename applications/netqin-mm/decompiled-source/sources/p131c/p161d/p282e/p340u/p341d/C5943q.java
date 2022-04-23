package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.q */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/q.class */
public final class C5943q extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5943q f19303a;

    /* renamed from: e */
    public static C5943q m22613e() {
        C5943q qVar;
        synchronized (C5943q.class) {
            try {
                if (f19303a == null) {
                    f19303a = new C5943q();
                }
                qVar = f19303a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.TraceEventCountForeground";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_rl_trace_event_count_fg";
    }

    /* renamed from: d */
    public Long m22614d() {
        return 300L;
    }
}
