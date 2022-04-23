package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qa.class */
public class qa {

    /* renamed from: a  reason: collision with root package name */
    private final String f28317a;
    final adt s;

    public qa(adt adtVar) {
        this(adtVar, "");
    }

    public qa(adt adtVar, String str) {
        this.s = adtVar;
        this.f28317a = str;
    }

    public final void a(int i, int i2, int i3, int i4) {
        try {
            this.s.a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching default position.", e);
        }
    }

    public final void a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.s.a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while obtaining screen information.", e);
        }
    }

    public final void a(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f28317a);
            adt adtVar = this.s;
            if (adtVar != null) {
                adtVar.a("onError", put);
            }
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void b(String str) {
        try {
            this.s.a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching ready Event.", e);
        }
    }

    public final void c(String str) {
        try {
            this.s.a("onStateChanged", new JSONObject().put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching state change.", e);
        }
    }
}
