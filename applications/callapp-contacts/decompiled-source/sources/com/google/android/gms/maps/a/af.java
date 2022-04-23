package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
import com.google.android.gms.maps.GoogleMapOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/af.class */
public final class af extends a implements c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public af(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapFragmentDelegate");
    }

    @Override // com.google.android.gms.maps.a.c
    public final b a(b bVar, b bVar2, Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        g.a(N_, bVar2);
        g.a(N_, bundle);
        Parcel a2 = a(4, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.maps.a.c
    public final void a() throws RemoteException {
        b(5, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void a(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        b(3, N_);
    }

    @Override // com.google.android.gms.maps.a.c
    public final void a(b bVar, GoogleMapOptions googleMapOptions, Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        g.a(N_, googleMapOptions);
        g.a(N_, bundle);
        b(2, N_);
    }

    @Override // com.google.android.gms.maps.a.c
    public final void a(p pVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, pVar);
        b(12, N_);
    }

    @Override // com.google.android.gms.maps.a.c
    public final void b() throws RemoteException {
        b(6, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void b(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        Parcel a2 = a(10, N_);
        if (a2.readInt() != 0) {
            bundle.readFromParcel(a2);
        }
        a2.recycle();
    }

    @Override // com.google.android.gms.maps.a.c
    public final void c() throws RemoteException {
        b(7, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void d() throws RemoteException {
        b(8, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void e() throws RemoteException {
        b(9, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void f() throws RemoteException {
        b(15, N_());
    }

    @Override // com.google.android.gms.maps.a.c
    public final void g() throws RemoteException {
        b(16, N_());
    }
}
