package com.google.android.p311a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/a/a.class */
public class C10605a implements IInterface {

    /* renamed from: a */
    private final IBinder f34370a;

    /* renamed from: b */
    private final String f34371b;

    public C10605a(IBinder iBinder, String str) {
        this.f34370a = iBinder;
        this.f34371b = str;
    }

    /* renamed from: a */
    public final Parcel m22620a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34371b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m22619a(Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f34370a.transact(1, parcel, obtain, 0);
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
        return this.f34370a;
    }
}
