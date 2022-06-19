package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.qa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qa.class */
public class C12843qa {

    /* renamed from: a */
    private final String f49718a;

    /* renamed from: s */
    final adt f49719s;

    public C12843qa(adt adtVar) {
        this(adtVar, "");
    }

    public C12843qa(adt adtVar, String str) {
        this.f49719s = adtVar;
        this.f49718a = str;
    }

    /* renamed from: a */
    public final void m14246a(int i, int i2, int i3, int i4) {
        try {
            this.f49719s.mo13769a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: a */
    public final void m14245a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f49719s.mo13769a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while obtaining screen information.", e);
        }
    }

    /* renamed from: a */
    public final void m14244a(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f49718a);
            adt adtVar = this.f49719s;
            if (adtVar == null) {
                return;
            }
            adtVar.mo13769a("onError", put);
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: b */
    public final void m14243b(String str) {
        try {
            this.f49719s.mo13769a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: c */
    public final void m14242c(String str) {
        try {
            this.f49719s.mo13769a("onStateChanged", new JSONObject().put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching state change.", e);
        }
    }
}
