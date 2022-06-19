package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p359e.BinderC13287f;
/* renamed from: com.google.android.gms.maps.a.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/q.class */
public abstract class AbstractBinderC13810q extends BinderC13287f implements AbstractC13809p {
    public AbstractBinderC13810q() {
        super("com.google.android.gms.maps.internal.IOnMapReadyCallback");
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C13792ae c13792ae;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c13792ae = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                c13792ae = queryLocalInterface instanceof AbstractC13795b ? (AbstractC13795b) queryLocalInterface : new C13792ae(readStrongBinder);
            }
            mo12144a(c13792ae);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
