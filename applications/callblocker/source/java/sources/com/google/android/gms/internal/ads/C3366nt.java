package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.nt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nt.class */
public class C3366nt {

    /* renamed from: a */
    private final act f17042a;

    /* renamed from: b */
    private final String f17043b;

    public C3366nt(act actVar) {
        this(actVar, "");
    }

    public C3366nt(act actVar, String str) {
        this.f17042a = actVar;
        this.f17043b = str;
    }

    /* renamed from: a */
    public final void m7400a(int i, int i2, int i3, int i4) {
        try {
            this.f17042a.mo7734b("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while dispatching size change.", e);
        }
    }

    /* renamed from: a */
    public final void m7399a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f17042a.mo7734b("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while obtaining screen information.", e);
        }
    }

    /* renamed from: a */
    public final void m7398a(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f17043b);
            if (this.f17042a == null) {
                return;
            }
            this.f17042a.mo7734b("onError", put);
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: b */
    public final void m7397b(int i, int i2, int i3, int i4) {
        try {
            this.f17042a.mo7734b("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: b */
    public final void m7396b(String str) {
        try {
            this.f17042a.mo7734b("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: c */
    public final void m7395c(String str) {
        try {
            this.f17042a.mo7734b("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while dispatching state change.", e);
        }
    }
}
