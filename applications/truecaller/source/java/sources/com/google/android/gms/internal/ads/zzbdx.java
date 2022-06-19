package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdx.class */
public final class zzbdx extends zzbeq<zzcfn> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbvg zzb;

    public zzbdx(zzbep zzbepVar, Context context, zzbvg zzbvgVar) {
        this.zza = context;
        this.zzb = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzcfn zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzcfn zzb() throws RemoteException {
        zzcfn zzcfnVar;
        try {
            zzcfnVar = ((zzcfq) zzcgx.zza(this.zza, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", zzbdw.zza)).zze(new ObjectWrapper(this.zza), this.zzb, 213806000);
        } catch (RemoteException | zzcgw | NullPointerException e) {
            zzcfnVar = null;
        }
        return zzcfnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzcfn zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzm(new ObjectWrapper(this.zza), this.zzb, 213806000);
    }
}
