package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzs.class */
public class zzs extends zzb implements zzr {
    /* renamed from: a */
    public static zzr m9401a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return queryLocalInterface instanceof zzr ? (zzr) queryLocalInterface : new zzt(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    /* renamed from: a */
    public final boolean mo9397a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        throw new NoSuchMethodError();
    }
}
