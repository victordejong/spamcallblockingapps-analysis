package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ik2.class */
public class ik2 implements IInterface {

    /* renamed from: b */
    private final IBinder f6807b;

    /* renamed from: c */
    private final String f6808c;

    protected ik2(IBinder iBinder, String str) {
        this.f6807b = iBinder;
        this.f6808c = str;
    }

    /* renamed from: M1 */
    protected final void m7185M1(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f6807b.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6807b;
    }

    /* renamed from: g3 */
    protected final void m7184g3(int i, Parcel parcel) {
        try {
            this.f6807b.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: h0 */
    protected final Parcel m7183h0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f6808c);
        return obtain;
    }

    /* renamed from: r1 */
    protected final Parcel m7182r1(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6807b.transact(i, parcel, obtain, 0);
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
}
