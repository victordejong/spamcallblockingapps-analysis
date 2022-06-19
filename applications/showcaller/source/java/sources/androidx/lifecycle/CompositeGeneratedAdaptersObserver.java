package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements AbstractC0795f {

    /* renamed from: d */
    private final AbstractC0792d[] f3654d;

    public CompositeGeneratedAdaptersObserver(AbstractC0792d[] abstractC0792dArr) {
        this.f3654d = abstractC0792dArr;
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        C0802l c0802l = new C0802l();
        for (AbstractC0792d abstractC0792d : this.f3654d) {
            abstractC0792d.mo24344a(abstractC0797h, event, false, c0802l);
        }
        for (AbstractC0792d abstractC0792d2 : this.f3654d) {
            abstractC0792d2.mo24344a(abstractC0797h, event, true, c0802l);
        }
    }
}
