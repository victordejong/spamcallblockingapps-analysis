package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbel.class */
public final class zzbel extends zzbeq<zzbml> {
    public final /* synthetic */ FrameLayout zza;
    public final /* synthetic */ FrameLayout zzb;
    public final /* synthetic */ Context zzc;
    public final /* synthetic */ zzbep zzd;

    public zzbel(zzbep zzbepVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzd = zzbepVar;
        this.zza = frameLayout;
        this.zzb = frameLayout2;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbml zza() {
        zzbep.zzi(this.zzc, "native_ad_view_delegate");
        return new zzbig();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbml zzb() throws RemoteException {
        zzcat zzcatVar;
        zzbml zzbmlVar;
        zzbog zzbogVar;
        zzbjl.zza(this.zzc);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                zzbmlVar = zzbmk.zzby(((zzbmo) zzcgx.zza(this.zzc, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", zzbek.zza)).zze(new ObjectWrapper(this.zzc), new ObjectWrapper(this.zza), new ObjectWrapper(this.zzb), 213806000));
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.zzd.zzh = zzcar.zza(this.zzc);
                zzcatVar = this.zzd.zzh;
                zzcatVar.zzd(e, "ClientApiBroker.createNativeAdViewDelegate");
                zzbmlVar = null;
            }
        } else {
            zzbogVar = this.zzd.zzd;
            zzbmlVar = zzbogVar.zza(this.zzc, this.zza, this.zzb);
        }
        return zzbmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbml zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zze(new ObjectWrapper(this.zza), new ObjectWrapper(this.zzb));
    }
}
