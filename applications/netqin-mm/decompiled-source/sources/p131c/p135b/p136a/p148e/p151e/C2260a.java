package p131c.p135b.p136a.p148e.p151e;

import java.util.Map;
/* renamed from: c.b.a.e.e.a */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/a.class */
public class C2260a {

    /* renamed from: a */
    public final String f8821a;

    /* renamed from: b */
    public final String f8822b;

    /* renamed from: c */
    public final Map<String, String> f8823c;

    public C2260a(String str, String str2) {
        this(str, str2, null);
    }

    public C2260a(String str, String str2, Map<String, String> map) {
        this.f8821a = str;
        this.f8822b = str2;
        this.f8823c = map;
    }

    /* renamed from: a */
    public String m30565a() {
        return this.f8821a;
    }

    /* renamed from: b */
    public String m30564b() {
        return this.f8822b;
    }

    /* renamed from: c */
    public Map<String, String> m30563c() {
        return this.f8823c;
    }

    public String toString() {
        return "AdEventPostback{url='" + this.f8821a + "', backupUrl='" + this.f8822b + "', headers='" + this.f8823c + "'}";
    }
}
