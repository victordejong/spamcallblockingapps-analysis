package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/j0.class */
public final class BinderC7281j0 extends BinderC7453x2 implements AbstractC7268i0 {
    /* renamed from: a */
    public static AbstractC7268i0 m20896a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        return queryLocalInterface instanceof AbstractC7268i0 ? (AbstractC7268i0) queryLocalInterface : new C7294k0(iBinder);
    }
}
