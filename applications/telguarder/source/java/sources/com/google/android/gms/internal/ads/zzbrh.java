package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrh.class */
public final class zzbrh extends zzza {
    private final List<zzvw> zzadw;
    private final String zzfzb;
    private final String zzfzc;

    public zzbrh(zzdmw zzdmwVar, String str, zzcrq zzcrqVar) {
        this.zzfzc = zzdmwVar == null ? null : zzdmwVar.zzfzc;
        String zzb = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? zzb(zzdmwVar) : null;
        this.zzfzb = zzb != null ? zzb : str;
        this.zzadw = zzcrqVar.getAdapterResponses();
    }

    private static String zzb(zzdmw zzdmwVar) {
        try {
            return zzdmwVar.zzhjj.getString("class_name");
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final List<zzvw> getAdapterResponses() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue()) {
            return null;
        }
        return this.zzadw;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getMediationAdapterClassName() {
        return this.zzfzb;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final String getResponseId() {
        return this.zzfzc;
    }
}
