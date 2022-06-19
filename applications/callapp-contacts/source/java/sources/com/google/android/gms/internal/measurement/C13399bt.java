package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.bt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bt.class */
public final class C13399bt extends C13352a implements AbstractC13454du {
    public C13399bt(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13454du
    /* renamed from: a */
    public final Bundle mo12910a(Bundle bundle) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        Parcel m13319a = m13319a(1, m13320a);
        Bundle bundle2 = (Bundle) C13371as.m13248a(m13319a, Bundle.CREATOR);
        m13319a.recycle();
        return bundle2;
    }
}
