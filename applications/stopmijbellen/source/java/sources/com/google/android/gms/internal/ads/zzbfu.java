package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfu.class */
public final class zzbfu extends zzbgn<zzcht> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbxh zzb;

    public zzbfu(zzbgm zzbgmVar, Context context, zzbxh zzbxhVar) {
        this.zza = context;
        this.zzb = zzbxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcht zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcht zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzo(ObjectWrapper.wrap(this.zza), this.zzb, 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcht zzc() throws RemoteException {
        zzcht zzchtVar;
        try {
            zzchtVar = ((zzchw) zzcjd.zzb(this.zza, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", zzbft.zza)).zze(ObjectWrapper.wrap(this.zza), this.zzb, 214106000);
        } catch (RemoteException | zzcjc | NullPointerException e) {
            zzchtVar = null;
        }
        return zzchtVar;
    }
}
