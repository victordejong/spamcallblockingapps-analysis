package com.google.android.gms.internal.ads;

import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import com.squareup.picasso.Dispatcher;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqn.class */
public class zzaqn {

    /* renamed from: a */
    public final zzbgj f24295a;

    /* renamed from: b */
    public final String f24296b;

    public zzaqn(zzbgj zzbgjVar) {
        this(zzbgjVar, "");
    }

    public zzaqn(zzbgj zzbgjVar, String str) {
        this.f24295a = zzbgjVar;
        this.f24296b = str;
    }

    /* renamed from: a */
    public final void m16430a(int i, int i2, int i3, int i4) {
        try {
            this.f24295a.mo15576a("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while dispatching size change.", e);
        }
    }

    /* renamed from: a */
    public final void m16429a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f24295a.mo15576a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while obtaining screen information.", e);
        }
    }

    /* renamed from: a */
    public final void m16428a(String str) {
        try {
            JSONObject put = new JSONObject().put(AvidVideoPlaybackListenerImpl.MESSAGE, str).put("action", this.f24296b);
            if (this.f24295a != null) {
                this.f24295a.mo15576a("onError", put);
            }
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while dispatching error event.", e);
        }
    }

    /* renamed from: b */
    public final void m16427b(int i, int i2, int i3, int i4) {
        try {
            this.f24295a.mo15576a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while dispatching default position.", e);
        }
    }

    /* renamed from: b */
    public final void m16426b(String str) {
        try {
            this.f24295a.mo15576a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while dispatching ready Event.", e);
        }
    }

    /* renamed from: c */
    public final void m16425c(String str) {
        try {
            this.f24295a.mo15576a("onStateChanged", new JSONObject().put(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE, str));
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while dispatching state change.", e);
        }
    }
}
