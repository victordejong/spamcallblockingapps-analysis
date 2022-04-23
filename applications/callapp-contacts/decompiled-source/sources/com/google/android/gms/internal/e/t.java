package com.google.android.gms.internal.e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/t.class */
public final class t extends a implements r {
    /* JADX INFO: Access modifiers changed from: package-private */
    public t(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a() throws RemoteException {
        b(1, N_());
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(float f) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        b(22, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(float f, float f2) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        N_.writeFloat(f2);
        b(19, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(b bVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        b(18, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(LatLng latLng) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, latLng);
        b(3, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(String str) throws RemoteException {
        Parcel N_ = N_();
        N_.writeString(str);
        b(5, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void a(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, z);
        b(9, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final boolean a(r rVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, rVar);
        Parcel a2 = a(16, N_);
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.r
    public final String b() throws RemoteException {
        Parcel a2 = a(2, N_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.e.r
    public final void b(float f) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        b(25, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void b(float f, float f2) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        N_.writeFloat(f2);
        b(24, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void b(b bVar) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bVar);
        b(29, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void b(String str) throws RemoteException {
        Parcel N_ = N_();
        N_.writeString(str);
        b(7, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void b(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, z);
        b(14, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final LatLng c() throws RemoteException {
        Parcel a2 = a(4, N_());
        LatLng latLng = (LatLng) g.a(a2, LatLng.CREATOR);
        a2.recycle();
        return latLng;
    }

    @Override // com.google.android.gms.internal.e.r
    public final void c(float f) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        b(27, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final void c(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, z);
        b(20, N_);
    }

    @Override // com.google.android.gms.internal.e.r
    public final String d() throws RemoteException {
        Parcel a2 = a(6, N_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.e.r
    public final String e() throws RemoteException {
        Parcel a2 = a(8, N_());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.e.r
    public final boolean f() throws RemoteException {
        Parcel a2 = a(10, N_());
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.r
    public final void g() throws RemoteException {
        b(11, N_());
    }

    @Override // com.google.android.gms.internal.e.r
    public final void h() throws RemoteException {
        b(12, N_());
    }

    @Override // com.google.android.gms.internal.e.r
    public final boolean i() throws RemoteException {
        Parcel a2 = a(13, N_());
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.r
    public final boolean j() throws RemoteException {
        Parcel a2 = a(15, N_());
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.r
    public final int k() throws RemoteException {
        Parcel a2 = a(17, N_());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.e.r
    public final boolean l() throws RemoteException {
        Parcel a2 = a(21, N_());
        boolean a3 = g.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.r
    public final float m() throws RemoteException {
        Parcel a2 = a(23, N_());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.e.r
    public final float n() throws RemoteException {
        Parcel a2 = a(26, N_());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.e.r
    public final float o() throws RemoteException {
        Parcel a2 = a(28, N_());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.e.r
    public final b p() throws RemoteException {
        Parcel a2 = a(30, N_());
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
