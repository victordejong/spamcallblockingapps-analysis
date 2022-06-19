package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzams.class */
public final class zzams extends zzadj implements zzamu {
    public zzams(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zze(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString("GMA_SDK");
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzf() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzg(int[] iArr) throws RemoteException {
        Parcel zza = zza();
        zza.writeIntArray(null);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzh(byte[] bArr) throws RemoteException {
        Parcel zza = zza();
        zza.writeByteArray(bArr);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzi(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(0);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamu
    public final void zzj(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(7, zza);
    }
}
