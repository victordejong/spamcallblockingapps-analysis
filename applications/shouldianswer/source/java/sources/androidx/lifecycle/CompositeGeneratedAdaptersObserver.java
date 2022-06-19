package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements AbstractC0901i {

    /* renamed from: a */
    private final AbstractC0894e[] f2809a;

    public CompositeGeneratedAdaptersObserver(AbstractC0894e[] abstractC0894eArr) {
        this.f2809a = abstractC0894eArr;
    }

    @Override // androidx.lifecycle.AbstractC0901i
    /* renamed from: a */
    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
        C0909o c0909o = new C0909o();
        for (AbstractC0894e abstractC0894e : this.f2809a) {
            abstractC0894e.mo233a(abstractC0903k, enumC0897a, false, c0909o);
        }
        for (AbstractC0894e abstractC0894e2 : this.f2809a) {
            abstractC0894e2.mo233a(abstractC0903k, enumC0897a, true, c0909o);
        }
    }
}
