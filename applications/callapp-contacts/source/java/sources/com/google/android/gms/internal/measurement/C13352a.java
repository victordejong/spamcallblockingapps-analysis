package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a.class */
public class C13352a implements IInterface {

    /* renamed from: a */
    private final IBinder f50572a;

    /* renamed from: b */
    private final String f50573b;

    public C13352a(IBinder iBinder, String str) {
        this.f50572a = iBinder;
        this.f50573b = str;
    }

    /* renamed from: a */
    public final Parcel m13320a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50573b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13319a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50572a.transact(i, parcel, obtain, 0);
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
        return this.f50572a;
    }

    /* renamed from: b */
    public final void m13318b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f50572a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
