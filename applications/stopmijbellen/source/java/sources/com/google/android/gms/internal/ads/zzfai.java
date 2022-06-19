package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfai.class */
public final class zzfai<R extends zzdea<AdT>, AdT extends zzdav> implements zzfbc<R, AdT> {
    private final zzfbc<R, AdT> zza;
    private final zzfbc<R, zzfan<R, AdT>> zzb;
    private final zzfgj<R, AdT> zzc;
    private final String zzd;
    @GuardedBy("this")
    private R zze;
    private final Executor zzf;

    public zzfai(zzfbc<R, AdT> zzfbcVar, zzfbc<R, zzfan<R, AdT>> zzfbcVar2, zzfgj<R, AdT> zzfgjVar, String str, Executor executor) {
        this.zza = zzfbcVar;
        this.zzb = zzfbcVar2;
        this.zzc = zzfgjVar;
        this.zzd = str;
        this.zzf = executor;
    }

    private final zzfxa<AdT> zzg(zzffw<R, AdT> zzffwVar, zzfbd zzfbdVar) {
        R r = zzffwVar.zza;
        this.zze = r;
        if (zzffwVar.zzc != null) {
            if (r.zzf() != null) {
                zzffwVar.zzc.zzo().zzbT(zzffwVar.zza.zzf());
            }
            return zzfwq.zzi(zzffwVar.zzc);
        }
        r.zzb().zzk(zzffwVar.zzb);
        return ((zzfas) this.zza).zzb(zzfbdVar, null, zzffwVar.zza);
    }

    /* renamed from: zza */
    public final R zzd() {
        R r;
        synchronized (this) {
            r = this.zze;
        }
        return r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzfxa zzb(zzfbd zzfbdVar, zzfah zzfahVar, zzfbb zzfbbVar, zzdea zzdeaVar, zzfan zzfanVar) throws Exception {
        zzfbd zzfbdVar2 = zzfbdVar;
        if (zzfanVar != null) {
            zzfah zzfahVar2 = new zzfah(zzfahVar.zza, zzfahVar.zzb, zzfahVar.zzc, zzfahVar.zzd, zzfahVar.zze, zzfahVar.zzf, zzfanVar.zza);
            if (zzfanVar.zzc != null) {
                this.zze = null;
                this.zzc.zze(zzfahVar2);
                return zzg(zzfanVar.zzc, zzfbdVar);
            }
            zzfxa<zzfgg<R, AdT>> zza = this.zzc.zza(zzfahVar2);
            if (zza != null) {
                this.zze = null;
                return zzfwq.zzn(zza, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfae
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        return zzfai.this.zze((zzfgg) obj);
                    }
                }, this.zzf);
            }
            this.zzc.zze(zzfahVar2);
            zzfbdVar2 = new zzfbd(zzfbdVar.zzb, zzfanVar.zzb);
        }
        zzfxa zzb = ((zzfas) this.zza).zzb(zzfbdVar2, zzfbbVar, zzdeaVar);
        this.zze = zzdeaVar;
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ zzfxa zzc(zzfbd zzfbdVar, zzfbb zzfbbVar, Object obj) {
        return zzf(zzfbdVar, zzfbbVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzfxa zze(zzfgg zzfggVar) throws Exception {
        Object obj;
        if (zzfggVar == null || zzfggVar.zza == null || (obj = zzfggVar.zzb) == null) {
            throw new zzecd(1, "Empty prefetch");
        }
        zzfah zzfahVar = (zzfah) obj;
        zzbbl zza = zzbbr.zza();
        zzbbj zza2 = zzbbk.zza();
        zza2.zzd(2);
        zza2.zzb(zzbbo.zzd());
        zza.zza(zza2);
        zzfggVar.zza.zza.zzb().zzc().zzi(zza.zzah());
        return zzg(zzfggVar.zza, zzfahVar.zzb);
    }

    public final zzfxa<AdT> zzf(final zzfbd zzfbdVar, final zzfbb<R> zzfbbVar, R r) {
        synchronized (this) {
            zzddz<R> zza = zzfbbVar.zza(zzfbdVar.zzb);
            zza.zza(new zzfaj(this.zzd));
            final R zzh = zza.zzh();
            zzh.zzg();
            zzh.zzg();
            zzbfd zzbfdVar = zzh.zzg().zzd;
            if (zzbfdVar.zzs == null && zzbfdVar.zzx == null) {
                zzfef zzg = zzh.zzg();
                final zzfah zzfahVar = new zzfah(zzfbbVar, zzfbdVar, zzg.zzd, zzg.zzf, this.zzf, zzg.zzj, null);
                return zzfwq.zzn(zzfwh.zzw(((zzfao) this.zzb).zzb(zzfbdVar, zzfbbVar, zzh)), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfaf
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        return zzfai.this.zzb(zzfbdVar, zzfahVar, zzfbbVar, zzh, (zzfan) obj);
                    }
                }, this.zzf);
            }
            this.zze = zzh;
            return ((zzfas) this.zza).zzb(zzfbdVar, zzfbbVar, zzh);
        }
    }
}
