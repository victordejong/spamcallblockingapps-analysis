package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.ka */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ka.class */
public abstract class AbstractBinderC7304ka extends BinderC7453x2 implements AbstractC7291ja {
    /* renamed from: a */
    public static AbstractC7291ja m20823a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof AbstractC7291ja ? (AbstractC7291ja) queryLocalInterface : new C7316la(iBinder);
    }
}
