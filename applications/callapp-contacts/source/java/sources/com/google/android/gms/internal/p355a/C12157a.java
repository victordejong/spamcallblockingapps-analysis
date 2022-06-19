package com.google.android.gms.internal.p355a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/a/a.class */
public class C12157a implements IInterface {

    /* renamed from: a */
    private final IBinder f39692a;

    /* renamed from: b */
    private final String f39693b;

    public C12157a(IBinder iBinder, String str) {
        this.f39692a = iBinder;
        this.f39693b = str;
    }

    /* renamed from: L_ */
    public final Parcel m18961L_() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f39693b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m18960a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f39692a.transact(i, parcel, obtain, 0);
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
        return this.f39692a;
    }
}
