package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/l.class */
public final class C5938l extends AbstractC5946t<Long> {

    /* renamed from: a */
    public static C5938l f19298a;

    /* renamed from: e */
    public static C5938l m22623e() {
        C5938l lVar;
        synchronized (C5938l.class) {
            try {
                if (f19298a == null) {
                    f19298a = new C5938l();
                }
                lVar = f19298a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SessionsMaxDurationMinutes";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "sessions_max_length_minutes";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_session_max_duration_min";
    }

    /* renamed from: d */
    public Long m22624d() {
        return 240L;
    }
}
