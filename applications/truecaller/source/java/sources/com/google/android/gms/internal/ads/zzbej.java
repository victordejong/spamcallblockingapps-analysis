package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbej.class */
public final class zzbej extends zzbeq<zzbge> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbep zzb;

    public zzbej(zzbep zzbepVar, Context context) {
        this.zzb = zzbepVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbge zza() {
        zzbep.zzi(this.zza, "mobile_ads_settings");
        return new zzbif();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.internal.ads.zzbge] */
    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbge zzb() throws RemoteException {
        zzcat zzcatVar;
        zzbgc zzbgcVar;
        zzbhx zzbhxVar;
        zzbjl.zza(this.zza);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                IBinder zze = ((zzbgf) zzcgx.zza(this.zza, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", zzbei.zza)).zze(new ObjectWrapper(this.zza), 213806000);
                if (zze == null) {
                    zzbgcVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                    zzbgcVar = queryLocalInterface instanceof zzbge ? (zzbge) queryLocalInterface : new zzbgc(zze);
                }
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.zzb.zzh = zzcar.zza(this.zza);
                zzcatVar = this.zzb.zzh;
                zzcatVar.zzd(e, "ClientApiBroker.getMobileAdsSettingsManager");
                zzbgcVar = null;
            }
        } else {
            zzbhxVar = this.zzb.zzc;
            zzbgcVar = zzbhxVar.zza(this.zza);
        }
        return zzbgcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbge zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzh(new ObjectWrapper(this.zza), 213806000);
    }
}
