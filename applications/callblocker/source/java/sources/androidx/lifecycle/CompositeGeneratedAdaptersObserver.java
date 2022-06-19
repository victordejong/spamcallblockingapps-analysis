package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements AbstractC0867f {

    /* renamed from: a */
    private final AbstractC0862c[] f2942a;

    public CompositeGeneratedAdaptersObserver(AbstractC0862c[] abstractC0862cArr) {
        this.f2942a = abstractC0862cArr;
    }

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        C0876m c0876m = new C0876m();
        for (AbstractC0862c abstractC0862c : this.f2942a) {
            abstractC0862c.m19225a(abstractC0869h, enumC0865a, false, c0876m);
        }
        for (AbstractC0862c abstractC0862c2 : this.f2942a) {
            abstractC0862c2.m19225a(abstractC0869h, enumC0865a, true, c0876m);
        }
    }
}
