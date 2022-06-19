package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.maps.model.LatLng;
/* renamed from: com.google.android.gms.internal.e.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/t.class */
public final class C13301t extends C13282a implements AbstractC13299r {
    public C13301t(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13439a() throws RemoteException {
        m13500b(1, m13502N_());
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13438a(float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        m13500b(22, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13437a(float f, float f2) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        m13502N_.writeFloat(f2);
        m13500b(19, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13436a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        m13500b(18, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13434a(LatLng latLng) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, latLng);
        m13500b(3, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13433a(String str) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeString(str);
        m13500b(5, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final void mo13432a(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, z);
        m13500b(9, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: a */
    public final boolean mo13435a(AbstractC13299r abstractC13299r) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13299r);
        Parcel m13501a = m13501a(16, m13502N_);
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final String mo13431b() throws RemoteException {
        Parcel m13501a = m13501a(2, m13502N_());
        String readString = m13501a.readString();
        m13501a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final void mo13430b(float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        m13500b(25, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final void mo13429b(float f, float f2) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        m13502N_.writeFloat(f2);
        m13500b(24, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final void mo13428b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        m13500b(29, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final void mo13427b(String str) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeString(str);
        m13500b(7, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: b */
    public final void mo13426b(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, z);
        m13500b(14, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: c */
    public final LatLng mo13425c() throws RemoteException {
        Parcel m13501a = m13501a(4, m13502N_());
        LatLng latLng = (LatLng) C13288g.m13490a(m13501a, LatLng.CREATOR);
        m13501a.recycle();
        return latLng;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: c */
    public final void mo13424c(float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        m13500b(27, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: c */
    public final void mo13423c(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, z);
        m13500b(20, m13502N_);
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: d */
    public final String mo13422d() throws RemoteException {
        Parcel m13501a = m13501a(6, m13502N_());
        String readString = m13501a.readString();
        m13501a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: e */
    public final String mo13421e() throws RemoteException {
        Parcel m13501a = m13501a(8, m13502N_());
        String readString = m13501a.readString();
        m13501a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: f */
    public final boolean mo13420f() throws RemoteException {
        Parcel m13501a = m13501a(10, m13502N_());
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: g */
    public final void mo13419g() throws RemoteException {
        m13500b(11, m13502N_());
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: h */
    public final void mo13418h() throws RemoteException {
        m13500b(12, m13502N_());
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: i */
    public final boolean mo13417i() throws RemoteException {
        Parcel m13501a = m13501a(13, m13502N_());
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: j */
    public final boolean mo13416j() throws RemoteException {
        Parcel m13501a = m13501a(15, m13502N_());
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: k */
    public final int mo13415k() throws RemoteException {
        Parcel m13501a = m13501a(17, m13502N_());
        int readInt = m13501a.readInt();
        m13501a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: l */
    public final boolean mo13414l() throws RemoteException {
        Parcel m13501a = m13501a(21, m13502N_());
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: m */
    public final float mo13413m() throws RemoteException {
        Parcel m13501a = m13501a(23, m13502N_());
        float readFloat = m13501a.readFloat();
        m13501a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: n */
    public final float mo13412n() throws RemoteException {
        Parcel m13501a = m13501a(26, m13502N_());
        float readFloat = m13501a.readFloat();
        m13501a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: o */
    public final float mo13411o() throws RemoteException {
        Parcel m13501a = m13501a(28, m13502N_());
        float readFloat = m13501a.readFloat();
        m13501a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13299r
    /* renamed from: p */
    public final AbstractC12126b mo13410p() throws RemoteException {
        Parcel m13501a = m13501a(30, m13502N_());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }
}
