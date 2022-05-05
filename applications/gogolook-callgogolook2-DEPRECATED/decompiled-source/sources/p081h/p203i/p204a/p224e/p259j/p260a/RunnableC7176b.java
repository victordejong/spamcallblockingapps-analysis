package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b.class */
public final class RunnableC7176b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7175ab f17292a;

    public RunnableC7176b(C7175ab abVar) {
        this.f17292a = abVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17292a.f17291a;
            jaVar.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
