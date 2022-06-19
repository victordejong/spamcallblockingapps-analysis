package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iq2.class */
public class iq2 {

    /* renamed from: a */
    private gr2 f24392a = new gr2(null);

    /* renamed from: b */
    private long f24393b;

    /* renamed from: c */
    private int f24394c;

    public iq2() {
        m14297k();
    }

    /* renamed from: a */
    public void mo13433a() {
    }

    /* renamed from: b */
    public void mo13432b() {
        this.f24392a.clear();
    }

    /* renamed from: c */
    public final void m14304c(WebView webView) {
        this.f24392a = new gr2(webView);
    }

    /* renamed from: d */
    public final WebView m14303d() {
        return this.f24392a.get();
    }

    /* renamed from: e */
    public final boolean m14302e() {
        return this.f24392a.get() != null;
    }

    /* renamed from: f */
    public final void m14301f(String str, long j) {
        if (j >= this.f24393b) {
            this.f24394c = 2;
            aq2.m16505a().m16501e(m14303d(), str);
        }
    }

    /* renamed from: g */
    public final void m14300g(String str, long j) {
        if (j < this.f24393b || this.f24394c == 3) {
            return;
        }
        this.f24394c = 3;
        aq2.m16505a().m16501e(m14303d(), str);
    }

    /* renamed from: h */
    public void mo13431h(np2 np2Var, mp2 mp2Var) {
        m14299i(np2Var, mp2Var, null);
    }

    /* renamed from: i */
    public final void m14299i(np2 np2Var, mp2 mp2Var, JSONObject jSONObject) {
        String m12828h = np2Var.m12828h();
        JSONObject jSONObject2 = new JSONObject();
        mq2.m13113c(jSONObject2, "environment", "app");
        mq2.m13113c(jSONObject2, "adSessionType", mp2Var.m13116i());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("; ");
        sb.append(str2);
        mq2.m13113c(jSONObject3, "deviceType", sb.toString());
        mq2.m13113c(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        mq2.m13113c(jSONObject3, "os", "Android");
        mq2.m13113c(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        mq2.m13113c(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        mq2.m13113c(jSONObject4, "partnerName", mp2Var.m13122c().m12548b());
        mq2.m13113c(jSONObject4, "partnerVersion", mp2Var.m13122c().m12547c());
        mq2.m13113c(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        mq2.m13113c(jSONObject5, "libraryVersion", "1.3.3-google_20200416");
        mq2.m13113c(jSONObject5, "appId", yp2.m8744a().m8743b().getApplicationContext().getPackageName());
        mq2.m13113c(jSONObject2, "app", jSONObject5);
        if (mp2Var.m13118g() != null) {
            mq2.m13113c(jSONObject2, "contentUrl", mp2Var.m13118g());
        }
        mq2.m13113c(jSONObject2, "customReferenceData", mp2Var.m13117h());
        JSONObject jSONObject6 = new JSONObject();
        Iterator<pp2> it = mp2Var.m13121d().iterator();
        if (!it.hasNext()) {
            aq2.m16505a().m16503c(m14303d(), m12828h, jSONObject2, jSONObject6, jSONObject);
        } else {
            it.next();
            throw null;
        }
    }

    /* renamed from: j */
    public final void m14298j(float f) {
        aq2.m16505a().m16500f(m14303d(), f);
    }

    /* renamed from: k */
    public final void m14297k() {
        this.f24393b = System.nanoTime();
        this.f24394c = 1;
    }
}
