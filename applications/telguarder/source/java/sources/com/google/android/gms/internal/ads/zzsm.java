package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsm.class */
public final class zzsm extends zzgw implements zzsk {
    public zzsm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(IObjectWrapper iObjectWrapper, zzsv zzsvVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzsvVar);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zzsq zzsqVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzsqVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzxl zzdx() throws RemoteException {
        Parcel zza = zza(2, zzdo());
        zzxl zzc = zzxo.zzc(zza.readStrongBinder());
        zza.recycle();
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzyx zzki() throws RemoteException {
        Parcel zza = zza(5, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }
}
