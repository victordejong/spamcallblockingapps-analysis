package p081h.p203i.p204a.p224e.p259j.p261b;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/b/e.class */
public abstract class AbstractBinderC7490e extends BinderC7487b implements AbstractC7489d {
    /* renamed from: a */
    public static AbstractC7489d m20422a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof AbstractC7489d ? (AbstractC7489d) queryLocalInterface : new C7491f(iBinder);
    }
}
