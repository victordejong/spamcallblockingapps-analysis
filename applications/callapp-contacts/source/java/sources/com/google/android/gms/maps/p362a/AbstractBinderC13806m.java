package com.google.android.gms.maps.p362a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p359e.BinderC13287f;
import com.google.android.gms.internal.p359e.C13288g;
import com.google.android.gms.maps.model.LatLng;
/* renamed from: com.google.android.gms.maps.a.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/m.class */
public abstract class AbstractBinderC13806m extends BinderC13287f implements AbstractC13805l {
    public AbstractBinderC13806m() {
        super("com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    @Override // com.google.android.gms.internal.p359e.BinderC13287f
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo12139a((LatLng) C13288g.m13490a(parcel, LatLng.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
