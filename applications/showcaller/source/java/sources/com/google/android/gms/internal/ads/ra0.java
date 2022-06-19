package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ra0.class */
public class ra0 {

    /* renamed from: a */
    private final wn0 f28832a;

    /* renamed from: b */
    private final String f28833b;

    public ra0(wn0 wn0Var, String str) {
        this.f28832a = wn0Var;
        this.f28833b = str;
    }

    /* renamed from: b */
    public final void m11621b(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f28833b);
            wn0 wn0Var = this.f28832a;
            if (wn0Var == null) {
                return;
            }
            wn0Var.mo7920a("onError", put);
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: c */
    public final void m11620c(String str) {
        try {
            this.f28832a.mo7920a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: d */
    public final void m11619d(int i, int i2, int i3, int i4) {
        try {
            this.f28832a.mo7920a("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while dispatching size change.", e);
        }
    }

    /* renamed from: e */
    public final void m11618e(int i, int i2, int i3, int i4) {
        try {
            this.f28832a.mo7920a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: f */
    public final void m11617f(String str) {
        try {
            this.f28832a.mo7920a("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while dispatching state change.", e);
        }
    }

    /* renamed from: g */
    public final void m11616g(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f28832a.mo7920a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while obtaining screen information.", e);
        }
    }
}
