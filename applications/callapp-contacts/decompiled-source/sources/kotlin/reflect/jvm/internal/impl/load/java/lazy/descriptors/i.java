package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.t;
import kotlin.reflect.jvm.internal.impl.resolve.e.c;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i.class */
public abstract class i extends kotlin.reflect.jvm.internal.impl.resolve.e.i {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37851c = {ac.a(new aa(ac.b(i.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), ac.a(new aa(ac.b(i.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), ac.a(new aa(ac.b(i.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};

    /* renamed from: a  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.i<Collection<kotlin.reflect.jvm.internal.impl.descriptors.k>> f37852a;

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.g<kotlin.reflect.jvm.internal.impl.c.e, Collection<as>> f37853b;

    /* renamed from: d  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37854d;
    final i e;
    final kotlin.reflect.jvm.internal.impl.f.i<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b> f;
    private final kotlin.reflect.jvm.internal.impl.f.h<kotlin.reflect.jvm.internal.impl.c.e, an> h;
    private final kotlin.reflect.jvm.internal.impl.f.g<kotlin.reflect.jvm.internal.impl.c.e, Collection<as>> i;
    private final kotlin.reflect.jvm.internal.impl.f.i j;
    private final kotlin.reflect.jvm.internal.impl.f.i k;
    private final kotlin.reflect.jvm.internal.impl.f.i l;
    private final kotlin.reflect.jvm.internal.impl.f.g<kotlin.reflect.jvm.internal.impl.c.e, List<an>> m;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final KotlinType f37855a;

        /* renamed from: b  reason: collision with root package name */
        final KotlinType f37856b;

        /* renamed from: c  reason: collision with root package name */
        final List<ba> f37857c;

        /* renamed from: d  reason: collision with root package name */
        final List<TypeParameterDescriptor> f37858d;
        final boolean e;
        final List<String> f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(KotlinType returnType, KotlinType kotlinType, List<? extends ba> valueParameters, List<? extends TypeParameterDescriptor> typeParameters, boolean z, List<String> errors) {
            p.d(returnType, "returnType");
            p.d(valueParameters, "valueParameters");
            p.d(typeParameters, "typeParameters");
            p.d(errors, "errors");
            this.f37855a = returnType;
            this.f37856b = kotlinType;
            this.f37857c = valueParameters;
            this.f37858d = typeParameters;
            this.e = z;
            this.f = errors;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a(this.f37855a, aVar.f37855a) && p.a(this.f37856b, aVar.f37856b) && p.a(this.f37857c, aVar.f37857c) && p.a(this.f37858d, aVar.f37858d) && this.e == aVar.e && p.a(this.f, aVar.f);
        }

        public final int hashCode() {
            int hashCode = this.f37855a.hashCode();
            KotlinType kotlinType = this.f37856b;
            int hashCode2 = kotlinType == null ? 0 : kotlinType.hashCode();
            int hashCode3 = this.f37857c.hashCode();
            int hashCode4 = this.f37858d.hashCode();
            boolean z = this.e;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + this.f.hashCode();
        }

        public final String toString() {
            return "MethodSignatureData(returnType=" + this.f37855a + ", receiverType=" + this.f37856b + ", valueParameters=" + this.f37857c + ", typeParameters=" + this.f37858d + ", hasStableParameterNames=" + this.e + ", errors=" + this.f + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final List<ba> f37859a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f37860b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends ba> descriptors, boolean z) {
            p.d(descriptors, "descriptors");
            this.f37859a = descriptors;
            this.f37860b = z;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$c.class */
    static final class c extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.k>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.k> invoke() {
            i iVar = i.this;
            kotlin.reflect.jvm.internal.impl.resolve.e.d dVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38280d;
            h.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.h.g;
            return iVar.c(dVar, h.a.a());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$d.class */
    static final class d extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return i.this.a(kotlin.reflect.jvm.internal.impl.resolve.e.d.i, (Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean>) null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e.class */
    static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, an> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ an invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e name = eVar;
            p.d(name, "name");
            if (i.this.e != null) {
                return (an) i.this.e.h.invoke(name);
            }
            n b2 = i.this.f.invoke().b(name);
            if (b2 == null || b2.e()) {
                return null;
            }
            return i.a(i.this, b2);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f.class */
    static final class f extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e name = eVar;
            p.d(name, "name");
            if (i.this.e != null) {
                return (Collection) i.this.e.f37853b.invoke(name);
            }
            ArrayList arrayList = new ArrayList();
            for (q qVar : i.this.f.invoke().a(name)) {
                kotlin.reflect.jvm.internal.impl.load.java.b.f a2 = i.this.a(qVar);
                if (i.this.a(a2)) {
                    i.this.f37854d.f37882a.g.a(qVar, a2);
                    arrayList.add(a2);
                }
            }
            ArrayList arrayList2 = arrayList;
            i.this.b(arrayList2, name);
            return arrayList2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$g.class */
    static final class g extends r implements Function0<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b invoke() {
            return i.this.c();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$h.class */
    static final class h extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return i.this.b(kotlin.reflect.jvm.internal.impl.resolve.e.d.k, (Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean>) null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$i  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$i.class */
    static final class C0688i extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        C0688i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e name = eVar;
            p.d(name, "name");
            LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) i.this.f37853b.invoke(name));
            i.a(linkedHashSet);
            LinkedHashSet linkedHashSet2 = linkedHashSet;
            i.this.a(linkedHashSet2, name);
            return kotlin.a.n.h(i.this.f37854d.f37882a.r.a(i.this.f37854d, linkedHashSet2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j.class */
    static final class j extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, List<? extends an>> {
        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ List<? extends an> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e name = eVar;
            p.d(name, "name");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2, i.this.h.invoke(name));
            i.this.a(name, arrayList2);
            return kotlin.reflect.jvm.internal.impl.resolve.d.k(i.this.b()) ? kotlin.a.n.h((Iterable) arrayList) : kotlin.a.n.h(i.this.f37854d.f37882a.r.a(i.this.f37854d, arrayList2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$k.class */
    static final class k extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return i.this.a(kotlin.reflect.jvm.internal.impl.resolve.e.d.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l.class */
    public static final class l extends r implements Function0<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n f37871b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PropertyDescriptorImpl f37872c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(n nVar, PropertyDescriptorImpl propertyDescriptorImpl) {
            super(0);
            this.f37871b = nVar;
            this.f37872c = propertyDescriptorImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> invoke() {
            return i.this.f37854d.f37882a.h.a(this.f37871b, this.f37872c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$m.class */
    public static final class m extends r implements Function1<as, kotlin.reflect.jvm.internal.impl.descriptors.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final m f37873a = new m();

        m() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(as asVar) {
            as asVar2 = asVar;
            p.d(asVar2, "<this>");
            return asVar2;
        }
    }

    public i(kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2, i iVar) {
        p.d(c2, "c");
        this.f37854d = c2;
        this.e = iVar;
        this.f37852a = c2.f37882a.f37782a.a(new c(), z.f36608a);
        this.f = c2.f37882a.f37782a.a(new g());
        this.f37853b = c2.f37882a.f37782a.a(new f());
        this.h = c2.f37882a.f37782a.b(new e());
        this.i = c2.f37882a.f37782a.a(new C0688i());
        this.j = c2.f37882a.f37782a.a(new h());
        this.k = c2.f37882a.f37782a.a(new k());
        this.l = c2.f37882a.f37782a.a(new d());
        this.m = c2.f37882a.f37782a.a(new j());
    }

    public /* synthetic */ i(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, i iVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, (i & 2) != 0 ? null : iVar);
    }

    public static final /* synthetic */ an a(i iVar, n nVar) {
        boolean o = nVar.o();
        kotlin.reflect.jvm.internal.impl.load.java.b.g a2 = kotlin.reflect.jvm.internal.impl.load.java.b.g.a(iVar.b(), kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(iVar.f37854d, nVar), y.FINAL, kotlin.reflect.jvm.internal.impl.load.java.z.a(nVar.q()), !o, nVar.h(), iVar.f37854d.f37882a.j.a(nVar), a(nVar));
        p.b(a2, "create(\n            ownerDescriptor, annotations, Modality.FINAL, field.visibility.toDescriptorVisibility(), isVar, field.name,\n            c.components.sourceElementFactory.source(field), /* isConst = */ field.isFinalStatic\n        )");
        kotlin.reflect.jvm.internal.impl.load.java.b.g gVar = a2;
        gVar.a((x) null, (ap) null, (u) null, (u) null);
        KotlinType transformJavaType = iVar.f37854d.f37885d.transformJavaType(nVar.g(), JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, false, null, 3, null));
        if (kotlin.reflect.jvm.internal.impl.builtins.g.d(transformJavaType) || kotlin.reflect.jvm.internal.impl.builtins.g.s(transformJavaType)) {
            a(nVar);
        }
        gVar.a(transformJavaType, z.f36608a, iVar.a(), (aq) null);
        if (kotlin.reflect.jvm.internal.impl.resolve.d.a(gVar, gVar.g())) {
            gVar.a(iVar.f37854d.f37882a.f37782a.b(new l(nVar, gVar)));
        }
        kotlin.reflect.jvm.internal.impl.load.java.b.g gVar2 = gVar;
        iVar.f37854d.f37882a.g.a(nVar, gVar2);
        return gVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x022c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i.b a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g r16, kotlin.reflect.jvm.internal.impl.descriptors.w r17, java.util.List<? extends kotlin.reflect.jvm.internal.impl.load.java.d.z> r18) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i.a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.reflect.jvm.internal.impl.descriptors.w, java.util.List):kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$b");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static KotlinType a(q method, kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2) {
        p.d(method, "method");
        p.d(c2, "c");
        return c2.f37885d.transformJavaType(method.l(), JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, method.j().k(), null, 2, null));
    }

    public static final /* synthetic */ void a(Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String a2 = t.a((as) obj, false, false, 2);
            Object obj2 = linkedHashMap.get(a2);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(a2, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                List list2 = list;
                Collection a3 = kotlin.reflect.jvm.internal.impl.resolve.i.a(list2, m.f37873a);
                set.removeAll(list2);
                set.addAll(a3);
            }
        }
    }

    private static boolean a(n nVar) {
        return nVar.o() && nVar.p();
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d dVar);

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> function1);

    protected abstract aq a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final kotlin.reflect.jvm.internal.impl.load.java.b.f a(q method) {
        aq aqVar;
        p.d(method, "method");
        kotlin.reflect.jvm.internal.impl.load.java.b.f a2 = kotlin.reflect.jvm.internal.impl.load.java.b.f.a(b(), kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(this.f37854d, method), method.h(), this.f37854d.f37882a.j.a(method), this.f.invoke().c(method.h()) != null && method.e().isEmpty());
        p.b(a2, "createJavaMethod(\n            ownerDescriptor, annotations, method.name, c.components.sourceElementFactory.source(method),\n            declaredMemberIndex().findRecordComponentByName(method.name) != null && method.valueParameters.isEmpty()\n        )");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.g a3 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(this.f37854d, a2, method, 0);
        List<kotlin.reflect.jvm.internal.impl.load.java.d.x> i = method.i();
        ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) i, 10));
        for (kotlin.reflect.jvm.internal.impl.load.java.d.x xVar : i) {
            TypeParameterDescriptor a4 = a3.f37883b.a(xVar);
            p.a(a4);
            arrayList.add(a4);
        }
        ArrayList arrayList2 = arrayList;
        b a5 = a(a3, a2, method.e());
        a a6 = a(method, arrayList2, a(method, a3), a5.f37859a);
        KotlinType kotlinType = a6.f37856b;
        if (kotlinType == null) {
            aqVar = null;
        } else {
            kotlin.reflect.jvm.internal.impl.load.java.b.f fVar = a2;
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            aqVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(fVar, kotlinType, g.a.a());
        }
        aq a7 = a();
        List<TypeParameterDescriptor> list = a6.f37858d;
        List<ba> list2 = a6.f37857c;
        KotlinType kotlinType2 = a6.f37855a;
        y.a aVar2 = y.Companion;
        a2.initialize(aqVar, a7, list, list2, kotlinType2, y.a.a(method.n(), !method.o()), kotlin.reflect.jvm.internal.impl.load.java.z.a(method.q()), a6.f37856b != null ? ai.a(kotlin.t.a(kotlin.reflect.jvm.internal.impl.load.java.b.f.f37751a, kotlin.a.n.e((List<? extends Object>) a5.f37859a))) : ai.a());
        a2.a(a6.e, a5.f37860b);
        if (!a6.f.isEmpty()) {
            a3.f37882a.e.a(a2, a6.f);
        }
        return a2;
    }

    protected abstract a a(q qVar, List<? extends TypeParameterDescriptor> list, KotlinType kotlinType, List<? extends ba> list2);

    protected abstract void a(Collection<as> collection, kotlin.reflect.jvm.internal.impl.c.e eVar);

    protected abstract void a(kotlin.reflect.jvm.internal.impl.c.e eVar, Collection<an> collection);

    protected boolean a(kotlin.reflect.jvm.internal.impl.load.java.b.f fVar) {
        p.d(fVar, "<this>");
        return true;
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> b(kotlin.reflect.jvm.internal.impl.resolve.e.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> function1);

    protected abstract kotlin.reflect.jvm.internal.impl.descriptors.k b();

    protected void b(Collection<as> result, kotlin.reflect.jvm.internal.impl.c.e name) {
        p.d(result, "result");
        p.d(name, "name");
    }

    protected final List<kotlin.reflect.jvm.internal.impl.descriptors.k> c(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter) {
        int i;
        int i2;
        int i3;
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        kotlin.reflect.jvm.internal.impl.a.a.d dVar = kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i = kotlin.reflect.jvm.internal.impl.resolve.e.d.v;
        if (kindFilter.a(i)) {
            for (kotlin.reflect.jvm.internal.impl.c.e eVar : a(kindFilter, nameFilter)) {
                if (nameFilter.invoke(eVar).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(linkedHashSet, getContributedClassifier(eVar, dVar));
                }
            }
        }
        d.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.s;
        if (kindFilter.a(i2) && !kindFilter.f38281b.contains(c.a.f38276a)) {
            for (kotlin.reflect.jvm.internal.impl.c.e eVar2 : b(kindFilter, nameFilter)) {
                if (nameFilter.invoke(eVar2).booleanValue()) {
                    linkedHashSet.addAll(getContributedFunctions(eVar2, dVar));
                }
            }
        }
        d.a aVar3 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i3 = kotlin.reflect.jvm.internal.impl.resolve.e.d.t;
        if (kindFilter.a(i3) && !kindFilter.f38281b.contains(c.a.f38276a)) {
            for (kotlin.reflect.jvm.internal.impl.c.e eVar3 : a(kindFilter)) {
                if (nameFilter.invoke(eVar3).booleanValue()) {
                    linkedHashSet.addAll(getContributedVariables(eVar3, dVar));
                }
            }
        }
        return kotlin.a.n.h(linkedHashSet);
    }

    protected abstract kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b c();

    /* JADX INFO: Access modifiers changed from: protected */
    public final kotlin.reflect.jvm.internal.impl.f.i<Collection<kotlin.reflect.jvm.internal.impl.descriptors.k>> d() {
        return this.f37852a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getClassifierNames() {
        return (Set) kotlin.reflect.jvm.internal.impl.f.m.a(this.l, f37851c[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return this.f37852a.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<as> getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return !getFunctionNames().contains(name) ? z.f36608a : this.i.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Collection<an> getContributedVariables(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return !getVariableNames().contains(name) ? z.f36608a : this.m.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getFunctionNames() {
        return (Set) kotlin.reflect.jvm.internal.impl.f.m.a(this.j, f37851c[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getVariableNames() {
        return (Set) kotlin.reflect.jvm.internal.impl.f.m.a(this.k, f37851c[1]);
    }

    public String toString() {
        return p.a("Lazy scope for ", (Object) b());
    }
}
