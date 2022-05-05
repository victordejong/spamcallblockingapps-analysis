package p081h.p203i.p204a.p224e.p259j.p275p;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.p.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/h.class */
public abstract class AbstractBinderC8540h extends BinderC8537e implements AbstractC8539g {
    /* renamed from: a */
    public static AbstractC8539g m17854a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        return queryLocalInterface instanceof AbstractC8539g ? (AbstractC8539g) queryLocalInterface : new C8541i(iBinder);
    }
}
