package com.google.android.gms.internal.p138e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.e.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/b.class */
public class C3720b implements IInterface {

    /* renamed from: a */
    private final IBinder f17780a;

    /* renamed from: b */
    private final String f17781b;

    public C3720b(IBinder iBinder, String str) {
        this.f17780a = iBinder;
        this.f17781b = str;
    }

    /* renamed from: a */
    public final Parcel m6521a(int i, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f17780a.transact(i, parcel, parcel, 0);
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
        return this.f17780a;
    }

    /* renamed from: b */
    public final void m6520b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f17780a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final Parcel m6519c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f17781b);
        return obtain;
    }
}
