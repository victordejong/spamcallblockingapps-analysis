package p1727n3.p1868v;

import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.a.c;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: n3.v.z0 */
/* loaded from: classes-dex2jar.jar:n3/v/z0.class */
public final class C27042z0<VM extends AbstractC27040y0> implements g<VM> {

    /* renamed from: a */
    public VM f75587a;

    /* renamed from: b */
    public final c<VM> f75588b;

    /* renamed from: c */
    public final a<C26993b1> f75589c;

    /* renamed from: d */
    public final a<C26986a1.AbstractC26987b> f75590d;

    /* JADX WARN: Multi-variable type inference failed */
    public C27042z0(c<VM> cVar, a<? extends C26993b1> aVar, a<? extends C26986a1.AbstractC26987b> aVar2) {
        l.e(cVar, "viewModelClass");
        l.e(aVar, "storeProducer");
        l.e(aVar2, "factoryProducer");
        this.f75588b = cVar;
        this.f75589c = aVar;
        this.f75590d = aVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [n3.v.y0] */
    /* JADX WARN: Type inference failed for: r0v41, types: [n3.v.y0] */
    /* JADX WARN: Type inference failed for: r0v44, types: [n3.v.y0] */
    public Object getValue() {
        VM vm = this.f75587a;
        VM vm2 = vm;
        if (vm == null) {
            C26986a1.AbstractC26987b abstractC26987b = (C26986a1.AbstractC26987b) this.f75590d.invoke();
            C26993b1 c26993b1 = (C26993b1) this.f75589c.invoke();
            Class m3983O0 = C25225a.m3983O0(this.f75588b);
            String canonicalName = m3983O0.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            vm2 = c26993b1.f75499a.get(m8543z2);
            if (!m3983O0.isInstance(vm2)) {
                VM m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, m3983O0) : abstractC26987b.create(m3983O0);
                AbstractC27040y0 put = c26993b1.f75499a.put(m8543z2, m1024b);
                vm2 = m1024b;
                if (put != null) {
                    put.onCleared();
                    vm2 = m1024b;
                }
            } else if (abstractC26987b instanceof C26986a1.C26990e) {
                ((C26986a1.C26990e) abstractC26987b).m1023a(vm2);
            }
            this.f75587a = vm2;
            l.d(vm2, "ViewModelProvider(store,…ed = it\n                }");
        }
        return vm2;
    }
}
