package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/d.class */
public class d implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f28658a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28659b;

    public d(IBinder iBinder, String str) {
        this.f28658a = iBinder;
        this.f28659b = str;
    }

    public final Parcel a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f28659b);
        return obtain;
    }

    public final void a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f28658a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f28658a;
    }
}
