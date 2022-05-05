package p081h.p203i.p204a.p205a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/a/a.class */
public abstract class AbstractC6489a implements IInterface {

    /* renamed from: a */
    public final IBinder f16169a;

    /* renamed from: b */
    public final String f16170b;

    public AbstractC6489a(IBinder iBinder, String str) {
        this.f16169a = iBinder;
        this.f16170b = str;
    }

    /* renamed from: G0 */
    public Parcel m22472G0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f16170b);
        return obtain;
    }

    /* renamed from: a */
    public Parcel m22471a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f16169a.transact(i, parcel, obtain, 0);
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
        return this.f16169a;
    }
}
