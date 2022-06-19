package com.google.android.gms.internal.p360f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.f.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/e.class */
public class C13308e implements IInterface {

    /* renamed from: a */
    private final IBinder f50540a;

    /* renamed from: b */
    private final String f50541b = "com.android.vending.billing.IInAppBillingService";

    public C13308e(IBinder iBinder, String str) {
        this.f50540a = iBinder;
    }

    /* renamed from: a */
    public final Parcel m13357a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f50541b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m13356a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f50540a.transact(i, parcel, obtain, 0);
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
        return this.f50540a;
    }
}
