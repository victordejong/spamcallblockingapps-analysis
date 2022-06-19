package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgl.class */
public final class zzbgl extends zzbgn<zzcez> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzbxh zzc;
    public final /* synthetic */ zzbgm zzd;

    public zzbgl(zzbgm zzbgmVar, Context context, String str, zzbxh zzbxhVar) {
        this.zzd = zzbgmVar;
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcez zza() {
        zzbgm.zzs(this.zza, "rewarded");
        return new zzbkh();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcez zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzn(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzcez zzc() throws RemoteException {
        return zzcfl.zza(this.zza, this.zzb, this.zzc);
    }
}
