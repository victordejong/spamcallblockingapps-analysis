package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbab.class */
public final class zzbab {
    private zzbhk zza;
    private final Context zzb;
    private final String zzc;
    private final zzbjg zzd;
    @AppOpenAd.AppOpenAdOrientation
    private final int zze;
    private final AppOpenAd.AppOpenAdLoadCallback zzf;
    private final zzbxe zzg = new zzbxe();
    private final zzbfh zzh = zzbfh.zza;

    public zzbab(Context context, String str, zzbjg zzbjgVar, @AppOpenAd.AppOpenAdOrientation int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.zzb = context;
        this.zzc = str;
        this.zzd = zzbjgVar;
        this.zze = i;
        this.zzf = appOpenAdLoadCallback;
    }

    public final void zza() {
        try {
            this.zza = zzbgo.zza().zzd(this.zzb, zzbfi.zzb(), this.zzc, this.zzg);
            zzbfo zzbfoVar = new zzbfo(this.zze);
            zzbhk zzbhkVar = this.zza;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzI(zzbfoVar);
            this.zza.zzH(new zzazo(this.zzf, this.zzc));
            this.zza.zzaa(this.zzh.zza(this.zzb, this.zzd));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
