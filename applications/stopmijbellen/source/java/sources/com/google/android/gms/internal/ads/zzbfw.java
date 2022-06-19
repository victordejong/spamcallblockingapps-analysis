package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfw.class */
public final class zzbfw extends zzbgn<zzcbg> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbxh zzb;

    public zzbfw(zzbgm zzbgmVar, Context context, zzbxh zzbxhVar) {
        this.zza = context;
        this.zzb = zzbxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbg zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbg zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzk(ObjectWrapper.wrap(this.zza), this.zzb, 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcbg zzc() throws RemoteException {
        zzcbg zzcbgVar;
        try {
            zzcbgVar = ((zzcbj) zzcjd.zzb(this.zza, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", zzbfv.zza)).zze(ObjectWrapper.wrap(this.zza), this.zzb, 214106000);
        } catch (RemoteException | zzcjc | NullPointerException e) {
            zzcbgVar = null;
        }
        return zzcbgVar;
    }
}
