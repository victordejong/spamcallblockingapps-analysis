package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gh.class */
public class C1753gh {

    /* renamed from: a */
    private final jt f6653a;

    /* renamed from: b */
    private final String f6654b;

    public C1753gh(jt jtVar, String str) {
        this.f6653a = jtVar;
        this.f6654b = str;
    }

    /* renamed from: b */
    public final void m7376b(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f6654b);
            jt jtVar = this.f6653a;
            if (jtVar != null) {
                jtVar.m6704a("onError", put);
            }
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: c */
    public final void m7375c(String str) {
        try {
            this.f6653a.m6704a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: d */
    public final void m7374d(int i, int i2, int i3, int i4) {
        try {
            this.f6653a.m6704a("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while dispatching size change.", e);
        }
    }

    /* renamed from: e */
    public final void m7373e(int i, int i2, int i3, int i4) {
        try {
            this.f6653a.m6704a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: f */
    public final void m7372f(String str) {
        try {
            this.f6653a.m6704a("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while dispatching state change.", e);
        }
    }

    /* renamed from: g */
    public final void m7371g(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f6653a.m6704a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            C1894po.m6182d("Error occurred while obtaining screen information.", e);
        }
    }
}
