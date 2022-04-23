package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.ai;
import com.google.android.gms.internal.location.q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/s.class */
public abstract class s extends q implements t {
    public s() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static t a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof t ? (t) queryLocalInterface : new r(iBinder);
    }

    @Override // com.google.android.gms.internal.location.q
    public final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            a((LocationResult) ai.a(parcel, LocationResult.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            a((LocationAvailability) ai.a(parcel, LocationAvailability.CREATOR));
            return true;
        }
    }
}
