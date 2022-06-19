package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.auth.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/a.class */
public class C13115a implements IInterface {

    /* renamed from: a */
    private final IBinder f50249a;

    /* renamed from: b */
    private final String f50250b;

    public C13115a(IBinder iBinder, String str) {
        this.f50249a = iBinder;
        this.f50250b = str;
    }

    /* renamed from: a */
    public final Parcel m13621a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50250b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13620a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50249a.transact(i, parcel, obtain, 0);
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
    public IBinder asBinder() {
        return this.f50249a;
    }
}
