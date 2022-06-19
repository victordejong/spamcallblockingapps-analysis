package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfs.class */
public final class zzbfs extends zzbgn<zzcbs> {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ zzbgm zzb;

    public zzbfs(zzbgm zzbgmVar, Activity activity) {
        this.zzb = zzbgmVar;
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbs zza() {
        zzbgm.zzs(this.zza, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbs zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzl(ObjectWrapper.wrap(this.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbs zzc() throws RemoteException {
        zzccv zzccvVar;
        zzcbs zzcbsVar;
        zzcbp zzcbpVar;
        zzblj.zzc(this.zza);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                zzcbsVar = zzcbr.zzF(((zzcbv) zzcjd.zzb(this.zza, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", zzbfr.zza)).zze(ObjectWrapper.wrap(this.zza)));
            } catch (RemoteException | zzcjc | NullPointerException e) {
                this.zzb.zzh = zzcct.zza(this.zza.getApplicationContext());
                zzccvVar = this.zzb.zzh;
                zzccvVar.zzd(e, "ClientApiBroker.createAdOverlay");
                zzcbsVar = null;
            }
        } else {
            zzcbpVar = this.zzb.zzf;
            zzcbsVar = zzcbpVar.zza(this.zza);
        }
        return zzcbsVar;
    }
}
