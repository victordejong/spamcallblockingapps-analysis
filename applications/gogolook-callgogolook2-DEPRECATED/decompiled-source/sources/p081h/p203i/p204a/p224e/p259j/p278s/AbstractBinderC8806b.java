package p081h.p203i.p204a.p224e.p259j.p278s;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.s.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/s/b.class */
public abstract class AbstractBinderC8806b extends BinderC8811g implements AbstractC8807c {
    /* renamed from: a */
    public static AbstractC8807c m16908a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        return queryLocalInterface instanceof AbstractC8807c ? (AbstractC8807c) queryLocalInterface : new C8809e(iBinder);
    }
}
