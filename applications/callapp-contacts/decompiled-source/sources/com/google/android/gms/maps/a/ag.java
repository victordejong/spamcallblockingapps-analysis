package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ag.class */
public final class ag extends a implements d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapViewDelegate");
    }

    @Override // com.google.android.gms.maps.a.d
    public final void a() throws RemoteException {
        b(3, N_());
    }

    @Override // com.google.android.gms.maps.a.d
    public final void a(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        b(2, N_);
    }

    @Override // com.google.android.gms.maps.a.d
    public final void a(p pVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, pVar);
        b(9, N_);
    }

    @Override // com.google.android.gms.maps.a.d
    public final void b() throws RemoteException {
        b(4, N_());
    }

    @Override // com.google.android.gms.maps.a.d
    public final void b(Bundle bundle) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bundle);
        Parcel a2 = a(7, N_);
        if (a2.readInt() != 0) {
            bundle.readFromParcel(a2);
        }
        a2.recycle();
    }

    @Override // com.google.android.gms.maps.a.d
    public final void c() throws RemoteException {
        b(5, N_());
    }

    @Override // com.google.android.gms.maps.a.d
    public final void d() throws RemoteException {
        b(6, N_());
    }

    @Override // com.google.android.gms.maps.a.d
    public final b e() throws RemoteException {
        Parcel a2 = a(8, N_());
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.maps.a.d
    public final void f() throws RemoteException {
        b(12, N_());
    }

    @Override // com.google.android.gms.maps.a.d
    public final void g() throws RemoteException {
        b(13, N_());
    }
}
