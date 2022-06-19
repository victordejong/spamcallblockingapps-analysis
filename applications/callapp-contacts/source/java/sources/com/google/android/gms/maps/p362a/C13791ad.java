package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p359e.AbstractBinderC13291j;
import com.google.android.gms.internal.p359e.AbstractC13290i;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
/* renamed from: com.google.android.gms.maps.a.ad */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ad.class */
public final class C13791ad extends C13282a implements AbstractC13790ac {
    public C13791ad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: a */
    public final AbstractC13787a mo12241a() throws RemoteException {
        C13811r c13811r;
        Parcel m13501a = m13501a(4, m13502N_());
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13811r = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            c13811r = queryLocalInterface instanceof AbstractC13787a ? (AbstractC13787a) queryLocalInterface : new C13811r(readStrongBinder);
        }
        m13501a.recycle();
        return c13811r;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: a */
    public final AbstractC13796c mo12240a(AbstractC12126b abstractC12126b) throws RemoteException {
        C13793af c13793af;
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        Parcel m13501a = m13501a(2, m13502N_);
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13793af = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
            c13793af = queryLocalInterface instanceof AbstractC13796c ? (AbstractC13796c) queryLocalInterface : new C13793af(readStrongBinder);
        }
        m13501a.recycle();
        return c13793af;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: a */
    public final AbstractC13797d mo12238a(AbstractC12126b abstractC12126b, GoogleMapOptions googleMapOptions) throws RemoteException {
        C13794ag c13794ag;
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13489a(m13502N_, googleMapOptions);
        Parcel m13501a = m13501a(3, m13502N_);
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13794ag = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            c13794ag = queryLocalInterface instanceof AbstractC13797d ? (AbstractC13797d) queryLocalInterface : new C13794ag(readStrongBinder);
        }
        m13501a.recycle();
        return c13794ag;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: a */
    public final AbstractC13800g mo12237a(AbstractC12126b abstractC12126b, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
        C13818y c13818y;
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        C13288g.m13489a(m13502N_, streetViewPanoramaOptions);
        Parcel m13501a = m13501a(7, m13502N_);
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13818y = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
            c13818y = queryLocalInterface instanceof AbstractC13800g ? (AbstractC13800g) queryLocalInterface : new C13818y(readStrongBinder);
        }
        m13501a.recycle();
        return c13818y;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: a */
    public final void mo12239a(AbstractC12126b abstractC12126b, int i) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        m13502N_.writeInt(i);
        m13500b(6, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: b */
    public final AbstractC13290i mo12236b() throws RemoteException {
        Parcel m13501a = m13501a(5, m13502N_());
        AbstractC13290i m13486a = AbstractBinderC13291j.m13486a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m13486a;
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13790ac
    /* renamed from: b */
    public final AbstractC13799f mo12235b(AbstractC12126b abstractC12126b) throws RemoteException {
        C13817x c13817x;
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC12126b);
        Parcel m13501a = m13501a(8, m13502N_);
        IBinder readStrongBinder = m13501a.readStrongBinder();
        if (readStrongBinder == null) {
            c13817x = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
            c13817x = queryLocalInterface instanceof AbstractC13799f ? (AbstractC13799f) queryLocalInterface : new C13817x(readStrongBinder);
        }
        m13501a.recycle();
        return c13817x;
    }
}
