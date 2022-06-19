package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.C0858a;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC0867f {

    /* renamed from: a */
    private final Object f2964a;

    /* renamed from: b */
    private final C0858a.C0859a f2965b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2964a = obj;
        this.f2965b = C0858a.f2967a.m19236b(this.f2964a.getClass());
    }

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        this.f2965b.m19234a(abstractC0869h, enumC0865a, this.f2964a);
    }
}
