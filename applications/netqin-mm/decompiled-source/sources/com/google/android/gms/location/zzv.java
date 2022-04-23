package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzb;
import com.google.android.gms.internal.location.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzv.class */
public abstract class zzv extends zzb implements zzu {
    public zzv() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    /* renamed from: a */
    public static zzu m9400a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof zzu ? (zzu) queryLocalInterface : new zzw(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    /* renamed from: a */
    public final boolean mo9397a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo9398a((LocationResult) zzc.m10485a(parcel, LocationResult.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo9399a((LocationAvailability) zzc.m10485a(parcel, LocationAvailability.CREATOR));
            return true;
        }
    }
}
