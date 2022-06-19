package androidx.lifecycle;

import androidx.lifecycle.C0787a;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC0795f {

    /* renamed from: d */
    private final Object f3688d;

    /* renamed from: e */
    private final C0787a.C0788a f3689e;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f3688d = obj;
        this.f3689e = C0787a.f3695a.m32411c(obj.getClass());
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        this.f3689e.m32408a(abstractC0797h, event, this.f3688d);
    }
}
