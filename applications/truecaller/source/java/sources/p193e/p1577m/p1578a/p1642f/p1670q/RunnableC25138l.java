package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.OnCanceledListener;
/* renamed from: e.m.a.f.q.l */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/l.class */
public final class RunnableC25138l implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ m f70375a;

    public RunnableC25138l(m mVar) {
        this.f70375a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70375a.b) {
            OnCanceledListener onCanceledListener = this.f70375a.c;
            if (onCanceledListener != null) {
                onCanceledListener.onCanceled();
            }
        }
    }
}
