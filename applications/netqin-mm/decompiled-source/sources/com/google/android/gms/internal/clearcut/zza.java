package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    public final IBinder f29197a;

    /* renamed from: b */
    public final String f29198b;

    public zza(IBinder iBinder, String str) {
        this.f29197a = iBinder;
        this.f29198b = str;
    }

    /* renamed from: W */
    public final Parcel m10875W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29198b);
        return obtain;
    }

    /* renamed from: a */
    public final void m10874a(int i, Parcel parcel) throws RemoteException {
        try {
            this.f29197a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f29197a;
    }
}
