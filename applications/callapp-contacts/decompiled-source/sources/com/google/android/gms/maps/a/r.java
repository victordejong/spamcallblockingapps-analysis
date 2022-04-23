package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/r.class */
public final class r extends a implements a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    }

    @Override // com.google.android.gms.maps.a.a
    public final b a(LatLng latLng, float f) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, latLng);
        N_.writeFloat(f);
        Parcel a2 = a(9, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
