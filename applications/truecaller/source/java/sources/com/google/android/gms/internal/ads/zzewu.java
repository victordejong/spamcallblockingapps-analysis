package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewu.class */
public final class zzewu<R extends zzdal<AdT>, AdT extends zzcxg> implements zzexo<R, AdT> {
    private final zzexo<R, AdT> zza;
    private final zzexo<R, zzewz<R, AdT>> zzb;
    private final zzfcy<R, AdT> zzc;
    private final String zzd;
    private R zze;
    private final Executor zzf;

    public zzewu(zzexo<R, AdT> zzexoVar, zzexo<R, zzewz<R, AdT>> zzexoVar2, zzfcy<R, AdT> zzfcyVar, String str, Executor executor) {
        this.zza = zzexoVar;
        this.zzb = zzexoVar2;
        this.zzc = zzfcyVar;
        this.zzd = str;
        this.zzf = executor;
    }

    private final zzfsm<AdT> zzg(zzfcl<R, AdT> zzfclVar, zzexp zzexpVar) {
        R r = zzfclVar.zza;
        this.zze = r;
        if (zzfclVar.zzc != null) {
            if (r.zzQ() != null) {
                zzfclVar.zzc.zzn().zzq(zzfclVar.zza.zzQ());
            }
            return zzfsd.zza(zzfclVar.zzc);
        }
        r.zzP().zzi(zzfclVar.zzb);
        return ((zzexe) this.zza).zzb(zzexpVar, null, zzfclVar.zza);
    }

    /* renamed from: zza */
    public final R zzd() {
        R r;
        synchronized (this) {
            r = this.zze;
        }
        return r;
    }

    public final zzfsm<AdT> zzb(zzexp zzexpVar, zzexn<R> zzexnVar, R r) {
        synchronized (this) {
            zzdak<R> zza = zzexnVar.zza(zzexpVar.zzb);
            zza.zzg(new zzewv(this.zzd));
            R zzf = zza.zzf();
            zzf.zzN();
            zzf.zzN();
            zzbdg zzbdgVar = zzf.zzN().zzd;
            if (zzbdgVar.zzs == null && zzbdgVar.zzx == null) {
                zzfar zzN = zzf.zzN();
                return zzfsd.zzi(zzfru.zzw((zzfsm) ((zzexa) this.zzb).zza(zzexpVar, zzexnVar, zzf)), new zzfrk(this, zzexpVar, new zzewt(zzexnVar, zzexpVar, zzN.zzd, zzN.zzf, this.zzf, zzN.zzj, null), zzexnVar, zzf) { // from class: com.google.android.gms.internal.ads.zzewq
                    private final zzewu zza;
                    private final zzexp zzb;
                    private final zzewt zzc;
                    private final zzexn zzd;
                    private final zzdal zze;

                    {
                        this.zza = this;
                        this.zzb = zzexpVar;
                        this.zzc = zzewtVar;
                        this.zzd = zzexnVar;
                        this.zze = zzf;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        return this.zza.zzf(this.zzb, this.zzc, this.zzd, this.zze, (zzewz) obj);
                    }
                }, this.zzf);
            }
            this.zze = zzf;
            return ((zzexe) this.zza).zzb(zzexpVar, zzexnVar, zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ zzfsm zzc(zzexp zzexpVar, zzexn zzexnVar, Object obj) {
        return zzb(zzexpVar, zzexnVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzfsm zze(zzfcv zzfcvVar) throws Exception {
        Object obj;
        if (zzfcvVar == null || zzfcvVar.zza == null || (obj = zzfcvVar.zzb) == null) {
            throw new zzdym(1, "Empty prefetch");
        }
        zzewt zzewtVar = (zzewt) obj;
        zzazo zza = zzazu.zza();
        zzazm zza2 = zzazn.zza();
        zza2.zzd(2);
        zza2.zza(zzazr.zzc());
        zza.zza(zza2);
        zzfcvVar.zza.zza.zzP().zze().zze(zza.zzah());
        return zzg(zzfcvVar.zza, zzewtVar.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzfsm zzf(zzexp zzexpVar, zzewt zzewtVar, zzexn zzexnVar, zzdal zzdalVar, zzewz zzewzVar) throws Exception {
        zzexp zzexpVar2 = zzexpVar;
        if (zzewzVar != null) {
            zzewt zzewtVar2 = new zzewt(zzewtVar.zza, zzewtVar.zzb, zzewtVar.zzc, zzewtVar.zzd, zzewtVar.zze, zzewtVar.zzf, zzewzVar.zza);
            if (zzewzVar.zzc != null) {
                this.zze = null;
                this.zzc.zzc(zzewtVar2);
                return zzg(zzewzVar.zzc, zzexpVar);
            }
            zzfsm<zzfcv<R, AdT>> zzd = this.zzc.zzd(zzewtVar2);
            if (zzd != null) {
                this.zze = null;
                return zzfsd.zzi(zzd, new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzewr
                    private final zzewu zza;

                    {
                        this.zza = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        return this.zza.zze((zzfcv) obj);
                    }
                }, this.zzf);
            }
            this.zzc.zzc(zzewtVar2);
            zzexpVar2 = new zzexp(zzexpVar.zzb, zzewzVar.zzb);
        }
        zzfsm zzb = ((zzexe) this.zza).zzb(zzexpVar2, zzexnVar, zzdalVar);
        this.zze = zzdalVar;
        return zzb;
    }
}
