package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
import com.google.android.gms.internal.e.i;
import com.google.android.gms.internal.e.j;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ad.class */
public final class ad extends a implements ac {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // com.google.android.gms.maps.a.ac
    public final a a() throws RemoteException {
        a aVar;
        Parcel a2 = a(4, N_());
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            aVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            aVar = queryLocalInterface instanceof a ? (a) queryLocalInterface : new r(readStrongBinder);
        }
        a2.recycle();
        return aVar;
    }

    @Override // com.google.android.gms.maps.a.ac
    public final c a(b bVar) throws RemoteException {
        c cVar;
        Parcel N_ = N_();
        g.a(N_, bVar);
        Parcel a2 = a(2, N_);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            cVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
            cVar = queryLocalInterface instanceof c ? (c) queryLocalInterface : new af(readStrongBinder);
        }
        a2.recycle();
        return cVar;
    }

    @Override // com.google.android.gms.maps.a.ac
    public final d a(b bVar, GoogleMapOptions googleMapOptions) throws RemoteException {
        d dVar;
        Parcel N_ = N_();
        g.a(N_, bVar);
        g.a(N_, googleMapOptions);
        Parcel a2 = a(3, N_);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            dVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            dVar = queryLocalInterface instanceof d ? (d) queryLocalInterface : new ag(readStrongBinder);
        }
        a2.recycle();
        return dVar;
    }

    @Override // com.google.android.gms.maps.a.ac
    public final g a(b bVar, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
        g gVar;
        Parcel N_ = N_();
        g.a(N_, bVar);
        g.a(N_, streetViewPanoramaOptions);
        Parcel a2 = a(7, N_);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            gVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            gVar = queryLocalInterface instanceof g ? (g) queryLocalInterface : new y(readStrongBinder);
        }
        a2.recycle();
        return gVar;
    }

    @Override // com.google.android.gms.maps.a.ac
    public final void a(b bVar, int i) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        N_.writeInt(i);
        b(6, N_);
    }

    @Override // com.google.android.gms.maps.a.ac
    public final i b() throws RemoteException {
        Parcel a2 = a(5, N_());
        i a3 = j.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.maps.a.ac
    public final f b(b bVar) throws RemoteException {
        f fVar;
        Parcel N_ = N_();
        g.a(N_, bVar);
        Parcel a2 = a(8, N_);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            fVar = queryLocalInterface instanceof f ? (f) queryLocalInterface : new x(readStrongBinder);
        }
        a2.recycle();
        return fVar;
    }
}
