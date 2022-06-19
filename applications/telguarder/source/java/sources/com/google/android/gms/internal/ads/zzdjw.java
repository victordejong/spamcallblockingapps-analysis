package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjw.class */
public final class zzdjw<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, zzdka<AdT>> {
    private final Executor executor;
    private final zzdpc zzhhi;
    private zzdzl<Void> zzhhj = new zzdkb(this);

    public zzdjw(zzdpc zzdpcVar, Executor executor) {
        this.zzhhi = zzdpcVar;
        this.executor = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<zzdka<AdT>> zza(zzdko zzdkoVar, zzdkp<R> zzdkpVar) {
        return zzdzf.zzg(new zzdkh(this.zzhhi, zzdkoVar.zzhht, zzdkpVar, this.executor).zzaus()).zzb(new zzdyu(this, zzdkoVar, zzdkpVar) { // from class: com.google.android.gms.internal.ads.zzdjz
            private final zzdko zzhgw;
            private final zzdjw zzhhl;
            private final zzdkp zzhhm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhhl = this;
                this.zzhgw = zzdkoVar;
                this.zzhhm = zzdkpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzhhl.zza(this.zzhgw, this.zzhhm, (zzdkl) obj);
            }
        }, this.executor).zza(Exception.class, new zzdjy(this), this.executor);
    }

    public final /* synthetic */ zzdzw zza(zzdko zzdkoVar, zzdkp zzdkpVar, zzdkl zzdklVar) throws Exception {
        zzdpl zzdplVar = zzdklVar.zzhhg;
        zzatq zzatqVar = zzdklVar.zzgoq;
        zzdpm<?> zza = zzdplVar != null ? this.zzhhi.zza(zzdplVar) : null;
        if (zzdplVar == null) {
            return zzdzk.zzag(null);
        }
        if (zza != null && zzatqVar != null) {
            zzdzk.zza(((zzbqv) zzdkpVar.zzc(zzdkoVar.zzhht).zzagm()).zzagj().zzc(zzatqVar), this.zzhhj, this.executor);
        }
        return zzdzk.zzag(new zzdka(zzdplVar, zzatqVar, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final /* bridge */ /* synthetic */ Object zzaun() {
        return null;
    }
}
