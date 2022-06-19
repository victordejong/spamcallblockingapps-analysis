package p078c.p084c.p085a.p086a.p088b.p093e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: c.c.a.a.b.e.e */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/e/e.class */
public class C1874e implements IInterface {

    /* renamed from: d */
    private final IBinder f6772d;

    /* renamed from: e */
    private final String f6773e = "com.android.vending.billing.IInAppBillingService";

    public C1874e(IBinder iBinder, String str) {
        this.f6772d = iBinder;
    }

    /* renamed from: D0 */
    public final Parcel m28756D0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6772d.transact(i, parcel, obtain, 0);
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
    public final IBinder asBinder() {
        return this.f6772d;
    }

    /* renamed from: c0 */
    public final Parcel m28755c0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f6773e);
        return obtain;
    }
}
