package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgw.class */
public class zzgw implements IInterface {
    private final IBinder zzacj;
    private final String zzack;

    public zzgw(IBinder iBinder, String str) {
        this.zzacj = iBinder;
        this.zzack = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zzacj;
    }

    public final Parcel zza(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.zzacj.transact(i, parcel, obtain, 0);
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

    public final void zzb(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.zzacj.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final void zzc(int i, Parcel parcel) throws RemoteException {
        try {
            this.zzacj.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final Parcel zzdo() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzack);
        return obtain;
    }
}
