package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zr1.class */
public class zr1 {

    /* renamed from: a */
    private ys1 f9431a = new ys1(null);

    /* renamed from: b */
    private long f9432b;

    /* renamed from: c */
    private int f9433c;

    public zr1() {
        m4535k();
    }

    /* renamed from: a */
    public void m4545a() {
    }

    /* renamed from: b */
    public void m4544b() {
        this.f9431a.clear();
    }

    /* renamed from: c */
    final void m4543c(WebView webView) {
        this.f9431a = new ys1(webView);
    }

    /* renamed from: d */
    public final WebView m4542d() {
        return this.f9431a.get();
    }

    /* renamed from: e */
    public final boolean m4541e() {
        return this.f9431a.get() != null;
    }

    /* renamed from: f */
    public final void m4540f(String str, long j) {
        if (j >= this.f9432b) {
            this.f9433c = 2;
            sr1.m5623a().m5619e(m4542d(), str);
        }
    }

    /* renamed from: g */
    public final void m4539g(String str, long j) {
        if (j < this.f9432b || this.f9433c == 3) {
            return;
        }
        this.f9433c = 3;
        sr1.m5623a().m5619e(m4542d(), str);
    }

    /* renamed from: h */
    public void m4538h(er1 er1Var, dr1 dr1Var) {
        m4537i(er1Var, dr1Var, null);
    }

    /* renamed from: i */
    protected final void m4537i(er1 er1Var, dr1 dr1Var, JSONObject jSONObject) {
        String i = er1Var.i();
        JSONObject jSONObject2 = new JSONObject();
        ds1.m7694c(jSONObject2, "environment", "app");
        ds1.m7694c(jSONObject2, "adSessionType", dr1Var.m7697j());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("; ");
        sb.append(str2);
        ds1.m7694c(jSONObject3, "deviceType", sb.toString());
        ds1.m7694c(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        ds1.m7694c(jSONObject3, "os", "Android");
        ds1.m7694c(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        ds1.m7694c(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        ds1.m7694c(jSONObject4, "partnerName", dr1Var.m7703d().m7455b());
        ds1.m7694c(jSONObject4, "partnerVersion", dr1Var.m7703d().m7454c());
        ds1.m7694c(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        ds1.m7694c(jSONObject5, "libraryVersion", "1.3.3-google_20200416");
        ds1.m7694c(jSONObject5, "appId", qr1.m6064a().m6063b().getApplicationContext().getPackageName());
        ds1.m7694c(jSONObject2, "app", jSONObject5);
        if (dr1Var.m7699h() != null) {
            ds1.m7694c(jSONObject2, "contentUrl", dr1Var.m7699h());
        }
        ds1.m7694c(jSONObject2, "customReferenceData", dr1Var.m7698i());
        JSONObject jSONObject6 = new JSONObject();
        Iterator<gr1> it = dr1Var.m7702e().iterator();
        if (!it.hasNext()) {
            sr1.m5623a().m5621c(m4542d(), i, jSONObject2, jSONObject6, jSONObject);
        } else {
            it.next();
            throw null;
        }
    }

    /* renamed from: j */
    public final void m4536j(float f) {
        sr1.m5623a().m5618f(m4542d(), f);
    }

    /* renamed from: k */
    public final void m4535k() {
        this.f9432b = System.nanoTime();
        this.f9433c = 1;
    }
}
