package com.google.android.gms.internal.auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.auth_api.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/d.class */
public class C7274d implements IInterface {

    /* renamed from: d */
    private final IBinder f34314d;

    /* renamed from: e */
    private final String f34315e;

    public C7274d(IBinder iBinder, String str) {
        this.f34314d = iBinder;
        this.f34315e = str;
    }

    /* renamed from: D0 */
    public final void m7819D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f34314d.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f34314d;
    }

    /* renamed from: c0 */
    public final Parcel m7818c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34315e);
        return obtain;
    }
}
