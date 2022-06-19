package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbws.class */
public final class zzbws implements zzbsg {
    public final /* synthetic */ zzbwt zza;
    private final zzcjr zzb;

    public zzbws(zzbwt zzbwtVar, zzcjr zzcjrVar) {
        this.zza = zzbwtVar;
        this.zzb = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zza(String str) {
        try {
            if (str == null) {
                this.zzb.zze(new zzbvw());
            } else {
                this.zzb.zze(new zzbvw(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zzb.zzd(jSONObject);
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.zzb.zze(e2);
        }
    }
}
