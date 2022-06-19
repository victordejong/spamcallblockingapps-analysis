package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdz.class */
public final class zzbdz extends zzbeq<zzbze> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbvg zzb;

    public zzbdz(zzbep zzbepVar, Context context, zzbvg zzbvgVar) {
        this.zza = context;
        this.zzb = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbze zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbze zzb() throws RemoteException {
        zzbze zzbzeVar;
        try {
            zzbzeVar = ((zzbzh) zzcgx.zza(this.zza, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", zzbdy.zza)).zze(new ObjectWrapper(this.zza), this.zzb, 213806000);
        } catch (RemoteException | zzcgw | NullPointerException e) {
            zzbzeVar = null;
        }
        return zzbzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbze zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzn(new ObjectWrapper(this.zza), this.zzb, 213806000);
    }
}
