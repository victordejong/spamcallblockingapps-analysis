package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    private final IBinder f7843a;

    /* renamed from: b */
    private final String f7844b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f7843a = iBinder;
        this.f7844b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m14098a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7844b);
        return obtain;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f7843a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Parcel m14097b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f7843a.transact(i, parcel, obtain, 0);
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m14096c(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f7843a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final void m14095f(int i, Parcel parcel) throws RemoteException {
        try {
            this.f7843a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
