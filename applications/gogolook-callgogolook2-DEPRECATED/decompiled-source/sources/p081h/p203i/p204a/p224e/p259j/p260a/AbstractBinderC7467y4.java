package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.y4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y4.class */
public abstract class AbstractBinderC7467y4 extends BinderC7453x2 implements AbstractC7455x4 {
    /* renamed from: a */
    public static AbstractC7455x4 m20504a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
        return queryLocalInterface instanceof AbstractC7455x4 ? (AbstractC7455x4) queryLocalInterface : new C7479z4(iBinder);
    }
}
