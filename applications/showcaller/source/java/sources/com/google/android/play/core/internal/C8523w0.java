package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.play.core.internal.w0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/w0.class */
public class C8523w0 implements IInterface {

    /* renamed from: d */
    private final IBinder f38089d;

    /* renamed from: e */
    private final String f38090e;

    public C8523w0(IBinder iBinder, String str) {
        this.f38089d = iBinder;
        this.f38090e = str;
    }

    /* renamed from: D0 */
    public final void m3437D0(int i, Parcel parcel) {
        try {
            this.f38089d.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f38089d;
    }

    /* renamed from: c0 */
    public final Parcel m3436c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f38090e);
        return obtain;
    }
}
