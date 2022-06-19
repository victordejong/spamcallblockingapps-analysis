package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkj.class */
public class dkj implements IInterface {

    /* renamed from: a */
    private final IBinder f14524a;

    /* renamed from: b */
    private final String f14525b;

    public dkj(IBinder iBinder, String str) {
        this.f14524a = iBinder;
        this.f14525b = str;
    }

    /* renamed from: a */
    public final Parcel m9329a(int i, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f14524a.transact(i, parcel, parcel, 0);
            parcel.readException();
            return parcel;
        } catch (RuntimeException e) {
            throw e;
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f14524a;
    }

    /* renamed from: b */
    public final void m9328b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f14524a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m9327c(int i, Parcel parcel) {
        try {
            this.f14524a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: y */
    public final Parcel m9326y() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f14525b);
        return obtain;
    }
}
