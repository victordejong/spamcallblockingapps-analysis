package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/e.class */
public abstract class e extends q implements f {
    public e() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.q
    protected final boolean a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            a((zzaa) ai.a(parcel, zzaa.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            b();
            return true;
        }
    }
}
