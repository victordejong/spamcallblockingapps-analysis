package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzben.class */
public final class zzben extends zzbeq<zzbmr> {
    public final /* synthetic */ View zza;
    public final /* synthetic */ HashMap zzb;
    public final /* synthetic */ HashMap zzc;
    public final /* synthetic */ zzbep zzd;

    public zzben(zzbep zzbepVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.zzd = zzbepVar;
        this.zza = view;
        this.zzb = hashMap;
        this.zzc = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbmr zza() {
        zzbep.zzi(this.zza.getContext(), "native_ad_view_holder_delegate");
        return new zzbih();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbmr zzb() throws RemoteException {
        zzcat zzcatVar;
        zzbmr zzbmrVar;
        zzboh zzbohVar;
        zzbjl.zza(this.zza.getContext());
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                zzbmrVar = zzbmq.zze(((zzbmu) zzcgx.zza(this.zza.getContext(), "com.google.android.gms.ads.ChimeraNativeAdViewHolderDelegateCreatorImpl", zzbem.zza)).zze(new ObjectWrapper(this.zza), new ObjectWrapper(this.zzb), new ObjectWrapper(this.zzc)));
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.zzd.zzh = zzcar.zza(this.zza.getContext());
                zzcatVar = this.zzd.zzh;
                zzcatVar.zzd(e, "ClientApiBroker.createNativeAdViewHolderDelegate");
                zzbmrVar = null;
            }
        } else {
            zzbohVar = this.zzd.zzg;
            zzbmrVar = zzbohVar.zza(this.zza, this.zzb, this.zzc);
        }
        return zzbmrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbmr zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzj(new ObjectWrapper(this.zza), new ObjectWrapper(this.zzb), new ObjectWrapper(this.zzc));
    }
}
