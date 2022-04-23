package p131c.p161d.p282e.p340u.p341d;
/* renamed from: c.d.e.u.d.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/h.class */
public final class C5934h extends AbstractC5946t<String> {

    /* renamed from: a */
    public static C5934h f19294a;

    /* renamed from: e */
    public static C5934h m22631e() {
        C5934h hVar;
        synchronized (C5934h.class) {
            try {
                if (f19294a == null) {
                    f19294a = new C5934h();
                }
                hVar = f19294a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.SdkDisabledVersions";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_disabled_android_versions";
    }

    /* renamed from: d */
    public String m22632d() {
        return "";
    }
}
