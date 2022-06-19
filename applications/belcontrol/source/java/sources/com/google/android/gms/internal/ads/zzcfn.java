package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfn.class */
public final class zzcfn {
    private final Executor zzfsj;
    private final zzbxz zzgcm;
    private final zzbkm zzgim;

    public zzcfn(Executor executor, zzbkm zzbkmVar, zzbxz zzbxzVar) {
        this.zzfsj = executor;
        this.zzgcm = zzbxzVar;
        this.zzgim = zzbkmVar;
    }

    public final /* synthetic */ void zzf(zzbeb zzbebVar, Map map) {
        this.zzgim.disable();
    }

    public final /* synthetic */ void zzg(zzbeb zzbebVar, Map map) {
        this.zzgim.enable();
    }

    public final void zzi(zzbeb zzbebVar) {
        if (zzbebVar == null) {
            return;
        }
        this.zzgcm.zzv(zzbebVar.getView());
        this.zzgcm.zza(new zzcfq(zzbebVar), this.zzfsj);
        this.zzgcm.zza(new zzcfp(zzbebVar), this.zzfsj);
        this.zzgcm.zza(this.zzgim, this.zzfsj);
        this.zzgim.zzd(zzbebVar);
        zzbebVar.zza("/trackActiveViewUnit", new zzcfs(this));
        zzbebVar.zza("/untrackActiveViewUnit", new zzcfr(this));
    }
}
