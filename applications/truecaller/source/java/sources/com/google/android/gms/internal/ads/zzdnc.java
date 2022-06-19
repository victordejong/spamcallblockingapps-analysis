package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnc.class */
public final class zzdnc implements zzgla<zzcei> {
    private final zzdmy zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzfar> zzc;

    public zzdnc(zzdmy zzdmyVar, zzgln<Context> zzglnVar, zzgln<zzfar> zzglnVar2) {
        this.zza = zzdmyVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzcei zzb() {
        return new zzcei(((zzfbv) this.zzb).zza(), ((zzdat) this.zzc).zza().zzf);
    }
}
