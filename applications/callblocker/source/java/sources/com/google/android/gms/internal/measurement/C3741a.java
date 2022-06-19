package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a.class */
public class C3741a implements IInterface {

    /* renamed from: a */
    private final IBinder f17799a;

    /* renamed from: b */
    private final String f17800b;

    public C3741a(IBinder iBinder, String str) {
        this.f17799a = iBinder;
        this.f17800b = str;
    }

    /* renamed from: a */
    public final Parcel m6504a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17800b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m6503a(int i, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f17799a.transact(i, parcel, parcel, 0);
            parcel.readException();
            return parcel;
        } catch (RuntimeException e) {
            throw e;
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17799a;
    }

    /* renamed from: b */
    public final void m6502b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17799a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
