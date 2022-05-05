package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: h.i.a.e.j.a.i1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i1.class */
public abstract class AbstractBinderC7269i1 extends BinderC7453x2 implements AbstractC7256h1 {
    /* renamed from: a */
    public static AbstractC7256h1 m20900a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof AbstractC7256h1 ? (AbstractC7256h1) queryLocalInterface : new C7282j1(iBinder);
    }
}
