package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgu.class */
public class zzgu implements IInterface {

    /* renamed from: a */
    public final IBinder f28242a;

    /* renamed from: b */
    public final String f28243b;

    public zzgu(IBinder iBinder, String str) {
        this.f28242a = iBinder;
        this.f28243b = str;
    }

    /* renamed from: W */
    public final Parcel m12086W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f28243b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m12085a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f28242a.transact(i, parcel, obtain, 0);
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
        return this.f28242a;
    }

    /* renamed from: b */
    public final void m12084b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f28242a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m12083c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f28242a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
