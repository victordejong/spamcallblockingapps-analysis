package p000;

import ev;
/* renamed from: ev$h0$a */
/* loaded from: classes-dex2jar.jar:ev$h0$a.class */
public class ev$h0$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ev.h0 f6438a;

    public ev$h0$a(ev.h0 h0Var) {
        this.f6438a = h0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f6438a.isCancelled()) {
            ev.h0 h0Var = this.f6438a;
            if (!h0Var.k) {
                return;
            }
            h0Var.r();
        }
    }
}
