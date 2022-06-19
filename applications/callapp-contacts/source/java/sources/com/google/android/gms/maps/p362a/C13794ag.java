package com.google.android.gms.maps.p362a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
/* renamed from: com.google.android.gms.maps.a.ag */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ag.class */
public final class C13794ag extends C13282a implements AbstractC13797d {
    public C13794ag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapViewDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: a */
    public final void mo12214a() throws RemoteException {
        m13500b(3, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: a */
    public final void mo12213a(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        m13500b(2, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: a */
    public final void mo12212a(AbstractC13809p abstractC13809p) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13809p);
        m13500b(9, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: b */
    public final void mo12211b() throws RemoteException {
        m13500b(4, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: b */
    public final void mo12210b(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(7, m13502N_);
        if (m13501a.readInt() != 0) {
            bundle.readFromParcel(m13501a);
        }
        m13501a.recycle();
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: c */
    public final void mo12209c() throws RemoteException {
        m13500b(5, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: d */
    public final void mo12208d() throws RemoteException {
        m13500b(6, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: e */
    public final AbstractC12126b mo12207e() throws RemoteException {
        Parcel m13501a = m13501a(8, m13502N_());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: f */
    public final void mo12206f() throws RemoteException {
        m13500b(12, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13797d
    /* renamed from: g */
    public final void mo12205g() throws RemoteException {
        m13500b(13, m13502N_());
    }
}
