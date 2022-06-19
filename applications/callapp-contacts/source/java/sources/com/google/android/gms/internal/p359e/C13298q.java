package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.e.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/q.class */
public final class C13298q extends C13282a implements AbstractC13296o {
    public C13298q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13296o
    /* renamed from: a */
    public final String mo13445a() throws RemoteException {
        Parcel m13501a = m13501a(1, m13502N_());
        String readString = m13501a.readString();
        m13501a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13296o
    /* renamed from: a */
    public final boolean mo13444a(AbstractC13296o abstractC13296o) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13491a(m13502N_, abstractC13296o);
        Parcel m13501a = m13501a(4, m13502N_);
        boolean m13492a = C13288g.m13492a(m13501a);
        m13501a.recycle();
        return m13492a;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13296o
    /* renamed from: b */
    public final String mo13443b() throws RemoteException {
        Parcel m13501a = m13501a(2, m13502N_());
        String readString = m13501a.readString();
        m13501a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13296o
    /* renamed from: c */
    public final void mo13442c() throws RemoteException {
        m13500b(3, m13502N_());
    }

    @Override // com.google.android.gms.internal.p359e.AbstractC13296o
    /* renamed from: d */
    public final int mo13441d() throws RemoteException {
        Parcel m13501a = m13501a(5, m13502N_());
        int readInt = m13501a.readInt();
        m13501a.recycle();
        return readInt;
    }
}
