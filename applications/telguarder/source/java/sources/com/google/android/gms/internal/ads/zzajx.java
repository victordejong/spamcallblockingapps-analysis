package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajx.class */
public final class zzajx extends zzgw implements zzajv {
    public zzajx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void destroy() throws RemoteException {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzzc getVideoController() throws RemoteException {
        Parcel zza = zza(3, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zza(IObjectWrapper iObjectWrapper, zzajw zzajwVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzajwVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzaem zzty() throws RemoteException {
        Parcel zza = zza(7, zzdo());
        zzaem zzn = zzaep.zzn(zza.readStrongBinder());
        zza.recycle();
        return zzn;
    }
}
