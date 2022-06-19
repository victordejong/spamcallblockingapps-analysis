package p134j4;
/* renamed from: j4.e2 */
/* loaded from: classes-dex2jar.jar:j4/e2.class */
public abstract class AbstractC3200e2 {
    /* renamed from: a */
    public abstract int mo2552a();

    /* renamed from: b */
    public abstract long mo2551b();

    /* renamed from: c */
    public abstract String mo2550c();

    /* renamed from: d */
    public abstract boolean mo2549d();

    /* renamed from: e */
    public abstract boolean mo2548e();

    /* renamed from: f */
    public abstract byte[] mo2547f();

    /* renamed from: g */
    public final boolean m2546g() {
        if (mo2550c() == null) {
            return false;
        }
        return mo2550c().endsWith("/");
    }

    /* renamed from: h */
    public final boolean m2545h() {
        return mo2552a() == 0;
    }
}
