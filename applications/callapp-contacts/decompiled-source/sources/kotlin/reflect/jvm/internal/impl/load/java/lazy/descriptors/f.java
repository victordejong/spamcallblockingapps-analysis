package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.ap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.l;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.y;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.load.java.a.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.k;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.load.java.t;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.load.java.x;
import kotlin.reflect.jvm.internal.impl.load.java.z;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.utils.i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f.class */
public final class f extends kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i {

    /* renamed from: a  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.descriptors.d f37819a;

    /* renamed from: b  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.f.i<List<kotlin.reflect.jvm.internal.impl.descriptors.c>> f37820b;
    private final kotlin.reflect.jvm.internal.impl.load.java.d.g h;
    private final boolean i;
    private final kotlin.reflect.jvm.internal.impl.f.i<Set<kotlin.reflect.jvm.internal.impl.c.e>> j;
    private final kotlin.reflect.jvm.internal.impl.f.i<Map<kotlin.reflect.jvm.internal.impl.c.e, n>> k;
    private final kotlin.reflect.jvm.internal.impl.f.h<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.impl.e> l;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$a.class */
    static final class a extends r implements Function1<p, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37821a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(p pVar) {
            p it2 = pVar;
            kotlin.jvm.internal.p.d(it2, "it");
            return Boolean.valueOf(!it2.p());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$b.class */
    final /* synthetic */ class b extends m implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        b(f fVar) {
            super(1, fVar);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsByNameWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(f.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e p0 = eVar;
            kotlin.jvm.internal.p.d(p0, "p0");
            return f.a((f) this.receiver, p0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$c.class */
    final /* synthetic */ class c extends m implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        c(f fVar) {
            super(1, fVar);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(f.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e p0 = eVar;
            kotlin.jvm.internal.p.d(p0, "p0");
            return f.b((f) this.receiver, p0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$d.class */
    static final class d extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e it2 = eVar;
            kotlin.jvm.internal.p.d(it2, "it");
            return f.a(f.this, it2);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$e.class */
    static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e it2 = eVar;
            kotlin.jvm.internal.p.d(it2, "it");
            return f.b(f.this, it2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f$f  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$f.class */
    static final class C0686f extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37825b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0686f(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar) {
            super(0);
            this.f37825b = gVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
            Collection<k> v = f.this.h.v();
            ArrayList arrayList = new ArrayList(v.size());
            for (k kVar : v) {
                arrayList.add(f.a(f.this, kVar));
            }
            kotlin.reflect.jvm.internal.impl.load.java.d.g unused = f.this.h;
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k kVar2 = this.f37825b.f37882a.r;
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar = this.f37825b;
            ArrayList arrayList2 = arrayList;
            f fVar = f.this;
            List list = arrayList2;
            if (arrayList2.isEmpty()) {
                list = kotlin.a.n.b(f.b(fVar));
            }
            return kotlin.a.n.h(kVar2.a(gVar, list));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$g.class */
    static final class g extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends n>> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends n> invoke() {
            Collection<n> u = f.this.h.u();
            ArrayList arrayList = new ArrayList();
            for (Object obj : u) {
                if (((n) obj).e()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.f.d.c(ai.a(kotlin.a.n.a((Iterable) arrayList2, 10)), 16));
            for (Object obj2 : arrayList2) {
                linkedHashMap.put(((n) obj2).h(), obj2);
            }
            return linkedHashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$h.class */
    public static final class h extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ as f37827a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f37828b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(as asVar, f fVar) {
            super(1);
            this.f37827a = asVar;
            this.f37828b = fVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e accessorName = eVar;
            kotlin.jvm.internal.p.d(accessorName, "accessorName");
            return kotlin.jvm.internal.p.a(this.f37827a.getName(), accessorName) ? kotlin.a.n.a(this.f37827a) : kotlin.a.n.b(f.a(this.f37828b, accessorName), (Iterable) f.b(this.f37828b, accessorName));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$i.class */
    static final class i extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return kotlin.a.n.j(f.this.h.r());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j.class */
    static final class j extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.impl.e> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37831b;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j$a.class */
        static final class a extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ f f37832a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(f fVar) {
                super(0);
                this.f37832a = fVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                return ap.a((Set) this.f37832a.getFunctionNames(), (Iterable) this.f37832a.getVariableNames());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar) {
            super(1);
            this.f37831b = gVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.impl.e invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            kotlin.reflect.jvm.internal.impl.c.e name = eVar;
            kotlin.jvm.internal.p.d(name, "name");
            LazyJavaClassDescriptor lazyJavaClassDescriptor = null;
            l lVar = null;
            if (!((Set) f.this.j.invoke()).contains(name)) {
                n nVar = (n) ((Map) f.this.k.invoke()).get(name);
                if (nVar != null) {
                    lVar = l.a(this.f37831b.f37882a.f37782a, f.this.f37819a, name, this.f37831b.f37882a.f37782a.a(new a(f.this)), kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(this.f37831b, nVar), this.f37831b.f37882a.j.a(nVar));
                }
                return lVar;
            }
            kotlin.reflect.jvm.internal.impl.load.java.n nVar2 = this.f37831b.f37882a.f37783b;
            kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.g) f.this.f37819a);
            kotlin.jvm.internal.p.a(a2);
            kotlin.reflect.jvm.internal.impl.c.a a3 = a2.a(name);
            kotlin.jvm.internal.p.b(a3, "ownerDescriptor.classId!!.createNestedClassId(name)");
            kotlin.reflect.jvm.internal.impl.load.java.d.g a4 = nVar2.a(new n.a(a3, null, f.this.h, 2, null));
            if (a4 != null) {
                kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar = this.f37831b;
                lazyJavaClassDescriptor = new LazyJavaClassDescriptor(gVar, f.this.f37819a, a4, null, 8, null);
                gVar.f37882a.s.a(lazyJavaClassDescriptor);
            }
            return lazyJavaClassDescriptor;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2, kotlin.reflect.jvm.internal.impl.descriptors.d ownerDescriptor, kotlin.reflect.jvm.internal.impl.load.java.d.g jClass, boolean z, f fVar) {
        super(c2, fVar);
        kotlin.jvm.internal.p.d(c2, "c");
        kotlin.jvm.internal.p.d(ownerDescriptor, "ownerDescriptor");
        kotlin.jvm.internal.p.d(jClass, "jClass");
        this.f37819a = ownerDescriptor;
        this.h = jClass;
        this.i = z;
        this.f37820b = c2.f37882a.f37782a.a(new C0686f(c2));
        this.j = c2.f37882a.f37782a.a(new i());
        this.k = c2.f37882a.f37782a.a(new g());
        this.l = c2.f37882a.f37782a.b(new j(c2));
    }

    public /* synthetic */ f(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.load.java.d.g gVar2, boolean z, f fVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, dVar, gVar2, z, (i2 & 16) != 0 ? null : fVar);
    }

    public static final /* synthetic */ Collection a(f fVar, kotlin.reflect.jvm.internal.impl.c.e eVar) {
        Collection<q> a2 = fVar.f.invoke().a(eVar);
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(a2, 10));
        for (q qVar : a2) {
            arrayList.add(fVar.a(qVar));
        }
        return arrayList;
    }

    private final Set<as> a(kotlin.reflect.jvm.internal.impl.c.e eVar) {
        Collection<KotlinType> e2 = e();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (KotlinType kotlinType : e2) {
            kotlin.a.n.a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getContributedFunctions(eVar, kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    private static as a(an anVar, String str, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        as asVar;
        kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a(str);
        kotlin.jvm.internal.p.b(a2, "identifier(getterName)");
        Iterator it2 = ((Iterable) function1.invoke(a2)).iterator();
        do {
            asVar = null;
            if (!it2.hasNext()) {
                break;
            }
            as asVar2 = (as) it2.next();
            asVar = null;
            if (asVar2.getValueParameters().size() == 0) {
                KotlinTypeChecker kotlinTypeChecker = KotlinTypeChecker.DEFAULT;
                KotlinType returnType = asVar2.getReturnType();
                asVar = null;
                if (returnType == null ? false : kotlinTypeChecker.isSubtypeOf(returnType, anVar.g())) {
                    asVar = asVar2;
                }
            }
        } while (asVar == null);
        return asVar;
    }

    private final as a(an anVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        ao a2 = anVar.a();
        String str = null;
        ao aoVar = a2 == null ? null : (ao) x.a(a2);
        if (aoVar != null) {
            str = kotlin.reflect.jvm.internal.impl.load.java.h.f37773a.a(aoVar);
        }
        if (str != null && !x.a(this.f37819a, aoVar)) {
            return a(anVar, str, function1);
        }
        t tVar = t.f37908a;
        String a3 = anVar.getName().a();
        kotlin.jvm.internal.p.b(a3, "name.asString()");
        return a(anVar, t.c(a3), function1);
    }

    private final as a(as asVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        if (!asVar.isSuspend()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.c.e name = asVar.getName();
        kotlin.jvm.internal.p.b(name, "descriptor.name");
        for (as asVar2 : (Iterable) function1.invoke(name)) {
            as e2 = e(asVar2);
            if (e2 == null || !a((kotlin.reflect.jvm.internal.impl.descriptors.a) e2, (kotlin.reflect.jvm.internal.impl.descriptors.a) asVar)) {
                e2 = null;
            }
            if (e2 != null) {
                return e2;
            }
        }
        return null;
    }

    private static as a(as asVar, kotlin.reflect.jvm.internal.impl.c.e eVar) {
        w.a<? extends as> newCopyBuilder = asVar.newCopyBuilder();
        newCopyBuilder.setName(eVar);
        newCopyBuilder.setSignatureChange();
        newCopyBuilder.setPreserveSourceElement();
        as asVar2 = (as) newCopyBuilder.build();
        kotlin.jvm.internal.p.a(asVar2);
        return asVar2;
    }

    private static as a(as asVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<? extends as> collection) {
        Collection<? extends as> collection2 = collection;
        boolean z = false;
        if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
            for (as asVar2 : collection2) {
                if (!kotlin.jvm.internal.p.a(asVar, asVar2) && asVar2.getInitialSignatureDescriptor() == null && a(asVar2, aVar)) {
                    break;
                }
            }
        }
        z = true;
        if (z) {
            return asVar;
        }
        as asVar3 = (as) asVar.newCopyBuilder().setHiddenToOvercomeSignatureClash().build();
        kotlin.jvm.internal.p.a(asVar3);
        return asVar3;
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.b.c a(f fVar, k kVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVar.f37819a;
        k kVar2 = kVar;
        kotlin.reflect.jvm.internal.impl.load.java.b.c a2 = kotlin.reflect.jvm.internal.impl.load.java.b.c.a(dVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(fVar.f37854d, kVar), false, (at) fVar.f37854d.f37882a.j.a(kVar2));
        kotlin.jvm.internal.p.b(a2, "createJavaConstructor(\n            classDescriptor,\n            c.resolveAnnotations(constructor), /* isPrimary = */\n            false,\n            c.components.sourceElementFactory.source(constructor)\n        )");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.g a3 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(fVar.f37854d, a2, kVar, dVar.getDeclaredTypeParameters().size());
        i.b a4 = a(a3, a2, kVar.e());
        List<TypeParameterDescriptor> declaredTypeParameters = dVar.getDeclaredTypeParameters();
        kotlin.jvm.internal.p.b(declaredTypeParameters, "classDescriptor.declaredTypeParameters");
        List<TypeParameterDescriptor> list = declaredTypeParameters;
        List<kotlin.reflect.jvm.internal.impl.load.java.d.x> i2 = kVar.i();
        ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) i2, 10));
        for (kotlin.reflect.jvm.internal.impl.load.java.d.x xVar : i2) {
            TypeParameterDescriptor a5 = a3.f37883b.a(xVar);
            kotlin.jvm.internal.p.a(a5);
            arrayList.add(a5);
        }
        a2.a(a4.f37859a, z.a(kVar.q()), kotlin.a.n.b((Collection) list, (Iterable) arrayList));
        a2.setHasStableParameterNames(false);
        a2.setHasSynthesizedParameterNames(a4.f37860b);
        a2.setReturnType(dVar.getDefaultType());
        a3.f37882a.g.a(kVar2, a2);
        return a2;
    }

    private final void a(Collection<as> collection, kotlin.reflect.jvm.internal.impl.c.e eVar, Collection<? extends as> collection2, boolean z) {
        Collection<? extends as> a2 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(eVar, collection2, collection, this.f37819a, this.f37854d.f37882a.f, this.f37854d.f37882a.u.getOverridingUtil());
        kotlin.jvm.internal.p.b(a2, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, result, ownerDescriptor, c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        if (!z) {
            collection.addAll(a2);
            return;
        }
        Collection<? extends as> collection3 = a2;
        List b2 = kotlin.a.n.b((Collection) collection, (Iterable) collection3);
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(collection3, 10));
        for (as resolvedOverride : collection3) {
            as asVar = (as) x.c(resolvedOverride);
            if (asVar == null) {
                kotlin.jvm.internal.p.b(resolvedOverride, "resolvedOverride");
            } else {
                kotlin.jvm.internal.p.b(resolvedOverride, "resolvedOverride");
                resolvedOverride = a(resolvedOverride, asVar, b2);
            }
            arrayList.add(resolvedOverride);
        }
        collection.addAll(arrayList);
    }

    private final void a(List<ba> list, kotlin.reflect.jvm.internal.impl.descriptors.j jVar, int i2, q qVar, KotlinType kotlinType, KotlinType kotlinType2) {
        kotlin.reflect.jvm.internal.impl.descriptors.j jVar2 = jVar;
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g a2 = g.a.a();
        kotlin.reflect.jvm.internal.impl.c.e h2 = qVar.h();
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        kotlin.jvm.internal.p.b(makeNotNullable, "makeNotNullable(returnType)");
        list.add(new ae(jVar2, null, i2, a2, h2, makeNotNullable, qVar.k(), false, false, kotlinType2 == null ? null : TypeUtils.makeNotNullable(kotlinType2), this.f37854d.f37882a.j.a(qVar)));
    }

    private final void a(Set<? extends an> set, Collection<an> collection, Set<an> set2, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        for (an anVar : set) {
            kotlin.reflect.jvm.internal.impl.load.java.b.g d2 = d(anVar, function1);
            if (d2 != null) {
                collection.add(d2);
                if (set2 != null) {
                    set2.add(anVar);
                    return;
                }
                return;
            }
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.c.e eVar, Collection<? extends as> collection, Collection<? extends as> collection2, Collection<as> collection3, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        as asVar;
        as asVar2;
        Object obj;
        as asVar3;
        for (as asVar4 : collection2) {
            as asVar5 = (as) x.a(asVar4);
            if (asVar5 != null) {
                String d2 = x.d(asVar5);
                kotlin.jvm.internal.p.a((Object) d2);
                kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a(d2);
                kotlin.jvm.internal.p.b(a2, "identifier(nameInJava)");
                for (as asVar6 : (Collection) function1.invoke(a2)) {
                    as a3 = a(asVar6, eVar);
                    if (a(asVar5, (w) a3)) {
                        asVar = a(a3, asVar5, collection);
                        break;
                    }
                }
            }
            asVar = null;
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, asVar);
            kotlin.reflect.jvm.internal.impl.load.java.e eVar2 = kotlin.reflect.jvm.internal.impl.load.java.e.f37766a;
            w a4 = kotlin.reflect.jvm.internal.impl.load.java.e.a((w) asVar4);
            if (a4 != null) {
                kotlin.reflect.jvm.internal.impl.c.e name = a4.getName();
                kotlin.jvm.internal.p.b(name, "overridden.name");
                Iterator it2 = ((Iterable) function1.invoke(name)).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    if (b((as) obj, a4)) {
                        break;
                    }
                }
                as asVar7 = (as) obj;
                if (asVar7 == null) {
                    asVar3 = null;
                } else {
                    w.a<? extends as> newCopyBuilder = asVar7.newCopyBuilder();
                    List<ba> valueParameters = a4.getValueParameters();
                    kotlin.jvm.internal.p.b(valueParameters, "overridden.valueParameters");
                    List<ba> list = valueParameters;
                    ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
                    for (ba baVar : list) {
                        KotlinType g2 = baVar.g();
                        kotlin.jvm.internal.p.b(g2, "it.type");
                        arrayList.add(new kotlin.reflect.jvm.internal.impl.load.java.b.l(g2, baVar.c()));
                    }
                    ArrayList arrayList2 = arrayList;
                    List<ba> valueParameters2 = asVar7.getValueParameters();
                    kotlin.jvm.internal.p.b(valueParameters2, "override.valueParameters");
                    newCopyBuilder.setValueParameters(kotlin.reflect.jvm.internal.impl.load.java.b.k.a(arrayList2, valueParameters2, a4));
                    newCopyBuilder.setSignatureChange();
                    newCopyBuilder.setPreserveSourceElement();
                    asVar3 = (as) newCopyBuilder.build();
                }
                if (asVar3 != null) {
                    if (!a(asVar3)) {
                        asVar3 = null;
                    }
                    if (asVar3 != null) {
                        asVar2 = a(asVar3, a4, collection);
                        kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, asVar2);
                        kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, a(asVar4, function1));
                    }
                }
            }
            asVar2 = null;
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, asVar2);
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, a(asVar4, function1));
        }
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil.a.EnumC0703a b2 = OverridingUtil.f38207a.a(aVar2, aVar, true).b();
        kotlin.jvm.internal.p.b(b2, "DEFAULT.isOverridableByWithoutExternalConditions(superDescriptor, this, true).result");
        return b2 == OverridingUtil.a.EnumC0703a.OVERRIDABLE && !JavaIncompatibilityRulesOverridabilityCondition.Companion.a(aVar2, aVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b4, code lost:
        if (kotlin.reflect.jvm.internal.impl.load.java.t.b(r0) == false) goto L_0x00b7;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.as r8) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f.a(kotlin.reflect.jvm.internal.impl.descriptors.as):boolean");
    }

    private static boolean a(as asVar, w wVar) {
        kotlin.reflect.jvm.internal.impl.load.java.d dVar = kotlin.reflect.jvm.internal.impl.load.java.d.f37764a;
        w wVar2 = wVar;
        if (kotlin.reflect.jvm.internal.impl.load.java.d.c(asVar)) {
            wVar2 = wVar.getOriginal();
        }
        kotlin.jvm.internal.p.b(wVar2, "if (superDescriptor.isRemoveAtByIndex) subDescriptor.original else subDescriptor");
        return a(wVar2, asVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x001b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.util.Collection b(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f r3, kotlin.reflect.jvm.internal.impl.c.e r4) {
        /*
            r0 = r3
            r1 = r4
            java.util.Set r0 = r0.a(r1)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r4 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            java.util.Collection r0 = (java.util.Collection) r0
            r3 = r0
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x001b:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0065
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.as r0 = (kotlin.reflect.jvm.internal.impl.descriptors.as) r0
            r4 = r0
            r0 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.b r0 = (kotlin.reflect.jvm.internal.impl.descriptors.b) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.load.java.x.b(r0)
            if (r0 != 0) goto L_0x0052
            kotlin.reflect.jvm.internal.impl.load.java.e r0 = kotlin.reflect.jvm.internal.impl.load.java.e.f37766a
            r7 = r0
            r0 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = (kotlin.reflect.jvm.internal.impl.descriptors.w) r0
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = kotlin.reflect.jvm.internal.impl.load.java.e.a(r0)
            if (r0 == 0) goto L_0x004c
            goto L_0x0052
        L_0x004c:
            r0 = 0
            r8 = r0
            goto L_0x0055
        L_0x0052:
            r0 = 1
            r8 = r0
        L_0x0055:
            r0 = r8
            if (r0 != 0) goto L_0x001b
            r0 = r3
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L_0x001b
        L_0x0065:
            r0 = r3
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f.b(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f, kotlin.reflect.jvm.internal.impl.c.e):java.util.Collection");
    }

    private final Set<an> b(kotlin.reflect.jvm.internal.impl.c.e eVar) {
        Collection<KotlinType> e2 = e();
        ArrayList arrayList = new ArrayList();
        for (KotlinType kotlinType : e2) {
            Collection<? extends an> contributedVariables = kotlinType.getMemberScope().getContributedVariables(eVar, kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(kotlin.a.n.a(contributedVariables, 10));
            for (an anVar : contributedVariables) {
                arrayList2.add(anVar);
            }
            kotlin.a.n.a((Collection) arrayList, (Iterable) arrayList2);
        }
        return kotlin.a.n.j((Iterable) arrayList);
    }

    private static as b(an anVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        as asVar;
        t tVar = t.f37908a;
        String a2 = anVar.getName().a();
        kotlin.jvm.internal.p.b(a2, "name.asString()");
        kotlin.reflect.jvm.internal.impl.c.e a3 = kotlin.reflect.jvm.internal.impl.c.e.a(t.d(a2));
        kotlin.jvm.internal.p.b(a3, "identifier(JvmAbi.setterName(name.asString()))");
        Iterator it2 = ((Iterable) function1.invoke(a3)).iterator();
        do {
            asVar = null;
            if (!it2.hasNext()) {
                break;
            }
            as asVar2 = (as) it2.next();
            asVar = null;
            if (asVar2.getValueParameters().size() == 1) {
                KotlinType returnType = asVar2.getReturnType();
                asVar = null;
                if (returnType != null) {
                    asVar = null;
                    if (kotlin.reflect.jvm.internal.impl.builtins.g.r(returnType)) {
                        KotlinTypeChecker kotlinTypeChecker = KotlinTypeChecker.DEFAULT;
                        List<ba> valueParameters = asVar2.getValueParameters();
                        kotlin.jvm.internal.p.b(valueParameters, "descriptor.valueParameters");
                        asVar = null;
                        if (kotlinTypeChecker.equalTypes(((ba) kotlin.a.n.i((List<? extends Object>) valueParameters)).g(), anVar.g())) {
                            asVar = asVar2;
                        }
                    }
                }
            }
        } while (asVar == null);
        return asVar;
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c b(f fVar) {
        ArrayList arrayList;
        kotlin.n nVar;
        boolean k = fVar.h.k();
        fVar.h.j();
        if (!k) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVar.f37819a;
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        kotlin.reflect.jvm.internal.impl.load.java.b.c a2 = kotlin.reflect.jvm.internal.impl.load.java.b.c.a(dVar, g.a.a(), true, (at) fVar.f37854d.f37882a.j.a(fVar.h));
        kotlin.jvm.internal.p.b(a2, "createJavaConstructor(\n            classDescriptor, Annotations.EMPTY, /* isPrimary = */ true, c.components.sourceElementFactory.source(jClass)\n        )");
        if (k) {
            kotlin.reflect.jvm.internal.impl.load.java.b.c cVar = a2;
            Collection<q> t = fVar.h.t();
            ArrayList arrayList2 = new ArrayList(t.size());
            JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, true, null, 2, null);
            Collection<q> collection = t;
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj : collection) {
                if (kotlin.jvm.internal.p.a(((q) obj).h(), u.f38003c)) {
                    arrayList3.add(obj);
                } else {
                    arrayList4.add(obj);
                }
            }
            kotlin.n nVar2 = new kotlin.n(arrayList3, arrayList4);
            List list = (List) nVar2.f36810a;
            List<q> list2 = (List) nVar2.f36811b;
            boolean z = list.size() <= 1;
            if (!kotlin.x.f38657a || z) {
                q qVar = (q) kotlin.a.n.f((List<? extends Object>) list);
                if (qVar != null) {
                    kotlin.reflect.jvm.internal.impl.load.java.d.w l = qVar.l();
                    if (l instanceof kotlin.reflect.jvm.internal.impl.load.java.d.f) {
                        kotlin.reflect.jvm.internal.impl.load.java.d.f fVar2 = (kotlin.reflect.jvm.internal.impl.load.java.d.f) l;
                        nVar = new kotlin.n(fVar.f37854d.f37885d.transformArrayType(fVar2, attributes$default, true), fVar.f37854d.f37885d.transformJavaType(fVar2.d(), attributes$default));
                    } else {
                        nVar = new kotlin.n(fVar.f37854d.f37885d.transformJavaType(l, attributes$default), null);
                    }
                    fVar.a(arrayList2, cVar, 0, qVar, (KotlinType) nVar.f36810a, (KotlinType) nVar.f36811b);
                }
                int i2 = qVar != null ? 1 : 0;
                int i3 = 0;
                for (q qVar2 : list2) {
                    fVar.a(arrayList2, cVar, i3 + i2, qVar2, fVar.f37854d.f37885d.transformJavaType(qVar2.l(), attributes$default), null);
                    i3++;
                }
                arrayList = arrayList2;
            } else {
                throw new AssertionError(kotlin.jvm.internal.p.a("There can't be more than one method named 'value' in annotation class: ", (Object) fVar.h));
            }
        } else {
            arrayList = Collections.emptyList();
        }
        a2.setHasSynthesizedParameterNames(false);
        s visibility = dVar.getVisibility();
        kotlin.jvm.internal.p.b(visibility, "classDescriptor.visibility");
        s PROTECTED_AND_PACKAGE = visibility;
        if (kotlin.jvm.internal.p.a(visibility, kotlin.reflect.jvm.internal.impl.load.java.r.f37904b)) {
            PROTECTED_AND_PACKAGE = kotlin.reflect.jvm.internal.impl.load.java.r.f37905c;
            kotlin.jvm.internal.p.b(PROTECTED_AND_PACKAGE, "PROTECTED_AND_PACKAGE");
        }
        a2.a(arrayList, PROTECTED_AND_PACKAGE);
        a2.setHasStableParameterNames(true);
        a2.setReturnType(dVar.getDefaultType());
        fVar.f37854d.f37882a.g.a(fVar.h, a2);
        return a2;
    }

    private final boolean b(as asVar) {
        kotlin.reflect.jvm.internal.impl.load.java.e eVar = kotlin.reflect.jvm.internal.impl.load.java.e.f37766a;
        kotlin.reflect.jvm.internal.impl.c.e name = asVar.getName();
        kotlin.jvm.internal.p.b(name, "name");
        if (!kotlin.reflect.jvm.internal.impl.load.java.e.a(name)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.c.e name2 = asVar.getName();
        kotlin.jvm.internal.p.b(name2, "name");
        Set<as> a2 = a(name2);
        ArrayList arrayList = new ArrayList();
        for (as asVar2 : a2) {
            kotlin.reflect.jvm.internal.impl.load.java.e eVar2 = kotlin.reflect.jvm.internal.impl.load.java.e.f37766a;
            w a3 = kotlin.reflect.jvm.internal.impl.load.java.e.a((w) asVar2);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        ArrayList<w> arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return false;
        }
        for (w wVar : arrayList2) {
            if (b(asVar, wVar)) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(as asVar, w wVar) {
        String a2 = kotlin.reflect.jvm.internal.impl.load.kotlin.t.a(asVar, false, false, 2);
        w original = wVar.getOriginal();
        kotlin.jvm.internal.p.b(original, "builtinWithErasedParameters.original");
        return kotlin.jvm.internal.p.a((Object) a2, (Object) kotlin.reflect.jvm.internal.impl.load.kotlin.t.a(original, false, false, 2)) && !a((kotlin.reflect.jvm.internal.impl.descriptors.a) asVar, (kotlin.reflect.jvm.internal.impl.descriptors.a) wVar);
    }

    private final boolean c(an anVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        if (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c.a(anVar)) {
            return false;
        }
        as a2 = a(anVar, function1);
        as b2 = b(anVar, function1);
        if (a2 == null) {
            return false;
        }
        if (!anVar.at_()) {
            return true;
        }
        return b2 != null && b2.getModality() == a2.getModality();
    }

    private final boolean c(as asVar) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.load.java.d dVar = kotlin.reflect.jvm.internal.impl.load.java.d.f37764a;
        kotlin.reflect.jvm.internal.impl.c.e name = asVar.getName();
        kotlin.jvm.internal.p.b(name, "name");
        List<kotlin.reflect.jvm.internal.impl.c.e> b2 = kotlin.reflect.jvm.internal.impl.load.java.d.b(name);
        if ((b2 instanceof Collection) && b2.isEmpty()) {
            return false;
        }
        for (kotlin.reflect.jvm.internal.impl.c.e eVar : b2) {
            Set<as> a2 = a(eVar);
            ArrayList arrayList = new ArrayList();
            for (Object obj : a2) {
                if (x.b((as) obj)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (!arrayList2.isEmpty()) {
                as a3 = a(asVar, eVar);
                ArrayList<as> arrayList3 = arrayList2;
                if (!arrayList3.isEmpty()) {
                    for (as asVar2 : arrayList3) {
                        if (a(asVar2, (w) a3)) {
                            z = true;
                            break;
                        }
                    }
                }
            }
            z = false;
            if (z) {
                return true;
            }
        }
        return false;
    }

    private final kotlin.reflect.jvm.internal.impl.load.java.b.g d(an anVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends as>> function1) {
        as asVar;
        boolean c2 = c(anVar, function1);
        y yVar = null;
        kotlin.reflect.jvm.internal.impl.descriptors.y yVar2 = null;
        if (!c2) {
            return null;
        }
        as a2 = a(anVar, function1);
        kotlin.jvm.internal.p.a(a2);
        if (anVar.at_()) {
            asVar = b(anVar, function1);
            kotlin.jvm.internal.p.a(asVar);
        } else {
            asVar = null;
        }
        boolean z = true;
        if (!(asVar == null || asVar.getModality() == a2.getModality())) {
            z = false;
        }
        if (!kotlin.x.f38657a || z) {
            kotlin.reflect.jvm.internal.impl.load.java.b.e eVar = new kotlin.reflect.jvm.internal.impl.load.java.b.e(this.f37819a, a2, asVar, anVar);
            KotlinType returnType = a2.getReturnType();
            kotlin.jvm.internal.p.a(returnType);
            eVar.a(returnType, kotlin.a.z.f36608a, a(), (aq) null);
            kotlin.reflect.jvm.internal.impl.load.java.b.e eVar2 = eVar;
            kotlin.reflect.jvm.internal.impl.descriptors.impl.x a3 = kotlin.reflect.jvm.internal.impl.resolve.c.a(eVar2, a2.getAnnotations(), false, false, false, a2.getSource());
            a3.f37586c = a2;
            a3.a(eVar.g());
            kotlin.jvm.internal.p.b(a3, "createGetter(\n            propertyDescriptor, getterMethod.annotations, /* isDefault = */false,\n            /* isExternal = */ false, /* isInline = */ false, getterMethod.source\n        ).apply {\n            initialSignatureDescriptor = getterMethod\n            initialize(propertyDescriptor.type)\n        }");
            if (asVar != null) {
                List<ba> valueParameters = asVar.getValueParameters();
                kotlin.jvm.internal.p.b(valueParameters, "setterMethod.valueParameters");
                ba baVar = (ba) kotlin.a.n.f((List<? extends Object>) valueParameters);
                if (baVar != null) {
                    yVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(eVar2, asVar.getAnnotations(), baVar.getAnnotations(), false, false, false, asVar.getVisibility(), asVar.getSource());
                    yVar.f37586c = asVar;
                } else {
                    throw new AssertionError(kotlin.jvm.internal.p.a("No parameter found for ", (Object) asVar));
                }
            }
            eVar.a(a3, yVar);
            return eVar;
        }
        StringBuilder sb = new StringBuilder("Different accessors modalities when creating overrides for ");
        sb.append(anVar);
        sb.append(" in ");
        sb.append(this.f37819a);
        sb.append("for getter is ");
        sb.append(a2.getModality());
        sb.append(", but for setter is ");
        if (asVar != null) {
            yVar2 = asVar.getModality();
        }
        sb.append(yVar2);
        throw new AssertionError(sb.toString());
    }

    private final boolean d(as asVar) {
        as e2 = e(asVar);
        if (e2 == null) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.c.e name = asVar.getName();
        kotlin.jvm.internal.p.b(name, "name");
        Set<as> a2 = a(name);
        if (a2.isEmpty()) {
            return false;
        }
        for (as asVar2 : a2) {
            if (asVar2.isSuspend() && a((kotlin.reflect.jvm.internal.impl.descriptors.a) e2, (kotlin.reflect.jvm.internal.impl.descriptors.a) asVar2)) {
                return true;
            }
        }
        return false;
    }

    private final Collection<KotlinType> e() {
        if (!this.i) {
            return this.f37854d.f37882a.u.getKotlinTypeRefiner().refineSupertypes(this.f37819a);
        }
        Collection<KotlinType> supertypes = this.f37819a.getTypeConstructor().mo7371getSupertypes();
        kotlin.jvm.internal.p.b(supertypes, "ownerDescriptor.typeConstructor.supertypes");
        return supertypes;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.descriptors.as e(kotlin.reflect.jvm.internal.impl.descriptors.as r5) {
        /*
            r4 = this;
            r0 = r5
            java.util.List r0 = r0.getValueParameters()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r6
            java.lang.Object r0 = kotlin.a.n.h(r0)
            kotlin.reflect.jvm.internal.impl.descriptors.ba r0 = (kotlin.reflect.jvm.internal.impl.descriptors.ba) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006e
            r0 = r7
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r0.g()
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.g r0 = r0.getDeclarationDescriptor()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0032
            r0 = 0
            r6 = r0
            goto L_0x003a
        L_0x0032:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.k) r0
            kotlin.reflect.jvm.internal.impl.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(r0)
            r6 = r0
        L_0x003a:
            r0 = r6
            if (r0 != 0) goto L_0x0043
        L_0x003e:
            r0 = 0
            r6 = r0
            goto L_0x005b
        L_0x0043:
            r0 = r6
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x004d
            goto L_0x004f
        L_0x004d:
            r0 = 0
            r6 = r0
        L_0x004f:
            r0 = r6
            if (r0 != 0) goto L_0x0056
            goto L_0x003e
        L_0x0056:
            r0 = r6
            kotlin.reflect.jvm.internal.impl.c.b r0 = r0.c()
            r6 = r0
        L_0x005b:
            r0 = r4
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g r0 = r0.f37854d
            r8 = r0
            r0 = r6
            r1 = 0
            boolean r0 = kotlin.reflect.jvm.internal.impl.builtins.k.a(r0, r1)
            if (r0 == 0) goto L_0x006e
            r0 = r7
            r6 = r0
            goto L_0x0070
        L_0x006e:
            r0 = 0
            r6 = r0
        L_0x0070:
            r0 = r6
            if (r0 != 0) goto L_0x0076
            r0 = 0
            return r0
        L_0x0076:
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.newCopyBuilder()
            r7 = r0
            r0 = r5
            java.util.List r0 = r0.getValueParameters()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r7
            r1 = r5
            java.util.List r1 = kotlin.a.n.k(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.setValueParameters(r1)
            r1 = r6
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.g()
            java.util.List r1 = r1.getArguments()
            r2 = 0
            java.lang.Object r1 = r1.get(r2)
            kotlin.reflect.jvm.internal.impl.types.TypeProjection r1 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection) r1
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            kotlin.reflect.jvm.internal.impl.descriptors.w$a r0 = r0.setReturnType(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.w r0 = r0.build()
            kotlin.reflect.jvm.internal.impl.descriptors.as r0 = (kotlin.reflect.jvm.internal.impl.descriptors.as) r0
            r5 = r0
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.impl.aa r0 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.aa) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00c8
            r0 = r6
            r1 = 1
            r0.setSuspend(r1)
        L_0x00c8:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f.e(kotlin.reflect.jvm.internal.impl.descriptors.as):kotlin.reflect.jvm.internal.impl.descriptors.as");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<kotlin.reflect.jvm.internal.impl.c.e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        if (this.h.k()) {
            return getFunctionNames();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f.invoke().b());
        Collection<KotlinType> supertypes = this.f37819a.getTypeConstructor().mo7371getSupertypes();
        kotlin.jvm.internal.p.b(supertypes, "ownerDescriptor.typeConstructor.supertypes");
        for (KotlinType kotlinType : supertypes) {
            kotlin.a.n.a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getVariableNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<kotlin.reflect.jvm.internal.impl.c.e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> function1) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        return ap.a((Set) this.j.invoke(), (Iterable) this.k.invoke().keySet());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final aq a() {
        return kotlin.reflect.jvm.internal.impl.resolve.d.a((kotlin.reflect.jvm.internal.impl.descriptors.k) this.f37819a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final i.a a(q method, List<? extends TypeParameterDescriptor> methodTypeParameters, KotlinType returnType, List<? extends ba> valueParameters) {
        kotlin.jvm.internal.p.d(method, "method");
        kotlin.jvm.internal.p.d(methodTypeParameters, "methodTypeParameters");
        kotlin.jvm.internal.p.d(returnType, "returnType");
        kotlin.jvm.internal.p.d(valueParameters, "valueParameters");
        j.a a2 = this.f37854d.f37882a.e.a(method, this.f37819a, returnType, valueParameters, methodTypeParameters);
        kotlin.jvm.internal.p.b(a2, "c.components.signaturePropagator.resolvePropagatedSignature(\n            method, ownerDescriptor, returnType, null, valueParameters, methodTypeParameters\n        )");
        KotlinType kotlinType = a2.f37741a;
        if (kotlinType == null) {
            j.a.a(4);
        }
        kotlin.jvm.internal.p.b(kotlinType, "propagated.returnType");
        KotlinType kotlinType2 = a2.f37742b;
        List<ba> list = a2.f37743c;
        if (list == null) {
            j.a.a(5);
        }
        kotlin.jvm.internal.p.b(list, "propagated.valueParameters");
        List<TypeParameterDescriptor> list2 = a2.f37744d;
        if (list2 == null) {
            j.a.a(6);
        }
        kotlin.jvm.internal.p.b(list2, "propagated.typeParameters");
        boolean z = a2.f;
        List<String> list3 = a2.e;
        if (list3 == null) {
            j.a.a(7);
        }
        kotlin.jvm.internal.p.b(list3, "propagated.errors");
        return new i.a(kotlinType, kotlinType2, list, list2, z, list3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void a(Collection<as> result, kotlin.reflect.jvm.internal.impl.c.e name) {
        boolean z;
        kotlin.jvm.internal.p.d(result, "result");
        kotlin.jvm.internal.p.d(name, "name");
        Set<as> a2 = a(name);
        kotlin.reflect.jvm.internal.impl.load.java.d dVar = kotlin.reflect.jvm.internal.impl.load.java.d.f37764a;
        if (!kotlin.reflect.jvm.internal.impl.load.java.d.a(name)) {
            kotlin.reflect.jvm.internal.impl.load.java.e eVar = kotlin.reflect.jvm.internal.impl.load.java.e.f37766a;
            if (!kotlin.reflect.jvm.internal.impl.load.java.e.a(name)) {
                Set<as> set = a2;
                if (!set.isEmpty()) {
                    for (w wVar : set) {
                        if (wVar.isSuspend()) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : set) {
                        if (a((as) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    a(result, name, (Collection<? extends as>) arrayList, false);
                    return;
                }
            }
        }
        i.b bVar = kotlin.reflect.jvm.internal.impl.utils.i.f38529a;
        kotlin.reflect.jvm.internal.impl.utils.i a3 = i.b.a();
        Collection<? extends as> a4 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(name, a2, kotlin.a.z.f36608a, this.f37819a, o.f38456b, this.f37854d.f37882a.u.getOverridingUtil());
        kotlin.jvm.internal.p.b(a4, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, emptyList(), ownerDescriptor, ErrorReporter.DO_NOTHING,\n            c.components.kotlinTypeChecker.overridingUtil\n        )");
        a(name, result, a4, result, new b(this));
        a(name, result, a4, a3, new c(this));
        Set<as> set2 = a2;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : set2) {
            if (a((as) obj2)) {
                arrayList2.add(obj2);
            }
        }
        a(result, name, (Collection<? extends as>) kotlin.a.n.b((Collection) arrayList2, (Iterable) a3), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void a(kotlin.reflect.jvm.internal.impl.c.e name, Collection<an> result) {
        LinkedHashSet linkedHashSet;
        q qVar;
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(result, "result");
        if (this.h.k() && (qVar = (q) kotlin.a.n.e(this.f.invoke().a(name))) != null) {
            kotlin.reflect.jvm.internal.impl.load.java.b.g a2 = kotlin.reflect.jvm.internal.impl.load.java.b.g.a(this.f37819a, kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(this.f37854d, qVar), kotlin.reflect.jvm.internal.impl.descriptors.y.FINAL, z.a(qVar.q()), false, qVar.h(), this.f37854d.f37882a.j.a(qVar), false);
            kotlin.jvm.internal.p.b(a2, "create(\n            ownerDescriptor, annotations, modality, method.visibility.toDescriptorVisibility(),\n            /* isVar = */ false, method.name, c.components.sourceElementFactory.source(method),\n            /* isStaticFinal = */ false\n        )");
            kotlin.reflect.jvm.internal.impl.load.java.b.g gVar = a2;
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            kotlin.reflect.jvm.internal.impl.descriptors.impl.x a3 = kotlin.reflect.jvm.internal.impl.resolve.c.a(gVar, g.a.a());
            kotlin.jvm.internal.p.b(a3, "createDefaultGetter(propertyDescriptor, Annotations.EMPTY)");
            a2.a(a3, (kotlin.reflect.jvm.internal.impl.descriptors.ap) null);
            KotlinType a4 = a(qVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(this.f37854d, a2, qVar, 0));
            a2.a(a4, kotlin.a.z.f36608a, a(), (aq) null);
            a3.a(a4);
            result.add(a2);
        }
        Set<an> minus = b(name);
        if (!minus.isEmpty()) {
            i.b bVar = kotlin.reflect.jvm.internal.impl.utils.i.f38529a;
            kotlin.reflect.jvm.internal.impl.utils.i a5 = i.b.a();
            i.b bVar2 = kotlin.reflect.jvm.internal.impl.utils.i.f38529a;
            kotlin.reflect.jvm.internal.impl.utils.i a6 = i.b.a();
            a(minus, result, a5, new d());
            kotlin.reflect.jvm.internal.impl.utils.i elements = a5;
            kotlin.jvm.internal.p.d(minus, "$this$minus");
            kotlin.jvm.internal.p.d(elements, "elements");
            Set<an> set = minus;
            Collection<?> a7 = kotlin.a.n.a((Iterable) elements, (Iterable) set);
            if (a7.isEmpty()) {
                linkedHashSet = kotlin.a.n.j(set);
            } else if (a7 instanceof Set) {
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                for (Object obj : set) {
                    if (!a7.contains(obj)) {
                        linkedHashSet2.add(obj);
                    }
                }
                linkedHashSet = linkedHashSet2;
            } else {
                LinkedHashSet linkedHashSet3 = new LinkedHashSet(minus);
                linkedHashSet3.removeAll(a7);
                linkedHashSet = linkedHashSet3;
            }
            a(linkedHashSet, a6, (Set<an>) null, new e());
            Collection<? extends an> a8 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(name, ap.a((Set) minus, (Iterable) a6), result, this.f37819a, this.f37854d.f37882a.f, this.f37854d.f37882a.u.getOverridingUtil());
            kotlin.jvm.internal.p.b(a8, "resolveOverridesForNonStaticMembers(\n                name,\n                propertiesFromSupertypes + propertiesOverridesFromSuperTypes,\n                result,\n                ownerDescriptor,\n                c.components.errorReporter,\n                c.components.kotlinTypeChecker.overridingUtil\n            )");
            result.addAll(a8);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final boolean a(kotlin.reflect.jvm.internal.impl.load.java.b.f fVar) {
        kotlin.jvm.internal.p.d(fVar, "<this>");
        if (this.h.k()) {
            return false;
        }
        return a((as) fVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* synthetic */ Set b(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1 function1) {
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        Collection<KotlinType> supertypes = this.f37819a.getTypeConstructor().mo7371getSupertypes();
        kotlin.jvm.internal.p.b(supertypes, "ownerDescriptor.typeConstructor.supertypes");
        Collection<KotlinType> collection = supertypes;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (KotlinType kotlinType : collection) {
            kotlin.a.n.a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getFunctionNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f.invoke().a());
        linkedHashSet2.addAll(this.f.invoke().c());
        linkedHashSet2.addAll(a(kindFilter, function1));
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        return this.f37819a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void b(Collection<as> result, kotlin.reflect.jvm.internal.impl.c.e name) {
        kotlin.jvm.internal.p.d(result, "result");
        kotlin.jvm.internal.p.d(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b c() {
        return new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a(this.h, a.f37821a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final kotlin.reflect.jvm.internal.impl.descriptors.g getContributedClassifier(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.reflect.jvm.internal.impl.f.h<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.impl.e> hVar;
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        recordLookup(name, location);
        f fVar = (f) this.e;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.e eVar = null;
        if (!(fVar == null || (hVar = fVar.l) == null)) {
            eVar = hVar.invoke(name);
        }
        return eVar == null ? this.l.invoke(name) : eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<as> getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        recordLookup(name, location);
        return super.getContributedFunctions(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<an> getContributedVariables(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        recordLookup(name, location);
        return super.getContributedVariables(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        kotlin.reflect.jvm.internal.impl.a.a.a(this.f37854d.f37882a.n, location, this.f37819a, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    public final String toString() {
        return kotlin.jvm.internal.p.a("Lazy Java member scope for ", (Object) this.h.e());
    }
}
