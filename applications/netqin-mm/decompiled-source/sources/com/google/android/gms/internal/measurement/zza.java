package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    public final IBinder f29400a;

    /* renamed from: b */
    public final String f29401b;

    public zza(IBinder iBinder, String str) {
        this.f29400a = iBinder;
        this.f29401b = str;
    }

    /* renamed from: W */
    public final Parcel m10481W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29401b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m10480a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29400a.transact(i, parcel, obtain, 0);
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
        return this.f29400a;
    }

    /* renamed from: b */
    public final void m10479b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29400a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
