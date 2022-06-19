package p078c.p084c.p085a.p086a.p088b.p089a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: c.c.a.a.b.a.e */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/a/e.class */
public abstract class AbstractBinderC1839e extends BinderC1836b implements AbstractC1838d {
    /* renamed from: c0 */
    public static AbstractC1838d m28802c0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof AbstractC1838d ? (AbstractC1838d) queryLocalInterface : new C1840f(iBinder);
    }
}
