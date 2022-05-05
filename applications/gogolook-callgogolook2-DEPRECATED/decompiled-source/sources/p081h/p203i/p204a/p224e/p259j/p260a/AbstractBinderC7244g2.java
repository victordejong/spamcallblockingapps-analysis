package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g2.class */
public abstract class AbstractBinderC7244g2 extends BinderC7453x2 implements AbstractC7231f2 {
    /* renamed from: a */
    public static AbstractC7231f2 m20923a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof AbstractC7231f2 ? (AbstractC7231f2) queryLocalInterface : new C7257h2(iBinder);
    }
}
