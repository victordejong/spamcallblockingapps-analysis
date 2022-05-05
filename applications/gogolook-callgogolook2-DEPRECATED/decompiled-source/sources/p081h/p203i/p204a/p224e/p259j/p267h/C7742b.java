package p081h.p203i.p204a.p224e.p259j.p267h;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.h.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/h/b.class */
public class C7742b implements IInterface {

    /* renamed from: a */
    public final IBinder f18140a;

    /* renamed from: b */
    public final String f18141b;

    public C7742b(IBinder iBinder, String str) {
        this.f18140a = iBinder;
        this.f18141b = str;
    }

    /* renamed from: a */
    public final Parcel m19599a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f18140a.transact(i, parcel, obtain, 0);
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
        return this.f18140a;
    }

    /* renamed from: c */
    public final Parcel m19598c() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f18141b);
        return obtain;
    }
}
