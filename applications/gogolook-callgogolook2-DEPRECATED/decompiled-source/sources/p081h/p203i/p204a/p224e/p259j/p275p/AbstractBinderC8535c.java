package p081h.p203i.p204a.p224e.p259j.p275p;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.p.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/c.class */
public abstract class AbstractBinderC8535c extends BinderC8537e implements AbstractC8534b {
    /* renamed from: a */
    public static AbstractC8534b m17860a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return queryLocalInterface instanceof AbstractC8534b ? (AbstractC8534b) queryLocalInterface : new C8536d(iBinder);
    }
}
