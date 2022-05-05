package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.i6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i6.class */
public final class RunnableC7274i6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BinderC7261h6 f17348a;

    public RunnableC7274i6(BinderC7261h6 h6Var) {
        this.f17348a = h6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7181b4 b4Var;
        AbstractC7181b4 b4Var2;
        b4Var = this.f17348a.f17346a.f17333a;
        if (b4Var != null) {
            try {
                b4Var2 = this.f17348a.f17346a.f17333a;
                b4Var2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                C7452x1.m20569c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
