package com.google.android.gms.internal.wearable;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/wearable/a.class */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f29313a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29314b;

    public a(IBinder iBinder, String str) {
        this.f29313a = iBinder;
        this.f29314b = str;
    }

    public final Parcel a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29314b);
        return obtain;
    }

    public final void a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29313a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f29313a;
    }

    public final void b(int i, Parcel parcel) throws RemoteException {
        try {
            this.f29313a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
