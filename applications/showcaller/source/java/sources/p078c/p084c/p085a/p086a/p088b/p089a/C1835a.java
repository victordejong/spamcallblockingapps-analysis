package p078c.p084c.p085a.p086a.p088b.p089a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: c.c.a.a.b.a.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/a/a.class */
public class C1835a implements IInterface {

    /* renamed from: d */
    private final IBinder f6747d;

    /* renamed from: e */
    private final String f6748e;

    public C1835a(IBinder iBinder, String str) {
        this.f6747d = iBinder;
        this.f6748e = str;
    }

    /* renamed from: D0 */
    public final Parcel m28806D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6747d.transact(i, parcel, obtain, 0);
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
        return this.f6747d;
    }

    /* renamed from: c0 */
    public final Parcel m28805c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f6748e);
        return obtain;
    }
}
