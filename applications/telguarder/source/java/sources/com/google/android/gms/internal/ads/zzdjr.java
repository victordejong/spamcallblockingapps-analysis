package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzug;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjr.class */
public final class zzdjr<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, AdT> {
    private final Executor executor;
    private final zzdkn<R, AdT> zzhfm;
    private final zzdkn<R, zzdka<AdT>> zzhgz;
    private final zzdpu<AdT> zzhha;
    private R zzhhb;

    public zzdjr(zzdkn<R, AdT> zzdknVar, zzdkn<R, zzdka<AdT>> zzdknVar2, zzdpu<AdT> zzdpuVar, Executor executor) {
        this.zzhfm = zzdknVar;
        this.zzhgz = zzdknVar2;
        this.zzhha = zzdpuVar;
        this.executor = executor;
    }

    private final zzdzw<AdT> zza(zzdpm<AdT> zzdpmVar, zzdko zzdkoVar, zzdkp<R> zzdkpVar) {
        zzbqy<R> zzc = zzdkpVar.zzc(zzdkoVar.zzhht);
        if (zzdpmVar.zzhoi != null) {
            R zzagm = zzc.zzagm();
            if (zzagm.zzahh() != null) {
                zzdpmVar.zzhoi.zzaks().zzb(zzagm.zzahh());
            }
            return zzdzk.zzag(zzdpmVar.zzhoi);
        }
        zzc.zza(zzdpmVar.zzeyz);
        zzdzw<AdT> zza = this.zzhfm.zza(zzdkoVar, new zzdkp(zzc) { // from class: com.google.android.gms.internal.ads.zzdjt
            private final zzbqy zzhhd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhhd = zzc;
            }

            @Override // com.google.android.gms.internal.ads.zzdkp
            public final zzbqy zzc(zzdkm zzdkmVar) {
                return this.zzhhd;
            }
        });
        this.zzhhb = this.zzhfm.zzaun();
        return zza;
    }

    /* renamed from: zzauo */
    public final R zzaun() {
        R r;
        synchronized (this) {
            r = this.zzhhb;
        }
        return r;
    }

    public final /* synthetic */ zzdzw zza(zzdko zzdkoVar, zzdju zzdjuVar, zzdkp zzdkpVar, zzdka zzdkaVar) throws Exception {
        zzdko zzdkoVar2 = zzdkoVar;
        if (zzdkaVar != null) {
            zzdju zzdjuVar2 = new zzdju(zzdjuVar.zzhhe, zzdjuVar.zzhhf, zzdjuVar.zzdud, zzdjuVar.zzbut, zzdjuVar.executor, zzdjuVar.zzhba, zzdkaVar.zzhhg);
            if (zzdkaVar.zzhhn != null) {
                this.zzhhb = null;
                this.zzhha.zzb(zzdjuVar2);
                return zza(zzdkaVar.zzhhn, zzdkoVar, zzdkpVar);
            }
            zzdzw<zzdpy<AdT>> zzc = this.zzhha.zzc(zzdjuVar2);
            if (zzc != null) {
                this.zzhhb = (R) zzdkpVar.zzc(zzdkoVar.zzhht).zzagm();
                return zzdzk.zzb(zzc, new zzdyu(this, zzdkpVar) { // from class: com.google.android.gms.internal.ads.zzdjs
                    private final zzdjr zzhgv;
                    private final zzdkp zzhhc;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhgv = this;
                        this.zzhhc = zzdkpVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdyu
                    public final zzdzw zzf(Object obj) {
                        return this.zzhgv.zza(this.zzhhc, (zzdpy) obj);
                    }
                }, this.executor);
            }
            this.zzhha.zzb(zzdjuVar2);
            zzdkoVar2 = new zzdko(zzdkoVar.zzhht, zzdkaVar.zzgoq);
        }
        zzdzw<AdT> zza = this.zzhfm.zza(zzdkoVar2, zzdkpVar);
        this.zzhhb = this.zzhfm.zzaun();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<AdT> zza(zzdko zzdkoVar, zzdkp<R> zzdkpVar) {
        zzdzf zzb;
        synchronized (this) {
            zzdnp zzahg = zzdkpVar.zzc(zzdkoVar.zzhht).zzagm().zzahg();
            zzb = zzdzf.zzg(this.zzhgz.zza(zzdkoVar, zzdkpVar)).zzb(new zzdyu(this, zzdkoVar, new zzdju(zzdkpVar, zzdkoVar, zzahg.zzhkw, zzahg.zzhkx, this.executor, zzahg.zzhla, null), zzdkpVar) { // from class: com.google.android.gms.internal.ads.zzdjq
                private final zzdjr zzhgv;
                private final zzdko zzhgw;
                private final zzdju zzhgx;
                private final zzdkp zzhgy;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhgv = this;
                    this.zzhgw = zzdkoVar;
                    this.zzhgx = zzdjuVar;
                    this.zzhgy = zzdkpVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdyu
                public final zzdzw zzf(Object obj) {
                    return this.zzhgv.zza(this.zzhgw, this.zzhgx, this.zzhgy, (zzdka) obj);
                }
            }, this.executor);
        }
        return zzb;
    }

    public final /* synthetic */ zzdzw zza(zzdkp zzdkpVar, zzdpy zzdpyVar) throws Exception {
        if (zzdpyVar == null || zzdpyVar.zzhhn == null || zzdpyVar.zzhoy == null) {
            throw new zzcmb(zzdom.INTERNAL_ERROR, "Empty prefetch");
        }
        zzdju zzdjuVar = (zzdju) zzdpyVar.zzhoy;
        zzdpyVar.zzhhn.zzhoh.zzalc().zze((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC2619zzb.IN_MEMORY).zza(zzug.zzb.zzd.zznp())).zzbiw()));
        return zza(zzdpyVar.zzhhn, zzdjuVar.zzhhf, zzdkpVar);
    }
}
