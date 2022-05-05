package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.q.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c.class */
public abstract class AbstractBinderC8563c extends BinderC8597f1 implements AbstractC8554b {
    /* renamed from: a */
    public static AbstractC8554b m17766a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof AbstractC8554b ? (AbstractC8554b) queryLocalInterface : new C8577d(iBinder);
    }
}
