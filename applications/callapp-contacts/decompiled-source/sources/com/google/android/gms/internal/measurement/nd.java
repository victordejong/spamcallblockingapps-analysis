package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/nd.class */
public final class nd extends a implements nf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public nd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.nf
    public final int O_() throws RemoteException {
        Parcel a2 = a(2, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.nf
    public final void a(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, bundle);
        a2.writeLong(j);
        b(1, a2);
    }
}
