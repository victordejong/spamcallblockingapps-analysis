package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.z;
import kotlin.f.d;
import kotlin.g.h;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.d.s;
import kotlin.reflect.jvm.internal.impl.load.java.d.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a.class */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    final Function1<p, Boolean> f37801a;

    /* renamed from: b  reason: collision with root package name */
    private final g f37802b;

    /* renamed from: c  reason: collision with root package name */
    private final Function1<q, Boolean> f37803c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<e, List<q>> f37804d;
    private final Map<e, n> e;
    private final Map<e, v> f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a$a.class */
    static final class C0685a extends r implements Function1<q, Boolean> {
        C0685a() {
            super(1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x007a, code lost:
            if (r0.equals("hashCode") == false) goto L_0x0106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00f3, code lost:
            if (r0.equals("toString") != false) goto L_0x00f6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
            r5 = r0.e().isEmpty();
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x011a  */
        @Override // kotlin.jvm.functions.Function1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.lang.Boolean invoke(kotlin.reflect.jvm.internal.impl.load.java.d.q r4) {
            /*
                Method dump skipped, instructions count: 294
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a.C0685a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(g jClass, Function1<? super p, Boolean> memberFilter) {
        kotlin.jvm.internal.p.d(jClass, "jClass");
        kotlin.jvm.internal.p.d(memberFilter, "memberFilter");
        this.f37802b = jClass;
        this.f37801a = memberFilter;
        C0685a aVar = new C0685a();
        this.f37803c = aVar;
        h a2 = k.a(kotlin.a.n.p(jClass.t()), (Function1) aVar);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator a3 = a2.a();
        while (a3.hasNext()) {
            Object next = a3.next();
            e h = ((q) next).h();
            Object obj = linkedHashMap.get(h);
            ArrayList arrayList = obj;
            if (obj == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(h, arrayList);
            }
            ((List) arrayList).add(next);
        }
        this.f37804d = linkedHashMap;
        h a4 = k.a(kotlin.a.n.p(this.f37802b.u()), (Function1) this.f37801a);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator a5 = a4.a();
        while (a5.hasNext()) {
            Object next2 = a5.next();
            linkedHashMap2.put(((n) next2).h(), next2);
        }
        this.e = linkedHashMap2;
        Collection<v> g = this.f37802b.g();
        Function1<p, Boolean> function1 = this.f37801a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : g) {
            if (((Boolean) function1.invoke(obj2)).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = arrayList2;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(d.c(ai.a(kotlin.a.n.a((Iterable) arrayList3, 10)), 16));
        for (Object obj3 : arrayList3) {
            linkedHashMap3.put(((v) obj3).h(), obj3);
        }
        this.f = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final Collection<q> a(e name) {
        kotlin.jvm.internal.p.d(name, "name");
        List<q> list = this.f37804d.get(name);
        return list == null ? z.f36608a : list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final Set<e> a() {
        h a2 = k.a(kotlin.a.n.p(this.f37802b.t()), (Function1) this.f37803c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator a3 = a2.a();
        while (a3.hasNext()) {
            linkedHashSet.add(((s) a3.next()).h());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final Set<e> b() {
        h a2 = k.a(kotlin.a.n.p(this.f37802b.u()), (Function1) this.f37801a);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator a3 = a2.a();
        while (a3.hasNext()) {
            linkedHashSet.add(((s) a3.next()).h());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final n b(e name) {
        kotlin.jvm.internal.p.d(name, "name");
        return this.e.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final Set<e> c() {
        return this.f.keySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
    public final v c(e name) {
        kotlin.jvm.internal.p.d(name, "name");
        return this.f.get(name);
    }
}
