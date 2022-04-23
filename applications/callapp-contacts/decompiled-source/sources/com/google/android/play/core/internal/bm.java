package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bm.class */
public class bm implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f31371a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31372b;

    /* JADX INFO: Access modifiers changed from: protected */
    public bm(IBinder iBinder, String str) {
        this.f31371a = iBinder;
        this.f31372b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f31372b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, Parcel parcel) throws RemoteException {
        try {
            this.f31371a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f31371a;
    }
}
