package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.appset.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/a.class */
public class C7239a implements IInterface {

    /* renamed from: d */
    private final IBinder f34221d;

    /* renamed from: e */
    private final String f34222e = "com.google.android.gms.appset.internal.IAppSetService";

    public C7239a(IBinder iBinder, String str) {
        this.f34221d = iBinder;
    }

    /* renamed from: D0 */
    public final void m7851D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f34221d.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f34221d;
    }

    /* renamed from: c0 */
    public final Parcel m7850c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34222e);
        return obtain;
    }
}
