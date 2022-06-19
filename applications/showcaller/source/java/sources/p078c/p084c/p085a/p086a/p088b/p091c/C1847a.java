package p078c.p084c.p085a.p086a.p088b.p091c;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: c.c.a.a.b.c.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/c/a.class */
public class C1847a implements IInterface {

    /* renamed from: d */
    private final IBinder f6755d;

    /* renamed from: e */
    private final String f6756e;

    public C1847a(IBinder iBinder, String str) {
        this.f6755d = iBinder;
        this.f6756e = str;
    }

    /* renamed from: D0 */
    public final Parcel m28796D0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f6756e);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6755d;
    }

    /* renamed from: c0 */
    public final Parcel m28795c0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6755d.transact(i, parcel, obtain, 0);
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
}
