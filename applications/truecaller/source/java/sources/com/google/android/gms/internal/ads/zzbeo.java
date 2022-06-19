package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeo.class */
public final class zzbeo extends zzbeq<zzccs> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzbvg zzc;
    public final /* synthetic */ zzbep zzd;

    public zzbeo(zzbep zzbepVar, Context context, String str, zzbvg zzbvgVar) {
        this.zzd = zzbepVar;
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzccs zza() {
        zzbep.zzi(this.zza, "rewarded");
        return new zzbij();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzccs zzb() throws RemoteException {
        return zzcde.zza(this.zza, this.zzb, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzccs zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzk(new ObjectWrapper(this.zza), this.zzb, this.zzc, 213806000);
    }
}
