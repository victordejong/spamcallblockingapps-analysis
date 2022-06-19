package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.auth_api.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/d.class */
public class C13135d implements IInterface {

    /* renamed from: a */
    private final IBinder f50256a;

    /* renamed from: b */
    private final String f50257b;

    public C13135d(IBinder iBinder, String str) {
        this.f50256a = iBinder;
        this.f50257b = str;
    }

    /* renamed from: a */
    public final Parcel m13611a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50257b);
        return obtain;
    }

    /* renamed from: a */
    public final void m13610a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f50256a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f50256a;
    }
}
