package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.na */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/na.class */
public final class C13704na extends C13352a implements AbstractC13706nc {
    public C13704na(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13706nc
    /* renamed from: a */
    public final void mo12294a(Bundle bundle) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        m13318b(1, m13320a);
    }
}
