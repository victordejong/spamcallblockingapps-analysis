package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.base.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/base/a.class */
public class C13151a implements IInterface {

    /* renamed from: a */
    private final IBinder f50266a;

    /* renamed from: b */
    private final String f50267b;

    public C13151a(IBinder iBinder, String str) {
        this.f50266a = iBinder;
        this.f50267b = str;
    }

    /* renamed from: a */
    public final Parcel m13603a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50267b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13602a(Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50266a.transact(2, parcel, obtain, 0);
                obtain.readException();
                parcel.recycle();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f50266a;
    }

    /* renamed from: b */
    public final void m13601b(Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f50266a.transact(12, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m13600c(Parcel parcel) throws RemoteException {
        try {
            this.f50266a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
