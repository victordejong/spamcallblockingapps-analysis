package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbec.class */
public final class zzbec extends zzbeq<zzbfn> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbdl zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzbvg zzd;
    public final /* synthetic */ zzbep zze;

    public zzbec(zzbep zzbepVar, Context context, zzbdl zzbdlVar, String str, zzbvg zzbvgVar) {
        this.zze = zzbepVar;
        this.zza = context;
        this.zzb = zzbdlVar;
        this.zzc = str;
        this.zzd = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zza() {
        zzbep.zzi(this.zza, "banner");
        return new zzbid();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zzb() throws RemoteException {
        zzbdf zzbdfVar;
        zzbdfVar = this.zze.zza;
        return zzbdfVar.zza(this.zza, this.zzb, this.zzc, this.zzd, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbfn zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzb(new ObjectWrapper(this.zza), this.zzb, this.zzc, this.zzd, 213806000);
    }
}
