package p000;

import android.webkit.WebView;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: f51 */
/* loaded from: classes-dex2jar.jar:f51.class */
public abstract class f51 {

    /* renamed from: a */
    public e51 f6527a = new e51(null);

    /* renamed from: b */
    public u31 f6528b;

    /* renamed from: c */
    public h41 f6529c;

    /* renamed from: d */
    public EnumC1397a f6530d;

    /* renamed from: e */
    public long f6531e;

    /* renamed from: f51$a */
    /* loaded from: classes-dex2jar.jar:f51$a.class */
    public enum EnumC1397a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public f51() {
        m1957w();
    }

    /* renamed from: a */
    public void m1979a() {
    }

    /* renamed from: b */
    public void m1978b(float f) {
        p41.a().c(m1959u(), f);
    }

    /* renamed from: c */
    public void m1977c(WebView webView) {
        this.f6527a = new e51(webView);
    }

    /* renamed from: d */
    public void m1976d(u31 u31Var) {
        this.f6528b = u31Var;
    }

    /* renamed from: e */
    public void m1975e(w31 w31Var) {
        p41.a().i(m1959u(), w31Var.d());
    }

    /* renamed from: f */
    public void m1974f(f41 f41Var, x31 x31Var) {
        m1973g(f41Var, x31Var, null);
    }

    /* renamed from: g */
    public void m1973g(f41 f41Var, x31 x31Var, JSONObject jSONObject) {
        String s = f41Var.s();
        JSONObject jSONObject2 = new JSONObject();
        y41.g(jSONObject2, "environment", "app");
        y41.g(jSONObject2, "adSessionType", x31Var.c());
        y41.g(jSONObject2, "deviceInfo", x41.d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        y41.g(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        y41.g(jSONObject3, "partnerName", x31Var.h().m2822b());
        y41.g(jSONObject3, "partnerVersion", x31Var.h().m2821c());
        y41.g(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        y41.g(jSONObject4, "libraryVersion", "1.3.4-Mopub");
        y41.g(jSONObject4, "appId", o41.a().c().getApplicationContext().getPackageName());
        y41.g(jSONObject2, "app", jSONObject4);
        if (x31Var.d() != null) {
            y41.g(jSONObject2, "contentUrl", x31Var.d());
        }
        if (x31Var.e() != null) {
            y41.g(jSONObject2, "customReferenceData", x31Var.e());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (e41 e41Var : x31Var.i()) {
            y41.g(jSONObject5, e41Var.m2243d(), e41Var.m2242e());
        }
        p41.a().f(m1959u(), s, jSONObject2, jSONObject5, jSONObject);
    }

    /* renamed from: h */
    public void m1972h(h41 h41Var) {
        this.f6529c = h41Var;
    }

    /* renamed from: i */
    public void m1971i(String str) {
        p41.a().e(m1959u(), str, (JSONObject) null);
    }

    /* renamed from: j */
    public void m1970j(String str, long j) {
        if (j >= this.f6531e) {
            this.f6530d = EnumC1397a.AD_STATE_VISIBLE;
            p41.a().m(m1959u(), str);
        }
    }

    /* renamed from: k */
    public void m1969k(String str, JSONObject jSONObject) {
        p41.a().e(m1959u(), str, jSONObject);
    }

    /* renamed from: l */
    public void m1968l(JSONObject jSONObject) {
        p41.a().n(m1959u(), jSONObject);
    }

    /* renamed from: m */
    public void m1967m(boolean z) {
        if (m1962r()) {
            p41.a().p(m1959u(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: n */
    public void m1966n() {
        this.f6527a.clear();
    }

    /* renamed from: o */
    public void m1965o(String str, long j) {
        if (j >= this.f6531e) {
            EnumC1397a enumC1397a = this.f6530d;
            EnumC1397a enumC1397a2 = EnumC1397a.AD_STATE_NOTVISIBLE;
            if (enumC1397a == enumC1397a2) {
                return;
            }
            this.f6530d = enumC1397a2;
            p41.a().m(m1959u(), str);
        }
    }

    /* renamed from: p */
    public u31 m1964p() {
        return this.f6528b;
    }

    /* renamed from: q */
    public h41 m1963q() {
        return this.f6529c;
    }

    /* renamed from: r */
    public boolean m1962r() {
        return this.f6527a.get() != null;
    }

    /* renamed from: s */
    public void m1961s() {
        p41.a().b(m1959u());
    }

    /* renamed from: t */
    public void m1960t() {
        p41.a().l(m1959u());
    }

    /* renamed from: u */
    public WebView m1959u() {
        return this.f6527a.get();
    }

    /* renamed from: v */
    public void m1958v() {
        p41.a().o(m1959u());
    }

    /* renamed from: w */
    public void m1957w() {
        this.f6531e = a51.m7386a();
        this.f6530d = EnumC1397a.AD_STATE_IDLE;
    }
}
