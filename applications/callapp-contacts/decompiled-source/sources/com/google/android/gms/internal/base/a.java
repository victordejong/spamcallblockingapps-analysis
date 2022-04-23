package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/base/a.class */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f28668a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28669b;

    public a(IBinder iBinder, String str) {
        this.f28668a = iBinder;
        this.f28669b = str;
    }

    public final Parcel a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f28669b);
        return obtain;
    }

    public final Parcel a(Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f28668a.transact(2, parcel, obtain, 0);
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
        return this.f28668a;
    }

    public final void b(Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f28668a.transact(12, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final void c(Parcel parcel) throws RemoteException {
        try {
            this.f28668a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
