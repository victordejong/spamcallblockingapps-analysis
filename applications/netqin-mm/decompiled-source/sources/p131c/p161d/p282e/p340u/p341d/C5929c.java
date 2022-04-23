package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/c.class */
public final class C5929c extends AbstractC5946t<Boolean> {

    /* renamed from: a */
    public static C5929c f19289a;

    /* renamed from: d */
    public static C5929c m22641d() {
        C5929c cVar;
        synchronized (C5929c.class) {
            try {
                if (f19289a == null) {
                    f19289a = new C5929c();
                }
                cVar = f19289a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "isEnabled";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: b */
    public String mo22607b() {
        return "firebase_performance_collection_enabled";
    }
}
