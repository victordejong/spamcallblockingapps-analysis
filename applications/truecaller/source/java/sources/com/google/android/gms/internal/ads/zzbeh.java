package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeh.class */
public final class zzbeh extends zzbeq<zzbfj> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzbvg zzc;
    public final /* synthetic */ zzbep zzd;

    public zzbeh(zzbep zzbepVar, Context context, String str, zzbvg zzbvgVar) {
        this.zzd = zzbepVar;
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfj zza() {
        zzbep.zzi(this.zza, "native_ad");
        return new zzbib();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.internal.ads.zzbfj] */
    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbfj zzb() throws RemoteException {
        zzcat zzcatVar;
        zzbfh zzbfhVar;
        zzbdd zzbddVar;
        zzbjl.zza(this.zza);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                IBinder zze = ((zzbfk) zzcgx.zza(this.zza, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", zzbeg.zza)).zze(new ObjectWrapper(this.zza), this.zzb, this.zzc, 213806000);
                if (zze == null) {
                    zzbfhVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zzbfhVar = queryLocalInterface instanceof zzbfj ? (zzbfj) queryLocalInterface : new zzbfh(zze);
                }
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.zzd.zzh = zzcar.zza(this.zza);
                zzcatVar = this.zzd.zzh;
                zzcatVar.zzd(e, "ClientApiBroker.createAdLoaderBuilder");
                zzbfhVar = null;
            }
        } else {
            zzbddVar = this.zzd.zzb;
            zzbfhVar = zzbddVar.zza(this.zza, this.zzb, this.zzc);
        }
        return zzbfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbfj zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzd(new ObjectWrapper(this.zza), this.zzb, this.zzc, 213806000);
    }
}
