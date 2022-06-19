package androidx.lifecycle;

import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.C0507b;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC0522h {

    /* renamed from: a */
    public final Object f2012a;

    /* renamed from: b */
    public final C0507b.C0508a f2013b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2012a = obj;
        this.f2013b = C0507b.f2020c.m8005b(obj.getClass());
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        C0507b.C0508a c0508a = this.f2013b;
        Object obj = this.f2012a;
        C0507b.C0508a.m8003a(c0508a.f2023a.get(enumC0518b), abstractC0524j, enumC0518b, obj);
        C0507b.C0508a.m8003a(c0508a.f2023a.get(AbstractC0516f.EnumC0518b.ON_ANY), abstractC0524j, enumC0518b, obj);
    }
}
