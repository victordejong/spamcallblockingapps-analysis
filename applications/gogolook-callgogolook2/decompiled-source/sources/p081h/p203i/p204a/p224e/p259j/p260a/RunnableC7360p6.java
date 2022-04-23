package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.p6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/p6.class */
public final class RunnableC7360p6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BinderC7348o6 f17425a;

    public RunnableC7360p6(BinderC7348o6 o6Var) {
        this.f17425a = o6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7475z0 z0Var;
        AbstractC7475z0 z0Var2;
        z0Var = this.f17425a.f17415a;
        if (z0Var != null) {
            try {
                z0Var2 = this.f17425a.f17415a;
                z0Var2.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                C7452x1.m20569c("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
