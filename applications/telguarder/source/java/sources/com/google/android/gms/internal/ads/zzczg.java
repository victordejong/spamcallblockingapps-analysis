package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczg.class */
public final class zzczg implements zzczc<zzbnt> {
    private final zzbgc zzguy;
    private final Context zzgxt;
    private final zzdnr zzgxu;
    private final zzcza zzgze;
    private zzboe zzgzf;

    public zzczg(zzbgc zzbgcVar, Context context, zzcza zzczaVar, zzdnr zzdnrVar) {
        this.zzguy = zzbgcVar;
        this.zzgxt = context;
        this.zzgze = zzczaVar;
        this.zzgxu = zzdnrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzboe zzboeVar = this.zzgzf;
        return zzboeVar != null && zzboeVar.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvlVar, String str, zzczb zzczbVar, zzcze<? super zzbnt> zzczeVar) throws RemoteException {
        zzr.zzkr();
        if (zzj.zzaz(this.zzgxt) && zzvlVar.zzcia == null) {
            zzd.zzev("Failed to load the ad because app ID is missing.");
            this.zzguy.zzafa().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzczf
                private final zzczg zzgzd;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgzd = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgzd.zzast();
                }
            });
            return false;
        } else if (str == null) {
            zzd.zzev("Ad unit ID should not be null for NativeAdLoader.");
            this.zzguy.zzafa().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzczi
                private final zzczg zzgzd;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgzd = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgzd.zzass();
                }
            });
            return false;
        } else {
            zzdod.zze(this.zzgxt, zzvlVar.zzchq);
            zzcau zzagl = this.zzguy.zzafo().zza(new zzbqx.zza().zzcf(this.zzgxt).zza(this.zzgxu.zzh(zzvlVar).zzee(zzczbVar instanceof zzczd ? ((zzczd) zzczbVar).zzgzc : 1).zzavh()).zzalo()).zza(new zzbwg.zza().zzaml()).zza(this.zzgze.zzaso()).zza(new zzblu(null)).zzagl();
            this.zzguy.zzafu().ensureSize(1);
            zzboe zzboeVar = new zzboe(this.zzguy.zzafc(), this.zzguy.zzafb(), zzagl.zzagj().zzalb());
            this.zzgzf = zzboeVar;
            zzboeVar.zza(new zzczh(this, zzczeVar, zzagl));
            return true;
        }
    }

    public final /* synthetic */ void zzass() {
        this.zzgze.zzasr().zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    public final /* synthetic */ void zzast() {
        this.zzgze.zzasr().zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
    }
}
