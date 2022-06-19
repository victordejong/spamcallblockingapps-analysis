package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.bm */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bm.class */
public class C15049bm implements IInterface {

    /* renamed from: a */
    private final IBinder f54774a;

    /* renamed from: b */
    private final String f54775b;

    public C15049bm(IBinder iBinder, String str) {
        this.f54774a = iBinder;
        this.f54775b = str;
    }

    /* renamed from: a */
    public final Parcel m9552a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f54775b);
        return obtain;
    }

    /* renamed from: a */
    public final void m9551a(int i, Parcel parcel) throws RemoteException {
        try {
            this.f54774a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f54774a;
    }
}
