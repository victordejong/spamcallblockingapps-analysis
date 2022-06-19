package com.google.android.gms.internal.p134a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/a/a.class */
public class C2752a implements IInterface {

    /* renamed from: a */
    private final IBinder f7570a;

    /* renamed from: b */
    private final String f7571b;

    public C2752a(IBinder iBinder, String str) {
        this.f7570a = iBinder;
        this.f7571b = str;
    }

    /* renamed from: a */
    public final Parcel m13769a(int i, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.f7570a.transact(i, parcel, parcel, 0);
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
        return this.f7570a;
    }

    /* renamed from: o_ */
    public final Parcel m13768o_() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7571b);
        return obtain;
    }
}
