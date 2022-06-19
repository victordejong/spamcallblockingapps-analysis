package com.google.android.gms.maps.p362a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
/* renamed from: com.google.android.gms.maps.a.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/y.class */
public final class C13818y extends C13282a implements AbstractC13800g {
    public C13818y(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: a */
    public final void mo12189a() throws RemoteException {
        m13500b(3, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: a */
    public final void mo12188a(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        m13500b(2, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: a */
    public final void mo12187a(AbstractC13812s abstractC13812s) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13812s);
        m13500b(9, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: b */
    public final void mo12186b() throws RemoteException {
        m13500b(4, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: b */
    public final void mo12185b(Bundle bundle) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bundle);
        Parcel m13501a = m13501a(7, m13502N_);
        if (m13501a.readInt() != 0) {
            bundle.readFromParcel(m13501a);
        }
        m13501a.recycle();
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: c */
    public final void mo12184c() throws RemoteException {
        m13500b(5, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: d */
    public final void mo12183d() throws RemoteException {
        m13500b(6, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: e */
    public final AbstractC12126b mo12182e() throws RemoteException {
        Parcel m13501a = m13501a(8, m13502N_());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: f */
    public final void mo12181f() throws RemoteException {
        m13500b(10, m13502N_());
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13800g
    /* renamed from: g */
    public final void mo12180g() throws RemoteException {
        m13500b(11, m13502N_());
    }
}
