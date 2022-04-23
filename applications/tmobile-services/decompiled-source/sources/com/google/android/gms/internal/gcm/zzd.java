package com.google.android.gms.internal.gcm;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzd.class */
public class zzd implements IInterface {

    /* renamed from: a */
    private final IBinder f7857a;

    /* renamed from: b */
    private final String f7858b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzd(IBinder iBinder, String str) {
        this.f7857a = iBinder;
        this.f7858b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m14071a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7858b);
        return obtain;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f7857a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m14070b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f7857a.transact(2, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m14069c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f7857a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
