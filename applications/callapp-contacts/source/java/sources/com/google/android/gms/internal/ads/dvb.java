package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvb.class */
public class dvb implements IInterface {
    private final IBinder zzaco;
    private final String zzacp;

    public dvb(IBinder iBinder, String str) {
        this.zzaco = iBinder;
        this.zzacp = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zzaco;
    }

    public final Parcel zza(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.zzaco.transact(i, parcel, obtain, 0);
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
            this.zzaco.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final void zzc(int i, Parcel parcel) throws RemoteException {
        try {
            this.zzaco.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final Parcel zzdp() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzacp);
        return obtain;
    }
}
