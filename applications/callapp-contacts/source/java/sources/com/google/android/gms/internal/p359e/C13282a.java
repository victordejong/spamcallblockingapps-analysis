package com.google.android.gms.internal.p359e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.e.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/a.class */
public class C13282a implements IInterface {

    /* renamed from: a */
    private final IBinder f50536a;

    /* renamed from: b */
    private final String f50537b;

    public C13282a(IBinder iBinder, String str) {
        this.f50536a = iBinder;
        this.f50537b = str;
    }

    /* renamed from: N_ */
    public final Parcel m13502N_() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50537b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13501a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50536a.transact(i, parcel, obtain, 0);
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
        return this.f50536a;
    }

    /* renamed from: b */
    public final void m13500b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f50536a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
