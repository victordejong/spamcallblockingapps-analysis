package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a.class */
public class C7288a implements IInterface {

    /* renamed from: d */
    private final IBinder f34325d;

    /* renamed from: e */
    private final String f34326e;

    public C7288a(IBinder iBinder, String str) {
        this.f34325d = iBinder;
        this.f34326e = str;
    }

    /* renamed from: D0 */
    public final void m7807D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f34325d.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: J0 */
    public final Parcel m7806J0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f34325d.transact(i, parcel, obtain, 0);
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
        return this.f34325d;
    }

    /* renamed from: c0 */
    public final Parcel m7805c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f34326e);
        return obtain;
    }
}
