package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbx;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmq.class */
public final class zzdmq extends zzdmr {
    private final JSONObject zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;
    private final boolean zzf;
    private final String zzg;

    public zzdmq(zzezz zzezzVar, JSONObject jSONObject) {
        super(zzezzVar);
        this.zzb = zzbx.zzh(jSONObject, "tracking_urls_and_actions", "active_view");
        boolean z = false;
        this.zzc = zzbx.zzi(false, jSONObject, "allow_pub_owned_ad_view");
        this.zzd = zzbx.zzi(false, jSONObject, "attribution", "allow_pub_rendering");
        this.zze = zzbx.zzi(false, jSONObject, "enable_omid");
        this.zzg = zzbx.zzj("", jSONObject, "watermark_overlay_png_base64");
        this.zzf = jSONObject.optJSONObject("overlay") != null ? true : z;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final JSONObject zza() {
        JSONObject jSONObject = this.zzb;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.zza.zzz);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final String zzf() {
        return this.zzg;
    }
}
