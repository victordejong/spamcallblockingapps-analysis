package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/y.class */
public final class y extends a implements g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
    }

    @Override // com.google.android.gms.maps.a.g
    public final void a() throws RemoteException {
        b(3, N_());
    }

    @Override // com.google.android.gms.maps.a.g
    public final void a(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        b(2, N_);
    }

    @Override // com.google.android.gms.maps.a.g
    public final void a(s sVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, sVar);
        b(9, N_);
    }

    @Override // com.google.android.gms.maps.a.g
    public final void b() throws RemoteException {
        b(4, N_());
    }

    @Override // com.google.android.gms.maps.a.g
    public final void b(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        Parcel a2 = a(7, N_);
        if (a2.readInt() != 0) {
            bundle.readFromParcel(a2);
        }
        a2.recycle();
    }

    @Override // com.google.android.gms.maps.a.g
    public final void c() throws RemoteException {
        b(5, N_());
    }

    @Override // com.google.android.gms.maps.a.g
    public final void d() throws RemoteException {
        b(6, N_());
    }

    @Override // com.google.android.gms.maps.a.g
    public final b e() throws RemoteException {
        Parcel a2 = a(8, N_());
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.maps.a.g
    public final void f() throws RemoteException {
        b(10, N_());
    }

    @Override // com.google.android.gms.maps.a.g
    public final void g() throws RemoteException {
        b(11, N_());
    }
}
