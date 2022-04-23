package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/na.class */
public final class na extends a implements nc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public na(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.nc
    public final void a(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        b(1, a2);
    }
}
