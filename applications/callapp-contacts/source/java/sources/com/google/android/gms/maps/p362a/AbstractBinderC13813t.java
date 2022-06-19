package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p359e.BinderC13287f;
/* renamed from: com.google.android.gms.maps.a.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/t.class */
public abstract class AbstractBinderC13813t extends BinderC13287f implements AbstractC13812s {
    public AbstractBinderC13813t() {
        super("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C13816w c13816w;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c13816w = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
                c13816w = queryLocalInterface instanceof AbstractC13798e ? (AbstractC13798e) queryLocalInterface : new C13816w(readStrongBinder);
            }
            mo12143a(c13816w);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
