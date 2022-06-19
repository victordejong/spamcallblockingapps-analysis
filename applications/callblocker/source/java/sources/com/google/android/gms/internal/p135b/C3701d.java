package com.google.android.gms.internal.p135b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.b.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b/d.class */
public class C3701d implements IInterface {

    /* renamed from: a */
    private final IBinder f17767a;

    /* renamed from: b */
    private final String f17768b;

    public C3701d(IBinder iBinder, String str) {
        this.f17767a = iBinder;
        this.f17768b = str;
    }

    /* renamed from: a */
    public final Parcel m6535a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17768b);
        return obtain;
    }

    /* renamed from: a */
    public final void m6534a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17767a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17767a;
    }
}
