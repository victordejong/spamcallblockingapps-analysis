package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
import com.google.android.gms.internal.e.r;
import com.google.android.gms.internal.e.s;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ae.class */
public final class ae extends a implements b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    @Override // com.google.android.gms.maps.a.b
    public final r a(MarkerOptions markerOptions) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, markerOptions);
        Parcel a2 = a(11, N_);
        r a3 = s.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.maps.a.b
    public final h a() throws RemoteException {
        h hVar;
        Parcel a2 = a(25, N_());
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            hVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            hVar = queryLocalInterface instanceof h ? (h) queryLocalInterface : new z(readStrongBinder);
        }
        a2.recycle();
        return hVar;
    }

    @Override // com.google.android.gms.maps.a.b
    public final void a(float f) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(16.0f);
        b(93, N_);
    }

    @Override // com.google.android.gms.maps.a.b
    public final void a(b bVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        b(4, N_);
    }

    @Override // com.google.android.gms.maps.a.b
    public final void a(l lVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, lVar);
        b(28, N_);
    }

    @Override // com.google.android.gms.maps.a.b
    public final void a(n nVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, nVar);
        b(42, N_);
    }

    @Override // com.google.android.gms.maps.a.b
    public final void a(u uVar, b bVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, uVar);
        g.a(N_, (IInterface) null);
        b(38, N_);
    }

    @Override // com.google.android.gms.maps.a.b
    public final boolean a(MapStyleOptions mapStyleOptions) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, mapStyleOptions);
        Parcel a2 = a(91, N_);
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }
}
