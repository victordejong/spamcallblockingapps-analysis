package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.j2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j2.class */
public class C6612j2 implements IInterface {

    /* renamed from: d */
    private final IBinder f24760d;

    /* renamed from: e */
    private final String f24761e;

    public C6612j2(IBinder iBinder, String str) {
        this.f24760d = iBinder;
        this.f24761e = str;
    }

    /* renamed from: D0 */
    public final Parcel m14188D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f24760d.transact(i, parcel, obtain, 0);
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

    /* renamed from: J0 */
    public final void m14187J0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f24760d.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f24760d;
    }

    /* renamed from: c0 */
    public final Parcel m14186c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f24761e);
        return obtain;
    }

    /* renamed from: m2 */
    public final void m14185m2(int i, Parcel parcel) {
        try {
            this.f24760d.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
