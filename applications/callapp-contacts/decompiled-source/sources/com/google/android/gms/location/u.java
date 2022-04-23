package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.location.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/u.class */
public final class u extends a implements w {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.location.w
    public final void a(Location location) throws RemoteException {
        throw null;
    }
}
