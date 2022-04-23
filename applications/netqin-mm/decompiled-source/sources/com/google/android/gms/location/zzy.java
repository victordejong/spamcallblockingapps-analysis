package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzb;
import com.google.android.gms.internal.location.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzy.class */
public abstract class zzy extends zzb implements zzx {
    public zzy() {
        super("com.google.android.gms.location.ILocationListener");
    }

    /* renamed from: a */
    public static zzx m9396a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof zzx ? (zzx) queryLocalInterface : new zzz(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    /* renamed from: a */
    public final boolean mo9397a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        onLocationChanged((Location) zzc.m10485a(parcel, Location.CREATOR));
        return true;
    }
}
