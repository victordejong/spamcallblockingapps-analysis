package p081h.p203i.p204a.p224e.p259j.p264e;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.e.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/n.class */
public abstract class AbstractBinderC7526n extends BinderC7523k implements AbstractC7525m {
    /* renamed from: a */
    public static AbstractC7525m m20397a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof AbstractC7525m ? (AbstractC7525m) queryLocalInterface : new C7527o(iBinder);
    }
}
