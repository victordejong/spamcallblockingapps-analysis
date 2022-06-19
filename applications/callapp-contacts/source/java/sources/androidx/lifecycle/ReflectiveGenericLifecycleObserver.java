package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.C1243b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC1261n {

    /* renamed from: a */
    private final Object f4796a;

    /* renamed from: b */
    private final C1243b.C1244a f4797b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f4796a = obj;
        this.f4797b = C1243b.f4820a.m43300b(obj.getClass());
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
        C1243b.C1244a c1244a = this.f4797b;
        Object obj = this.f4796a;
        C1243b.C1244a.m43298a(c1244a.f4823a.get(enumC1255a), abstractC1263p, enumC1255a, obj);
        C1243b.C1244a.m43298a(c1244a.f4823a.get(AbstractC1253j.EnumC1255a.ON_ANY), abstractC1263p, enumC1255a, obj);
    }
}
