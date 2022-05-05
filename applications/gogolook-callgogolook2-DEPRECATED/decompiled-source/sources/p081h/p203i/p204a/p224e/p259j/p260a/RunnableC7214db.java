package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.db */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/db.class */
public final class RunnableC7214db implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7175ab f17320a;

    public RunnableC7214db(C7175ab abVar) {
        this.f17320a = abVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17320a.f17291a;
            jaVar.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
