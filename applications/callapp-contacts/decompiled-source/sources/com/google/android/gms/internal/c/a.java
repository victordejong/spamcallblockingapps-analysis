package com.google.android.gms.internal.c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c/a.class */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f28675a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28676b;

    public a(IBinder iBinder, String str) {
        this.f28675a = iBinder;
        this.f28676b = str;
    }

    public final Parcel a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f28675a.transact(i, parcel, obtain, 0);
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
        return this.f28675a;
    }

    public final Parcel c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f28676b);
        return obtain;
    }
}
