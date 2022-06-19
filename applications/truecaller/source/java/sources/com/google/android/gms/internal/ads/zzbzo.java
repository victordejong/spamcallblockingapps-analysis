package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzo.class */
public final class zzbzo extends zzadj implements zzbzq {
    public zzbzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zze() throws RemoteException {
        zzbj(10, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzf() throws RemoteException {
        zzbj(14, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final boolean zzg() throws RemoteException {
        Parcel zzbi = zzbi(11, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzh(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, bundle);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzi() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzj() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzk() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzl() throws RemoteException {
        zzbj(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzm(int i, int i2, Intent intent) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeInt(i2);
        zzadl.zzd(zza, intent);
        zzbj(12, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzo(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, bundle);
        Parcel zzbi = zzbi(6, zza);
        if (zzbi.readInt() != 0) {
            bundle.readFromParcel(zzbi);
        }
        zzbi.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzp() throws RemoteException {
        zzbj(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzq() throws RemoteException {
        zzbj(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzs() throws RemoteException {
        zzbj(9, zza());
    }
}
