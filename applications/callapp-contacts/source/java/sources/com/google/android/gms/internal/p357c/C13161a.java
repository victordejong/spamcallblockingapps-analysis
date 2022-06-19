package com.google.android.gms.internal.p357c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.c.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c/a.class */
public class C13161a implements IInterface {

    /* renamed from: a */
    private final IBinder f50273a;

    /* renamed from: b */
    private final String f50274b;

    public C13161a(IBinder iBinder, String str) {
        this.f50273a = iBinder;
        this.f50274b = str;
    }

    /* renamed from: a */
    public final Parcel m13592a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50273a.transact(i, parcel, obtain, 0);
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
        return this.f50273a;
    }

    /* renamed from: c */
    public final Parcel m13591c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50274b);
        return obtain;
    }
}
