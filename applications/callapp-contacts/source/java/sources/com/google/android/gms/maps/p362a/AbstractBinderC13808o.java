package com.google.android.gms.maps.p362a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p359e.BinderC13287f;
/* renamed from: com.google.android.gms.maps.a.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/o.class */
public abstract class AbstractBinderC13808o extends BinderC13287f implements AbstractC13807n {
    public AbstractBinderC13808o() {
        super("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo12142a();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
