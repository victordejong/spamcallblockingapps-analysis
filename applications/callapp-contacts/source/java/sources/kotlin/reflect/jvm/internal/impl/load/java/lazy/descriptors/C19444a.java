package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18363d;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19410s;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19413v;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a.class */
public final class C19444a implements AbstractC19446b {

    /* renamed from: a */
    final Function1<AbstractC19407p, Boolean> f65369a;

    /* renamed from: b */
    private final AbstractC19398g f65370b;

    /* renamed from: c */
    private final Function1<AbstractC19408q, Boolean> f65371c;

    /* renamed from: d */
    private final Map<C18966e, List<AbstractC19408q>> f65372d;

    /* renamed from: e */
    private final Map<C18966e, AbstractC19405n> f65373e;

    /* renamed from: f */
    private final Map<C18966e, AbstractC19413v> f65374f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a$a.class */
    public static final class C19445a extends AbstractC18526r implements Function1<AbstractC19408q, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19445a() {
            super(1);
            C19444a.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x007a, code lost:
            if (r0.equals("hashCode") == false) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00f3, code lost:
            if (r0.equals("toString") != false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
            r5 = r0.mo2191e().isEmpty();
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x011a  */
        @Override // kotlin.jvm.functions.Function1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.lang.Boolean invoke(kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q r4) {
            /*
                Method dump skipped, instructions count: 294
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19444a.C19445a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C19444a(AbstractC19398g jClass, Function1<? super AbstractC19407p, Boolean> memberFilter) {
        C18524p.m3840d(jClass, "jClass");
        C18524p.m3840d(memberFilter, "memberFilter");
        this.f65370b = jClass;
        this.f65369a = memberFilter;
        C19445a c19445a = new C19445a();
        this.f65371c = c19445a;
        AbstractC18378h a = C18381k.m4020a(C18282n.m4106p(jClass.mo2207t()), (Function1) c19445a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator mo3908a = a.mo3908a();
        while (mo3908a.hasNext()) {
            Object next = mo3908a.next();
            C18966e h = ((AbstractC19408q) next).mo2183h();
            Object obj = linkedHashMap.get(h);
            ArrayList arrayList = obj;
            if (obj == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(h, arrayList);
            }
            ((List) arrayList).add(next);
        }
        this.f65372d = linkedHashMap;
        AbstractC18378h a2 = C18381k.m4020a(C18282n.m4106p(this.f65370b.mo2206u()), (Function1) this.f65369a);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator mo3908a2 = a2.mo3908a();
        while (mo3908a2.hasNext()) {
            Object next2 = mo3908a2.next();
            linkedHashMap2.put(((AbstractC19405n) next2).mo2183h(), next2);
        }
        this.f65373e = linkedHashMap2;
        Collection<AbstractC19413v> mo2214g = this.f65370b.mo2214g();
        Function1<AbstractC19407p, Boolean> function1 = this.f65369a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : mo2214g) {
            if (((Boolean) function1.invoke(obj2)).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = arrayList2;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) arrayList3, 10)), 16));
        for (Object obj3 : arrayList3) {
            linkedHashMap3.put(((AbstractC19413v) obj3).mo2183h(), obj3);
        }
        this.f65374f = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: a */
    public final Collection<AbstractC19408q> mo2147a(C18966e name) {
        C18524p.m3840d(name, "name");
        List<AbstractC19408q> list = this.f65372d.get(name);
        return list == null ? C18297z.f63400a : list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: a */
    public final Set<C18966e> mo2148a() {
        AbstractC18378h a = C18381k.m4020a(C18282n.m4106p(this.f65370b.mo2207t()), (Function1) this.f65371c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator mo3908a = a.mo3908a();
        while (mo3908a.hasNext()) {
            linkedHashSet.add(((AbstractC19410s) mo3908a.next()).mo2183h());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: b */
    public final Set<C18966e> mo2146b() {
        AbstractC18378h a = C18381k.m4020a(C18282n.m4106p(this.f65370b.mo2206u()), (Function1) this.f65369a);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator mo3908a = a.mo3908a();
        while (mo3908a.hasNext()) {
            linkedHashSet.add(((AbstractC19410s) mo3908a.next()).mo2183h());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: b */
    public final AbstractC19405n mo2145b(C18966e name) {
        C18524p.m3840d(name, "name");
        return this.f65373e.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: c */
    public final Set<C18966e> mo2144c() {
        return this.f65374f.keySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
    /* renamed from: c */
    public final AbstractC19413v mo2143c(C18966e name) {
        C18524p.m3840d(name, "name");
        return this.f65374f.get(name);
    }
}
