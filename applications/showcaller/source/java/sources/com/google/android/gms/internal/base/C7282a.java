package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.base.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/base/a.class */
public class C7282a implements IInterface {

    /* renamed from: d */
    private final IBinder f34320d;

    /* renamed from: e */
    private final String f34321e;

    public C7282a(IBinder iBinder, String str) {
        this.f34320d = iBinder;
        this.f34321e = str;
    }

    /* renamed from: D0 */
    public final Parcel m7814D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f34320d.transact(2, parcel, obtain, 0);
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
    public final void m7813J0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f34320d.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f34320d;
    }

    /* renamed from: c0 */
    public final Parcel m7812c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34321e);
        return obtain;
    }

    /* renamed from: m2 */
    public final void m7811m2(int i, Parcel parcel) {
        try {
            this.f34320d.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
