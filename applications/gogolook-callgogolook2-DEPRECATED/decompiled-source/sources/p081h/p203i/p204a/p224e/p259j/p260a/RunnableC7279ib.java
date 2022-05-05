package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.ib */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ib.class */
public final class RunnableC7279ib implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7175ab f17354a;

    public RunnableC7279ib(C7175ab abVar) {
        this.f17354a = abVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17354a.f17291a;
            jaVar.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
