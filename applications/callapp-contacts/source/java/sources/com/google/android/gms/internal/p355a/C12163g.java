package com.google.android.gms.internal.p355a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.a.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/g.class */
public final class C12163g extends C12157a implements AbstractC12161e {
    public C12163g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.p355a.AbstractC12161e
    /* renamed from: a */
    public final String mo18956a() throws RemoteException {
        Parcel m18960a = m18960a(1, m18961L_());
        String readString = m18960a.readString();
        m18960a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.p355a.AbstractC12161e
    /* renamed from: b */
    public final boolean mo18955b() throws RemoteException {
        Parcel m18961L_ = m18961L_();
        C12159c.m18958b(m18961L_);
        Parcel m18960a = m18960a(2, m18961L_);
        boolean m18959a = C12159c.m18959a(m18960a);
        m18960a.recycle();
        return m18959a;
    }

    @Override // com.google.android.gms.internal.p355a.AbstractC12161e
    /* renamed from: c */
    public final boolean mo18954c() throws RemoteException {
        Parcel m18960a = m18960a(6, m18961L_());
        boolean m18959a = C12159c.m18959a(m18960a);
        m18960a.recycle();
        return m18959a;
    }
}
