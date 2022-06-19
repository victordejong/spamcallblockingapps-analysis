package p000;
/* renamed from: d41 */
/* loaded from: classes-dex2jar.jar:d41.class */
public class d41 {

    /* renamed from: a */
    public final String f5755a;

    /* renamed from: b */
    public final String f5756b;

    public d41(String str, String str2) {
        this.f5755a = str;
        this.f5756b = str2;
    }

    /* renamed from: a */
    public static d41 m2823a(String str, String str2) {
        b51.m5786f(str, "Name is null or empty");
        b51.m5786f(str2, "Version is null or empty");
        return new d41(str, str2);
    }

    /* renamed from: b */
    public String m2822b() {
        return this.f5755a;
    }

    /* renamed from: c */
    public String m2821c() {
        return this.f5756b;
    }
}
