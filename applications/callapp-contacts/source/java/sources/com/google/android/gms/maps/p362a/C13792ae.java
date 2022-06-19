package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.AbstractBinderC13300s;
import com.google.android.gms.internal.p359e.AbstractC13299r;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
/* renamed from: com.google.android.gms.maps.a.ae */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ae.class */
public final class C13792ae extends C13282a implements AbstractC13795b {
    public C13792ae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final AbstractC13299r mo12227a(MarkerOptions markerOptions) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, markerOptions);
        Parcel m13501a = m13501a(11, m13502N_);
        AbstractC13299r m13440a = AbstractBinderC13300s.m13440a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m13440a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final AbstractC13801h mo12234a() throws RemoteException {
        C13819z c13819z;
        Parcel m13501a = m13501a(25, m13502N_());
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13819z = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            c13819z = queryLocalInterface instanceof AbstractC13801h ? (AbstractC13801h) queryLocalInterface : new C13819z(readStrongBinder);
        }
        m13501a.recycle();
        return c13819z;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final void mo12233a(float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(16.0f);
        m13500b(93, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final void mo12232a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        m13500b(4, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final void mo12231a(AbstractC13805l abstractC13805l) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13805l);
        m13500b(28, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final void mo12230a(AbstractC13807n abstractC13807n) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13807n);
        m13500b(42, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final void mo12229a(AbstractC13814u abstractC13814u, AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13814u);
        C13288g.m13491a(m13502N_, (IInterface) null);
        m13500b(38, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13795b
    /* renamed from: a */
    public final boolean mo12228a(MapStyleOptions mapStyleOptions) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, mapStyleOptions);
        Parcel m13501a = m13501a(91, m13502N_);
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }
}
