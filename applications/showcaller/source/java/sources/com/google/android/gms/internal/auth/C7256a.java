package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.auth.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/a.class */
public class C7256a implements IInterface {

    /* renamed from: d */
    private final IBinder f34242d;

    /* renamed from: e */
    private final String f34243e;

    public C7256a(IBinder iBinder, String str) {
        this.f34242d = iBinder;
        this.f34243e = str;
    }

    /* renamed from: D0 */
    public final Parcel m7829D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f34242d.transact(i, parcel, obtain, 0);
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
        return this.f34242d;
    }

    /* renamed from: c0 */
    public final Parcel m7828c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34243e);
        return obtain;
    }
}
