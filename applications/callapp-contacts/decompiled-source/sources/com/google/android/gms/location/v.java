package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.ai;
import com.google.android.gms.internal.location.q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/v.class */
public abstract class v extends q implements w {
    public v() {
        super("com.google.android.gms.location.ILocationListener");
    }

    public static w a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof w ? (w) queryLocalInterface : new u(iBinder);
    }

    @Override // com.google.android.gms.internal.location.q
    public final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i != 1) {
            return false;
        }
        a((Location) ai.a(parcel, Location.CREATOR));
        return true;
    }
}
