package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbed.class */
public final class zzbed extends zzbeq<zzbfn> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbdl zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzbvg zzd;
    public final /* synthetic */ zzbep zze;

    public zzbed(zzbep zzbepVar, Context context, zzbdl zzbdlVar, String str, zzbvg zzbvgVar) {
        this.zze = zzbepVar;
        this.zza = context;
        this.zzb = zzbdlVar;
        this.zzc = str;
        this.zzd = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zza() {
        zzbep.zzi(this.zza, "app_open");
        return new zzbid();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zzb() throws RemoteException {
        zzbdf zzbdfVar;
        zzbdfVar = this.zze.zza;
        return zzbdfVar.zza(this.zza, this.zzb, this.zzc, this.zzd, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbfn zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzl(new ObjectWrapper(this.zza), this.zzb, this.zzc, this.zzd, 213806000);
    }
}
