package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.nd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/nd.class */
public final class C13707nd extends C13352a implements AbstractC13709nf {
    public C13707nd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13709nf
    /* renamed from: O_ */
    public final int mo12293O_() throws RemoteException {
        Parcel m13319a = m13319a(2, m13320a());
        int readInt = m13319a.readInt();
        m13319a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13709nf
    /* renamed from: a */
    public final void mo12292a(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13247a(m13320a, bundle);
        m13320a.writeLong(j);
        m13318b(1, m13320a);
    }
}
