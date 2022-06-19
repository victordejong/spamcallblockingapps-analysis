package com.google.android.gms.internal.ads;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqq.class */
public class zzaqq {
    private final zzbeb zzdjd;
    private final String zzdqg;

    public zzaqq(zzbeb zzbebVar) {
        this(zzbebVar, "");
    }

    public zzaqq(zzbeb zzbebVar, String str) {
        this.zzdjd = zzbebVar;
        this.zzdqg = str;
    }

    public final void zza(int i, int i2, int i3, int i4) {
        try {
            this.zzdjd.zza("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i3).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i4));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching size change.", e);
        }
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzdjd.zza("onScreenInfoChanged", new JSONObject().put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while obtaining screen information.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzdjd.zza("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i3).put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i4));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching default position.", e);
        }
    }

    public final void zzds(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.zzdqg);
            zzbeb zzbebVar = this.zzdjd;
            if (zzbebVar == null) {
                return;
            }
            zzbebVar.zza("onError", put);
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzdt(String str) {
        try {
            this.zzdjd.zza("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching ready Event.", e);
        }
    }

    public final void zzdu(String str) {
        try {
            this.zzdjd.zza("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzd.zzc("Error occurred while dispatching state change.", e);
        }
    }
}
