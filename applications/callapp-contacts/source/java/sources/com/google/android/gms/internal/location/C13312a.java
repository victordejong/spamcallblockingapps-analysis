package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.location.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/a.class */
public class C13312a implements IInterface {

    /* renamed from: a */
    private final IBinder f50543a;

    /* renamed from: b */
    private final String f50544b;

    public C13312a(IBinder iBinder, String str) {
        this.f50543a = iBinder;
        this.f50544b = str;
    }

    /* renamed from: a */
    public final Parcel m13353a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50544b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13352a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50543a.transact(i, parcel, obtain, 0);
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
        return this.f50543a;
    }

    /* renamed from: b */
    public final void m13351b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f50543a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
