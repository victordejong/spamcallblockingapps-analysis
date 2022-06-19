package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaye.class */
public final class zzaye {
    private zzbfn zza;
    private final Context zzb;
    private final String zzc;
    private final zzbhj zzd;
    @AppOpenAd.AppOpenAdOrientation
    private final int zze;
    private final AppOpenAd.AppOpenAdLoadCallback zzf;
    private final zzbvd zzg = new zzbvd();
    private final zzbdk zzh = zzbdk.zza;

    public zzaye(Context context, String str, zzbhj zzbhjVar, @AppOpenAd.AppOpenAdOrientation int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.zzb = context;
        this.zzc = str;
        this.zzd = zzbhjVar;
        this.zze = i;
        this.zzf = appOpenAdLoadCallback;
    }

    public final void zza() {
        try {
            this.zza = zzber.zzb().zzj(this.zzb, zzbdl.zzd(), this.zzc, this.zzg);
            zzbdr zzbdrVar = new zzbdr(this.zze);
            zzbfn zzbfnVar = this.zza;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzO(zzbdrVar);
            this.zza.zzP(new zzaxr(this.zzf, this.zzc));
            this.zza.zzl(this.zzh.zza(this.zzb, this.zzd));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }
}
