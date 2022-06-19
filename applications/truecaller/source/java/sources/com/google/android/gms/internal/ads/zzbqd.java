package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqd.class */
public final class zzbqd implements zzbqe {
    public final /* synthetic */ zzchl zza;

    public zzbqd(zzbqf zzbqfVar, zzchl zzchlVar) {
        this.zza = zzchlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zza(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzb(String str) {
        this.zza.zzd(new zzbtv(str));
    }
}
