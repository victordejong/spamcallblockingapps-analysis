package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmc.class */
public final class zzdmc implements zzczc<zzchb> {
    private final Executor zzfsj;
    private final zzdnk zzfyy;
    private final zzdnr zzgxu;
    private final zzbgc zzgzs;
    private final Context zzhfk;
    private final zzdkn<zzchi, zzchb> zzhfm;
    private zzdzw<zzchb> zzhgj;
    private final zzdlh zzhii;

    public zzdmc(Context context, Executor executor, zzbgc zzbgcVar, zzdkn<zzchi, zzchb> zzdknVar, zzdlh zzdlhVar, zzdnr zzdnrVar, zzdnk zzdnkVar) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgcVar;
        this.zzhfm = zzdknVar;
        this.zzhii = zzdlhVar;
        this.zzgxu = zzdnrVar;
        this.zzfyy = zzdnkVar;
    }

    /* renamed from: zzd */
    public final zzchh zze(zzdkm zzdkmVar) {
        zzdmi zzdmiVar = (zzdmi) zzdkmVar;
        return this.zzgzs.zzafp().zzf(new zzbqx.zza().zzcf(this.zzhfk).zza(zzdmiVar.zzfwy).zzfs(zzdmiVar.zzhij).zza(this.zzfyy).zzalo()).zzf(new zzbwg.zza().zzaml());
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<zzchb> zzdzwVar = this.zzhgj;
        return zzdzwVar != null && !zzdzwVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvlVar, String str, zzczb zzczbVar, zzcze<? super zzchb> zzczeVar) throws RemoteException {
        zzava zzavaVar = new zzava(zzvlVar, str);
        if (zzczbVar instanceof zzdmd) {
            zzdmd zzdmdVar = (zzdmd) zzczbVar;
        }
        if (zzavaVar.zzbut == null) {
            zzd.zzev("Ad unit ID should not be null for rewarded video ad.");
            this.zzfsj.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdmf
                private final zzdmc zzhik;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhik = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzhik.zzauv();
                }
            });
            return false;
        }
        zzdzw<zzchb> zzdzwVar = this.zzhgj;
        if (zzdzwVar != null && !zzdzwVar.isDone()) {
            return false;
        }
        zzdod.zze(this.zzhfk, zzavaVar.zzdud.zzchq);
        zzdnp zzavh = this.zzgxu.zzgs(zzavaVar.zzbut).zzg(zzvs.zzqf()).zzh(zzavaVar.zzdud).zzavh();
        zzdmi zzdmiVar = new zzdmi(null);
        zzdmiVar.zzfwy = zzavh;
        zzdmiVar.zzhij = null;
        zzdzw<zzchb> zza = this.zzhfm.zza(new zzdko(zzdmiVar), new zzdkp(this) { // from class: com.google.android.gms.internal.ads.zzdme
            private final zzdmc zzhik;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhik = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdkp
            public final zzbqy zzc(zzdkm zzdkmVar) {
                return this.zzhik.zze(zzdkmVar);
            }
        });
        this.zzhgj = zza;
        zzdzk.zza(zza, new zzdmh(this, zzczeVar, zzdmiVar), this.zzfsj);
        return true;
    }

    public final /* synthetic */ void zzauv() {
        this.zzhii.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    public final void zzec(int i) {
        this.zzgxu.zzavg().zzed(i);
    }
}
