package com.google.android.gms.internal.p139f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.f.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/b.class */
public class C3731b implements IInterface {

    /* renamed from: a */
    private final IBinder f17790a;

    /* renamed from: b */
    private final String f17791b;

    public C3731b(IBinder iBinder, String str) {
        this.f17790a = iBinder;
        this.f17791b = str;
    }

    /* renamed from: a */
    public final Parcel m6510a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17791b);
        return obtain;
    }

    /* renamed from: a */
    public final void m6509a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17790a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17790a;
    }
}
