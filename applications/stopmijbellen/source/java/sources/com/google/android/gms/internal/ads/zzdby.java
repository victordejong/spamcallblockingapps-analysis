package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdby.class */
public final class zzdby<T> {
    private final zzedm zza;
    private final zzfef zzb;
    private final zzfie zzc;
    private final zzcvp zzd;
    private final zzell<T> zze;
    private final zzdjw zzf;
    private zzfdz zzg;
    private final zzeeq zzh;
    private final zzddx zzi;
    private final Executor zzj;
    private final zzeed zzk;
    private final zzehy zzl;

    public zzdby(zzedm zzedmVar, zzfef zzfefVar, zzfie zzfieVar, zzcvp zzcvpVar, zzell<T> zzellVar, zzdjw zzdjwVar, zzfdz zzfdzVar, zzeeq zzeeqVar, zzddx zzddxVar, Executor executor, zzeed zzeedVar, zzehy zzehyVar) {
        this.zza = zzedmVar;
        this.zzb = zzfefVar;
        this.zzc = zzfieVar;
        this.zzd = zzcvpVar;
        this.zze = zzellVar;
        this.zzf = zzdjwVar;
        this.zzg = zzfdzVar;
        this.zzh = zzeeqVar;
        this.zzi = zzddxVar;
        this.zzj = executor;
        this.zzk = zzeedVar;
        this.zzl = zzehyVar;
    }

    public final zzbew zza(Throwable th) {
        return zzfey.zzb(th, this.zzl);
    }

    public final zzdjw zzc() {
        return this.zzf;
    }

    public final /* synthetic */ zzfdz zzd(zzfdz zzfdzVar) throws Exception {
        this.zzd.zza(zzfdzVar);
        return zzfdzVar;
    }

    public final zzfxa<zzcdq> zze(final zzffu zzffuVar) {
        zzfhj zza = this.zzc.zzb(zzfhy.GET_CACHE_KEY, this.zzi.zzc()).zzf(new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdbu
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzdby.this.zzf(zzffuVar, (zzcdq) obj);
            }
        }).zza();
        zzfwq.zzr(zza, new zzdbw(this), this.zzj);
        return zza;
    }

    public final /* synthetic */ zzfxa zzf(zzffu zzffuVar, zzcdq zzcdqVar) throws Exception {
        zzcdqVar.zzi = zzffuVar;
        return this.zzh.zza(zzcdqVar);
    }

    public final zzfxa<Void> zzg(zzcdq zzcdqVar) {
        zzfhj zza = this.zzc.zzb(zzfhy.NOTIFY_CACHE_HIT, this.zzh.zzf(zzcdqVar)).zza();
        zzfwq.zzr(zza, new zzdbx(this), this.zzj);
        return zza;
    }

    public final zzfxa<T> zzh(zzfxa<zzfdz> zzfxaVar) {
        zzfhv zzf = this.zzc.zzb(zzfhy.RENDERER, zzfxaVar).zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzdbt
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                zzfdz zzfdzVar = (zzfdz) obj;
                zzdby.this.zzd(zzfdzVar);
                return zzfdzVar;
            }
        }).zzf(this.zze);
        zzfhv zzfhvVar = zzf;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdV)).booleanValue()) {
            zzfhvVar = zzf.zzi(((Integer) zzbgq.zzc().zzb(zzblj.zzdW)).intValue(), TimeUnit.SECONDS);
        }
        return zzfhvVar.zza();
    }

    public final zzfxa<zzfdz> zzi() {
        zzbfd zzbfdVar = this.zzb.zzd;
        if (zzbfdVar.zzx == null && zzbfdVar.zzs == null) {
            return zzj(this.zzi.zzc());
        }
        zzfie zzfieVar = this.zzc;
        return zzfho.zzc(this.zza.zzc(), zzfhy.SERVER_TRANSACTION, zzfieVar).zza();
    }

    public final zzfxa<zzfdz> zzj(zzfxa<zzcdq> zzfxaVar) {
        zzfdz zzfdzVar = this.zzg;
        if (zzfdzVar != null) {
            zzfie zzfieVar = this.zzc;
            return zzfho.zzc(zzfwq.zzi(zzfdzVar), zzfhy.SERVER_TRANSACTION, zzfieVar).zza();
        }
        zzt.zzc().zzj();
        zzfhv<I> zzb = this.zzc.zzb(zzfhy.SERVER_TRANSACTION, zzfxaVar);
        final zzeed zzeedVar = this.zzk;
        return zzb.zzf(new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdbv
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeed.this.zzb((zzcdq) obj);
            }
        }).zza();
    }

    public final void zzk(zzfdz zzfdzVar) {
        this.zzg = zzfdzVar;
    }
}
