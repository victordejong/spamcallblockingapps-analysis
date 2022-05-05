package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Dialog;
/* renamed from: h.i.a.e.d.k.q.k2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/k2.class */
public final class C6892k2 extends AbstractC6883i1 {

    /* renamed from: a */
    public final /* synthetic */ Dialog f16874a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC6888j2 f16875b;

    public C6892k2(RunnableC6888j2 j2Var, Dialog dialog) {
        this.f16875b = j2Var;
        this.f16874a = dialog;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6883i1
    /* renamed from: a */
    public final void mo21529a() {
        this.f16875b.f16872b.m21669g();
        if (this.f16874a.isShowing()) {
            this.f16874a.dismiss();
        }
    }
}
