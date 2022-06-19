package androidx.lifecycle;

import androidx.lifecycle.AbstractC0516f;
import p201p6.C4018c;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements AbstractC0522h {

    /* renamed from: a */
    public final AbstractC0515e[] f1990a;

    public CompositeGeneratedAdaptersObserver(AbstractC0515e[] abstractC0515eArr) {
        this.f1990a = abstractC0515eArr;
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        C4018c c4018c = new C4018c(1);
        for (AbstractC0515e abstractC0515e : this.f1990a) {
            abstractC0515e.m7995a(abstractC0524j, enumC0518b, false, c4018c);
        }
        for (AbstractC0515e abstractC0515e2 : this.f1990a) {
            abstractC0515e2.m7995a(abstractC0524j, enumC0518b, true, c4018c);
        }
    }
}
