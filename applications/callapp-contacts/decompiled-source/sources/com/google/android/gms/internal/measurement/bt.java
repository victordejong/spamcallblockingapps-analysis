package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bt.class */
public final class bt extends a implements du {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.du
    public final Bundle a(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        Parcel a3 = a(1, a2);
        Bundle bundle2 = (Bundle) as.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }
}
