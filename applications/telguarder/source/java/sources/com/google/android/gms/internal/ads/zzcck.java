package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcck.class */
public final class zzcck extends zzcch {
    private final boolean zzdnc;
    private final boolean zzdnd;
    private final boolean zzdww;
    private final JSONObject zzgev;
    private final boolean zzgew;

    public zzcck(zzdmw zzdmwVar, JSONObject jSONObject) {
        super(zzdmwVar);
        this.zzgev = zzbh.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        this.zzdnd = zzbh.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.zzdnc = zzbh.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.zzdww = zzbh.zza(false, jSONObject, "enable_omid");
        boolean z = false;
        if (jSONObject != null) {
            z = false;
            if (jSONObject.optJSONObject("overlay") != null) {
                z = true;
            }
        }
        this.zzgew = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final boolean zzanq() {
        return this.zzdww;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final JSONObject zzaof() {
        JSONObject jSONObject = this.zzgev;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.zzgeu.zzdwg);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final boolean zzaog() {
        return this.zzgew;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final boolean zzaoh() {
        return this.zzdnd;
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final boolean zzaoi() {
        return this.zzdnc;
    }
}
