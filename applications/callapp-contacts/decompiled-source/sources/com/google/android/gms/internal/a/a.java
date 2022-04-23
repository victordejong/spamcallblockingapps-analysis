package com.google.android.gms.internal.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/a.class */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f22989a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22990b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f22989a = iBinder;
        this.f22990b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel L_() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f22990b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f22989a.transact(i, parcel, obtain, 0);
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
    public IBinder asBinder() {
        return this.f22989a;
    }
}
