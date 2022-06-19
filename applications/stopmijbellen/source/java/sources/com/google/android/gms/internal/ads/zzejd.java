package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejd.class */
final class zzejd extends zzbzb {
    public final /* synthetic */ zzeje zza;
    private final zzehw<zzbzo, zzejp> zzb;

    public /* synthetic */ zzejd(zzeje zzejeVar, zzehw zzehwVar, zzejc zzejcVar) {
        this.zza = zzejeVar;
        this.zzb = zzehwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zze(String str) throws RemoteException {
        this.zzb.zzc.zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        this.zzb.zzc.zzh(zzbewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zza.zzc = (View) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzb.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzh(zzbxq zzbxqVar) throws RemoteException {
        this.zza.zzd = zzbxqVar;
        this.zzb.zzc.zzo();
    }
}
