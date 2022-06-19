package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyj.class */
public final class zzcyj<T> {
    private final zzdzv zza;
    private final zzfar zzb;
    private final zzfes zzc;
    private final zzcsa zzd;
    private final zzehu<T> zze;
    private final zzdgh zzf;
    private zzfal zzg;
    private final zzeaz zzh;
    private final zzdai zzi;
    private final Executor zzj;
    private final zzeam zzk;
    private final zzeeh zzl;

    public zzcyj(zzdzv zzdzvVar, zzfar zzfarVar, zzfes zzfesVar, zzcsa zzcsaVar, zzehu<T> zzehuVar, zzdgh zzdghVar, zzfal zzfalVar, zzeaz zzeazVar, zzdai zzdaiVar, Executor executor, zzeam zzeamVar, zzeeh zzeehVar) {
        this.zza = zzdzvVar;
        this.zzb = zzfarVar;
        this.zzc = zzfesVar;
        this.zzd = zzcsaVar;
        this.zze = zzehuVar;
        this.zzf = zzdghVar;
        this.zzg = zzfalVar;
        this.zzh = zzeazVar;
        this.zzi = zzdaiVar;
        this.zzj = executor;
        this.zzk = zzeamVar;
        this.zzl = zzeehVar;
    }

    public final zzfsm<zzfal> zzb(zzfsm<zzcbj> zzfsmVar) {
        zzfal zzfalVar = this.zzg;
        if (zzfalVar == null) {
            zzt.zzi().zze();
            return this.zzc.zze(zzfem.SERVER_TRANSACTION, zzfsmVar).zzc(zzcye.zzb(this.zzk)).zzi();
        }
        zzfes zzfesVar = this.zzc;
        return zzfed.zza(zzfsd.zza(zzfalVar), zzfem.SERVER_TRANSACTION, zzfesVar).zzi();
    }

    public final zzfsm<zzfal> zzc() {
        zzbdg zzbdgVar = this.zzb.zzd;
        if (zzbdgVar.zzx == null && zzbdgVar.zzs == null) {
            return zzb(this.zzi.zzb());
        }
        zzfes zzfesVar = this.zzc;
        return zzfed.zza(this.zza.zzc(), zzfem.SERVER_TRANSACTION, zzfesVar).zzi();
    }

    public final zzfsm<T> zzd(zzfsm<zzfal> zzfsmVar) {
        zzfej zzc = this.zzc.zze(zzfem.RENDERER, zzfsmVar).zzb(new zzfdw(this) { // from class: com.google.android.gms.internal.ads.zzcyf
            private final zzcyj zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfdw
            public final Object zza(Object obj) {
                zzfal zzfalVar = (zzfal) obj;
                this.zza.zzk(zzfalVar);
                return zzfalVar;
            }
        }).zzc(this.zze);
        zzfej zzfejVar = zzc;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdO)).booleanValue()) {
            zzfejVar = zzc.zzh(((Integer) zzbet.zzc().zzc(zzbjl.zzdP)).intValue(), TimeUnit.SECONDS);
        }
        return zzfejVar.zzi();
    }

    public final zzdgh zze() {
        return this.zzf;
    }

    public final zzfsm<zzcbj> zzf(zzfcj zzfcjVar) {
        zzfdy zzi = this.zzc.zze(zzfem.GET_CACHE_KEY, this.zzi.zzb()).zzc(new zzfrk(this, zzfcjVar) { // from class: com.google.android.gms.internal.ads.zzcyg
            private final zzcyj zza;
            private final zzfcj zzb;

            {
                this.zza = this;
                this.zzb = zzfcjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzj(this.zzb, (zzcbj) obj);
            }
        }).zzi();
        zzfsd.zzp(zzi, new zzcyh(this), this.zzj);
        return zzi;
    }

    public final zzfsm<Void> zzg(zzcbj zzcbjVar) {
        zzfdy zzi = this.zzc.zze(zzfem.NOTIFY_CACHE_HIT, this.zzh.zzb(zzcbjVar)).zzi();
        zzfsd.zzp(zzi, new zzcyi(this), this.zzj);
        return zzi;
    }

    public final zzbcz zzh(Throwable th) {
        return zzfbm.zzb(th, this.zzl);
    }

    public final void zzi(zzfal zzfalVar) {
        this.zzg = zzfalVar;
    }

    public final /* synthetic */ zzfsm zzj(zzfcj zzfcjVar, zzcbj zzcbjVar) throws Exception {
        zzcbjVar.zzi = zzfcjVar;
        return this.zzh.zza(zzcbjVar);
    }

    public final /* synthetic */ zzfal zzk(zzfal zzfalVar) throws Exception {
        this.zzd.zza(zzfalVar);
        return zzfalVar;
    }
}
