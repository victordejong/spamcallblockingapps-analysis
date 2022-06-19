package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbga.class */
public final class zzbga extends zzbgn<zzbhk> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbfi zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzbxh zzd;
    public final /* synthetic */ zzbgm zze;

    public zzbga(zzbgm zzbgmVar, Context context, zzbfi zzbfiVar, String str, zzbxh zzbxhVar) {
        this.zze = zzbgmVar;
        this.zza = context;
        this.zzb = zzbfiVar;
        this.zzc = str;
        this.zzd = zzbxhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zza() {
        zzbgm.zzs(this.zza, "app_open");
        return new zzbkb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzc(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, this.zzd, 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zzc() throws RemoteException {
        zzbfc zzbfcVar;
        zzbfcVar = this.zze.zza;
        return zzbfcVar.zza(this.zza, this.zzb, this.zzc, this.zzd, 4);
    }
}
