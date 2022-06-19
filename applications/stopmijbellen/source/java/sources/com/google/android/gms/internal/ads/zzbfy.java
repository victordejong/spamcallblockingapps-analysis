package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.p058h5.OnH5AdsEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfy.class */
public final class zzbfy extends zzbgn<zzbsr> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbxh zzb;
    public final /* synthetic */ OnH5AdsEventListener zzc;

    public zzbfy(zzbgm zzbgmVar, Context context, zzbxh zzbxhVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = context;
        this.zzb = zzbxhVar;
        this.zzc = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* synthetic */ zzbsr zza() {
        return new zzbsy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbsr zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzj(ObjectWrapper.wrap(this.zza), this.zzb, 214106000, new zzbsl(this.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbsr zzc() throws RemoteException {
        zzbsr zzbsrVar;
        try {
            zzbsrVar = ((zzbsu) zzcjd.zzb(this.zza, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", zzbfx.zza)).zze(ObjectWrapper.wrap(this.zza), this.zzb, 214106000, new zzbsl(this.zzc));
        } catch (RemoteException | zzcjc | NullPointerException e) {
            zzbsrVar = null;
        }
        return zzbsrVar;
    }
}
