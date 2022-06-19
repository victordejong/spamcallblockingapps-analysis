package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a.class */
public class C2082a implements IInterface {

    /* renamed from: b */
    private final IBinder f9721b;

    /* renamed from: c */
    private final String f9722c;

    protected C2082a(IBinder iBinder, String str) {
        this.f9721b = iBinder;
        this.f9722c = str;
    }

    /* renamed from: M1 */
    protected final Parcel m4466M1(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f9721b.transact(i, parcel, obtain, 0);
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
        return this.f9721b;
    }

    /* renamed from: h0 */
    protected final Parcel m4465h0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f9722c);
        return obtain;
    }

    /* renamed from: r1 */
    protected final void m4464r1(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f9721b.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
