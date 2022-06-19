package p000;
/* renamed from: oa1 */
/* loaded from: classes3-dex2jar.jar:oa1.class */
public class oa1 {

    /* renamed from: a */
    public int f7183a;

    /* renamed from: b */
    public String f7184b;

    public oa1(int i, String str) {
        String str2;
        this.f7183a = i;
        if (str == null || str.trim().length() == 0) {
            str2 = na1.m1201k(i);
        } else {
            str2 = str + " (response: " + na1.m1201k(i) + ")";
        }
        this.f7184b = str2;
    }

    /* renamed from: a */
    public String m1127a() {
        return this.f7184b;
    }

    /* renamed from: b */
    public int m1126b() {
        return this.f7183a;
    }

    /* renamed from: c */
    public boolean m1125c() {
        return !m1124d();
    }

    /* renamed from: d */
    public boolean m1124d() {
        return this.f7183a == 0;
    }

    public String toString() {
        return "IabResult: " + m1127a();
    }
}
