package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgg.class */
public final class zzbgg extends zzbgn<zzbib> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbgm zzb;

    public zzbgg(zzbgm zzbgmVar, Context context) {
        this.zzb = zzbgmVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbib zza() {
        zzbgm.zzs(this.zza, "mobile_ads_settings");
        return new zzbkd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbib zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzg(ObjectWrapper.wrap(this.zza), 214106000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbib] */
    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbib zzc() throws RemoteException {
        zzccv zzccvVar;
        zzbhz zzbhzVar;
        zzbjv zzbjvVar;
        zzblj.zzc(this.zza);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                IBinder zze = ((zzbic) zzcjd.zzb(this.zza, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", zzbgf.zza)).zze(ObjectWrapper.wrap(this.zza), 214106000);
                if (zze == null) {
                    zzbhzVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                    zzbhzVar = queryLocalInterface instanceof zzbib ? (zzbib) queryLocalInterface : new zzbhz(zze);
                }
            } catch (RemoteException | zzcjc | NullPointerException e) {
                this.zzb.zzh = zzcct.zza(this.zza);
                zzccvVar = this.zzb.zzh;
                zzccvVar.zzd(e, "ClientApiBroker.getMobileAdsSettingsManager");
                zzbhzVar = null;
            }
        } else {
            zzbjvVar = this.zzb.zzc;
            zzbhzVar = zzbjvVar.zza(this.zza);
        }
        return zzbhzVar;
    }
}
