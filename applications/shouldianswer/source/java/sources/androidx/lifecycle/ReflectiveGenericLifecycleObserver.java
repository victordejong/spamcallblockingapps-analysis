package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.C0889b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC0901i {

    /* renamed from: a */
    private final Object f2831a;

    /* renamed from: b */
    private final C0889b.C0890a f2832b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2831a = obj;
        this.f2832b = C0889b.f2834a.m5125b(this.f2831a.getClass());
    }

    @Override // androidx.lifecycle.AbstractC0901i
    /* renamed from: a */
    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
        this.f2832b.m5123a(abstractC0903k, enumC0897a, this.f2831a);
    }
}
