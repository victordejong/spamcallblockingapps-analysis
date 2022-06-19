package com.google.android.gms.maps.p362a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
import com.google.android.gms.maps.GoogleMapOptions;
/* renamed from: com.google.android.gms.maps.a.af */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/af.class */
public final class C13793af extends C13282a implements AbstractC13796c {
    public C13793af(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapFragmentDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: a */
    public final AbstractC12126b mo12224a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13491a(m13502N_, abstractC12126b2);
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(4, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: a */
    public final void mo12226a() throws RemoteException {
        m13500b(5, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: a */
    public final void mo12225a(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        m13500b(3, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: a */
    public final void mo12223a(AbstractC12126b abstractC12126b, GoogleMapOptions googleMapOptions, Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13489a(m13502N_, googleMapOptions);
        C13288g.m13489a(m13502N_, bundle);
        m13500b(2, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: a */
    public final void mo12222a(AbstractC13809p abstractC13809p) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13809p);
        m13500b(12, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: b */
    public final void mo12221b() throws RemoteException {
        m13500b(6, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: b */
    public final void mo12220b(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(10, m13502N_);
        if (m13501a.readInt() != 0) {
            bundle.readFromParcel(m13501a);
        }
        m13501a.recycle();
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: c */
    public final void mo12219c() throws RemoteException {
        m13500b(7, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: d */
    public final void mo12218d() throws RemoteException {
        m13500b(8, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: e */
    public final void mo12217e() throws RemoteException {
        m13500b(9, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: f */
    public final void mo12216f() throws RemoteException {
        m13500b(15, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13796c
    /* renamed from: g */
    public final void mo12215g() throws RemoteException {
        m13500b(16, m13502N_());
    }
}
