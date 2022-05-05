package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.BinderThread;
import com.google.android.gms.signin.internal.zaj;
import java.lang.ref.WeakReference;
import p081h.p203i.p204a.p224e.p290p.p291b.BinderC9113c;
/* renamed from: h.i.a.e.d.k.q.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/i0.class */
public final class BinderC6882i0 extends BinderC9113c {

    /* renamed from: a */
    public final WeakReference<C6847b0> f16865a;

    public BinderC6882i0(C6847b0 b0Var) {
        this.f16865a = new WeakReference<>(b0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p290p.p291b.AbstractC9114d
    @BinderThread
    /* renamed from: a */
    public final void mo16065a(zaj zajVar) {
        C6938w0 w0Var;
        C6847b0 b0Var = this.f16865a.get();
        if (b0Var != null) {
            w0Var = b0Var.f16749a;
            w0Var.m21513a(new C6886j0(this, b0Var, b0Var, zajVar));
        }
    }
}
