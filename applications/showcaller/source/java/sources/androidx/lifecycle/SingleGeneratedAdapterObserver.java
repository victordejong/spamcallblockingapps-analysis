package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SingleGeneratedAdapterObserver.class */
public class SingleGeneratedAdapterObserver implements AbstractC0795f {

    /* renamed from: d */
    private final AbstractC0792d f3694d;

    public SingleGeneratedAdapterObserver(AbstractC0792d abstractC0792d) {
        this.f3694d = abstractC0792d;
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        this.f3694d.mo24344a(abstractC0797h, event, false, null);
        this.f3694d.mo24344a(abstractC0797h, event, true, null);
    }
}
