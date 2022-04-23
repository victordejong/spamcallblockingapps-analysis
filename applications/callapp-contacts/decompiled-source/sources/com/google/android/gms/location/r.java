package com.google.android.gms.location;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.location.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/r.class */
public final class r extends a implements t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    @Override // com.google.android.gms.location.t
    public final void a(LocationAvailability locationAvailability) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.location.t
    public final void a(LocationResult locationResult) throws RemoteException {
        throw null;
    }
}
