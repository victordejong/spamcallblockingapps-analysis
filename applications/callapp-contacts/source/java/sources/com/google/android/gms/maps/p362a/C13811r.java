package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
import com.google.android.gms.maps.model.LatLng;
/* renamed from: com.google.android.gms.maps.a.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/r.class */
public final class C13811r extends C13282a implements AbstractC13787a {
    public C13811r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13787a
    /* renamed from: a */
    public final AbstractC12126b mo12202a(LatLng latLng, float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, latLng);
        m13502N_.writeFloat(f);
        Parcel m13501a = m13501a(9, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }
}
