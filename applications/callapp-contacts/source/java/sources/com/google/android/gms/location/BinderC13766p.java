package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.BinderC13342q;
/* renamed from: com.google.android.gms.location.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/p.class */
public class BinderC13766p extends BinderC13342q implements AbstractC13768q {
    /* renamed from: a */
    public static AbstractC13768q m12266a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return queryLocalInterface instanceof AbstractC13768q ? (AbstractC13768q) queryLocalInterface : new C13765o(iBinder);
    }

    @Override // com.google.android.gms.internal.location.BinderC13342q
    /* renamed from: a */
    public final boolean mo12262a(int i, Parcel parcel) throws RemoteException {
        throw null;
    }
}
