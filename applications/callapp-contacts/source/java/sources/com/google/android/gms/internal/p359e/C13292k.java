package com.google.android.gms.internal.p359e;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.e.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/k.class */
public final class C13292k extends C13282a implements AbstractC13290i {
    public C13292k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: M_ */
    public final AbstractC12126b mo13485M_() throws RemoteException {
        Parcel m13501a = m13501a(4, m13502N_());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: a */
    public final AbstractC12126b mo13484a(float f) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeFloat(f);
        Parcel m13501a = m13501a(5, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: a */
    public final AbstractC12126b mo13483a(int i) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeInt(i);
        Parcel m13501a = m13501a(1, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: a */
    public final AbstractC12126b mo13482a(Bitmap bitmap) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13489a(m13502N_, bitmap);
        Parcel m13501a = m13501a(6, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: a */
    public final AbstractC12126b mo13481a(String str) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeString(str);
        Parcel m13501a = m13501a(2, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: b */
    public final AbstractC12126b mo13480b(String str) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeString(str);
        Parcel m13501a = m13501a(3, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13290i
    /* renamed from: c */
    public final AbstractC12126b mo13479c(String str) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        m13502N_.writeString(str);
        Parcel m13501a = m13501a(7, m13502N_);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13501a.readStrongBinder());
        m13501a.recycle();
        return m18981a;
    }
}
