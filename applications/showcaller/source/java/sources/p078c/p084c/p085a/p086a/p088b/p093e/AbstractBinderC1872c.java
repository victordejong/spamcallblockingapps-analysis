package p078c.p084c.p085a.p086a.p088b.p093e;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: c.c.a.a.b.e.c */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/e/c.class */
public abstract class AbstractBinderC1872c extends BinderC1875f implements AbstractC1873d {
    /* renamed from: c0 */
    public static AbstractC1873d m28768c0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return queryLocalInterface instanceof AbstractC1873d ? (AbstractC1873d) queryLocalInterface : new C1871b(iBinder);
    }
}
