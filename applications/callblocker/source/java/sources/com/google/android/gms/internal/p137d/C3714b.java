package com.google.android.gms.internal.p137d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.d.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/b.class */
public class C3714b implements IInterface {

    /* renamed from: a */
    private final IBinder f17775a;

    /* renamed from: b */
    private final String f17776b;

    public C3714b(IBinder iBinder, String str) {
        this.f17775a = iBinder;
        this.f17776b = str;
    }

    /* renamed from: a */
    public final Parcel m6527a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17776b);
        return obtain;
    }

    /* renamed from: a */
    public final void m6526a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17775a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17775a;
    }
}
