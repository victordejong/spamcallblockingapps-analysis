package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements n {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2545a;

    /* renamed from: b  reason: collision with root package name */
    private final b.a f2546b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2545a = obj;
        this.f2546b = b.f2567a.b(obj.getClass());
    }

    @Override // androidx.lifecycle.n
    public final void a(p pVar, j.a aVar) {
        b.a aVar2 = this.f2546b;
        Object obj = this.f2545a;
        b.a.a(aVar2.f2570a.get(aVar), pVar, aVar, obj);
        b.a.a(aVar2.f2570a.get(j.a.ON_ANY), pVar, aVar, obj);
    }
}
