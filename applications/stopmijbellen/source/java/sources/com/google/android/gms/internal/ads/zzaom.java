package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaom.class */
public final class zzaom extends zzaoj implements zzaoo {
    public zzaom(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zze(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeString("GMA_SDK");
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzf() throws RemoteException {
        zzbt(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzh(int[] iArr) throws RemoteException {
        Parcel zza = zza();
        zza.writeIntArray(null);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzi(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(0);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzj(byte[] bArr) throws RemoteException {
        Parcel zza = zza();
        zza.writeByteArray(bArr);
        zzbt(5, zza);
    }
}
