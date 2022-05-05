package p081h.p082a.p083a.p088n;

import org.json.JSONObject;
/* renamed from: h.a.a.n.f */
/* loaded from: classes-dex2jar.jar:h/a/a/n/f.class */
public class C5409f {

    /* renamed from: a */
    public final String f13554a;

    /* renamed from: b */
    public final String f13555b;

    /* renamed from: c */
    public final String f13556c;

    /* renamed from: h.a.a.n.f$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/f$a.class */
    public static class C5410a {
        /* renamed from: a */
        public static C5409f m25488a(JSONObject jSONObject) {
            return new C5409f(jSONObject.optString("fFamily"), jSONObject.optString("fName"), jSONObject.optString("fStyle"), (float) jSONObject.optDouble("ascent"));
        }
    }

    public C5409f(String str, String str2, String str3, float f) {
        this.f13554a = str;
        this.f13555b = str2;
        this.f13556c = str3;
    }

    /* renamed from: a */
    public String m25491a() {
        return this.f13554a;
    }

    /* renamed from: b */
    public String m25490b() {
        return this.f13555b;
    }

    /* renamed from: c */
    public String m25489c() {
        return this.f13556c;
    }
}
