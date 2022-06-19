package com.google.android.gms.maps.p362a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
/* renamed from: com.google.android.gms.maps.a.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/x.class */
public final class C13817x extends C13282a implements AbstractC13799f {
    public C13817x(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: a */
    public final AbstractC12126b mo12198a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13491a(m13502N_, abstractC12126b2);
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(4, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: a */
    public final void mo12201a() throws RemoteException {
        m13500b(5, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: a */
    public final void mo12200a(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        m13500b(3, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: a */
    public final void mo12199a(AbstractC12126b abstractC12126b, Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13489a(m13502N_, (Parcelable) null);
        C13288g.m13489a(m13502N_, bundle);
        m13500b(2, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: a */
    public final void mo12197a(AbstractC13812s abstractC13812s) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13812s);
        m13500b(12, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: b */
    public final void mo12196b() throws RemoteException {
        m13500b(6, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: b */
    public final void mo12195b(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(10, m13502N_);
        if (m13501a.readInt() != 0) {
            bundle.readFromParcel(m13501a);
        }
        m13501a.recycle();
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: c */
    public final void mo12194c() throws RemoteException {
        m13500b(7, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: d */
    public final void mo12193d() throws RemoteException {
        m13500b(8, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: e */
    public final void mo12192e() throws RemoteException {
        m13500b(9, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: f */
    public final void mo12191f() throws RemoteException {
        m13500b(13, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13799f
    /* renamed from: g */
    public final void mo12190g() throws RemoteException {
        m13500b(14, m13502N_());
    }
}
