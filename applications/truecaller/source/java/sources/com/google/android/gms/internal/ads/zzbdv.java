package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdv.class */
public final class zzbdv extends zzbeq<zzbzq> {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ zzbep zzb;

    public zzbdv(zzbep zzbepVar, Activity activity) {
        this.zzb = zzbepVar;
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbzq zza() {
        zzbep.zzi(this.zza, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbzq zzb() throws RemoteException {
        zzcat zzcatVar;
        zzbzq zzbzqVar;
        zzbzn zzbznVar;
        zzbjl.zza(this.zza);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                zzbzqVar = zzbzp.zzF(((zzbzt) zzcgx.zza(this.zza, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", zzbdu.zza)).zze(new ObjectWrapper(this.zza)));
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.zzb.zzh = zzcar.zza(this.zza.getApplicationContext());
                zzcatVar = this.zzb.zzh;
                zzcatVar.zzd(e, "ClientApiBroker.createAdOverlay");
                zzbzqVar = null;
            }
        } else {
            zzbznVar = this.zzb.zzf;
            zzbzqVar = zzbznVar.zza(this.zza);
        }
        return zzbzqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbzq zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzg(new ObjectWrapper(this.zza));
    }
}
