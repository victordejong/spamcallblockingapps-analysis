package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbge.class */
public final class zzbge extends zzbgn<zzbhg> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzbxh zzc;
    public final /* synthetic */ zzbgm zzd;

    public zzbge(zzbgm zzbgmVar, Context context, String str, zzbxh zzbxhVar) {
        this.zzd = zzbgmVar;
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhg zza() {
        zzbgm.zzs(this.zza, "native_ad");
        return new zzbjz();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhg zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzb(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 214106000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbhg] */
    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhg zzc() throws RemoteException {
        zzccv zzccvVar;
        zzbhe zzbheVar;
        zzbfa zzbfaVar;
        zzblj.zzc(this.zza);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                IBinder zze = ((zzbhh) zzcjd.zzb(this.zza, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", zzbgd.zza)).zze(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 214106000);
                if (zze == null) {
                    zzbheVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zzbheVar = queryLocalInterface instanceof zzbhg ? (zzbhg) queryLocalInterface : new zzbhe(zze);
                }
            } catch (RemoteException | zzcjc | NullPointerException e) {
                this.zzd.zzh = zzcct.zza(this.zza);
                zzccvVar = this.zzd.zzh;
                zzccvVar.zzd(e, "ClientApiBroker.createAdLoaderBuilder");
                zzbheVar = null;
            }
        } else {
            zzbfaVar = this.zzd.zzb;
            zzbheVar = zzbfaVar.zza(this.zza, this.zzb, this.zzc);
        }
        return zzbheVar;
    }
}
