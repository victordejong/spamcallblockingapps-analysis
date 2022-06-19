package com.google.android.gms.internal.wearable;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.wearable.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/wearable/a.class */
public class C13724a implements IInterface {

    /* renamed from: a */
    private final IBinder f51080a;

    /* renamed from: b */
    private final String f51081b;

    public C13724a(IBinder iBinder, String str) {
        this.f51080a = iBinder;
        this.f51081b = str;
    }

    /* renamed from: a */
    public final Parcel m12283a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f51081b);
        return obtain;
    }

    /* renamed from: a */
    public final void m12282a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f51080a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f51080a;
    }

    /* renamed from: b */
    public final void m12281b(int i, Parcel parcel) throws RemoteException {
        try {
            this.f51080a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
