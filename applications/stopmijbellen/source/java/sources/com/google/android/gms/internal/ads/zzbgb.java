package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgb.class */
public final class zzbgb extends zzbgn<zzbhk> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbfi zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzbgm zzd;

    public zzbgb(zzbgm zzbgmVar, Context context, zzbfi zzbfiVar, String str) {
        this.zzd = zzbgmVar;
        this.zza = context;
        this.zzb = zzbfiVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zza() {
        zzbgm.zzs(this.zza, AppLovinEventTypes.USER_EXECUTED_SEARCH);
        return new zzbkb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zzb(zzbhu zzbhuVar) throws RemoteException {
        return zzbhuVar.zzf(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbgn
    public final /* bridge */ /* synthetic */ zzbhk zzc() throws RemoteException {
        zzbfc zzbfcVar;
        zzbfcVar = this.zzd.zza;
        return zzbfcVar.zza(this.zza, this.zzb, this.zzc, null, 3);
    }
}
