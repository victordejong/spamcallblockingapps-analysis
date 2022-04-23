package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.a.e;
import kotlin.reflect.jvm.internal.impl.builtins.a.f;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.s;
import kotlin.reflect.jvm.internal.impl.load.kotlin.t;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.utils.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g.class */
public final class g implements kotlin.reflect.jvm.internal.impl.descriptors.b.a, kotlin.reflect.jvm.internal.impl.descriptors.b.c {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37261a = {ac.a(new aa(ac.b(g.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), ac.a(new aa(ac.b(g.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), ac.a(new aa(ac.b(g.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};

    /* renamed from: b  reason: collision with root package name */
    private final ab f37262b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.builtins.a.d f37263c = kotlin.reflect.jvm.internal.impl.builtins.a.d.f37244a;

    /* renamed from: d  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.i f37264d;
    private final KotlinType e;
    private final kotlin.reflect.jvm.internal.impl.f.i f;
    private final kotlin.reflect.jvm.internal.impl.f.a<kotlin.reflect.jvm.internal.impl.c.b, kotlin.reflect.jvm.internal.impl.descriptors.d> g;
    private final kotlin.reflect.jvm.internal.impl.f.i h;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$a.class */
    enum a {
        HIDDEN,
        VISIBLE,
        NOT_CONSIDERED,
        DROP
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$b.class */
    public final /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37265a;

        static {
            int[] iArr = new int[a.values().length];
            iArr[a.HIDDEN.ordinal()] = 1;
            iArr[a.NOT_CONSIDERED.ordinal()] = 2;
            iArr[a.DROP.ordinal()] = 3;
            iArr[a.VISIBLE.ordinal()] = 4;
            f37265a = iArr;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$c.class */
    static final class c extends r implements Function0<SimpleType> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n f37267b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(n nVar) {
            super(0);
            this.f37267b = nVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            kotlin.reflect.jvm.internal.impl.c.a aVar;
            ab abVar = g.this.a().f37253a;
            e.a aVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.e.f37245a;
            aVar = kotlin.reflect.jvm.internal.impl.builtins.a.e.h;
            return v.a(abVar, aVar, new ad(this.f37267b, g.this.a().f37253a)).getDefaultType();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$d.class */
    public static final class d extends kotlin.reflect.jvm.internal.impl.descriptors.impl.v {
        d(ab abVar, kotlin.reflect.jvm.internal.impl.c.b bVar) {
            super(abVar, bVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ae
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.e.h a() {
            return h.c.f38297a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$e.class */
    static final class e extends r implements Function0<KotlinType> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ KotlinType invoke() {
            SimpleType g = g.this.f37262b.getBuiltIns().g();
            p.b(g, "moduleDescriptor.builtIns.anyType");
            return g;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$f.class */
    static final class f extends r implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LazyJavaClassDescriptor f37269a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d f37270b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(LazyJavaClassDescriptor lazyJavaClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            super(0);
            this.f37269a = lazyJavaClassDescriptor;
            this.f37270b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
            LazyJavaClassDescriptor lazyJavaClassDescriptor = this.f37269a;
            kotlin.reflect.jvm.internal.impl.load.java.a.g javaResolverCache = kotlin.reflect.jvm.internal.impl.load.java.a.g.f37735a;
            p.b(javaResolverCache, "EMPTY");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f37270b;
            p.d(javaResolverCache, "javaResolverCache");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar = lazyJavaClassDescriptor.f37795c;
            kotlin.reflect.jvm.internal.impl.load.java.lazy.b bVar = lazyJavaClassDescriptor.f37795c.f37882a;
            p.d(javaResolverCache, "javaResolverCache");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.b components = new kotlin.reflect.jvm.internal.impl.load.java.lazy.b(bVar.f37782a, bVar.f37783b, bVar.f37784c, bVar.f37785d, bVar.e, bVar.f, javaResolverCache, bVar.h, bVar.i, bVar.j, bVar.k, bVar.l, bVar.m, bVar.n, bVar.o, bVar.p, bVar.q, bVar.r, bVar.s, bVar.t, bVar.u, bVar.v);
            p.d(gVar, "<this>");
            p.d(components, "components");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar2 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.g(components, gVar.f37883b, gVar.f37884c);
            kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration = lazyJavaClassDescriptor.getContainingDeclaration();
            p.b(containingDeclaration, "containingDeclaration");
            return new LazyJavaClassDescriptor(gVar2, containingDeclaration, lazyJavaClassDescriptor.f37794b, dVar);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.g$g  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$g.class */
    static final class C0666g extends r implements Function1<kotlin.reflect.jvm.internal.impl.resolve.e.h, Collection<? extends as>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.e f37271a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0666g(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            super(1);
            this.f37271a = eVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.resolve.e.h hVar) {
            kotlin.reflect.jvm.internal.impl.resolve.e.h it2 = hVar;
            p.d(it2, "it");
            return it2.getContributedFunctions(this.f37271a, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_BUILTINS);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$h.class */
    static final class h implements b.c<kotlin.reflect.jvm.internal.impl.descriptors.d> {
        h() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        public final /* synthetic */ Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.d> getNeighbors(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            Collection<KotlinType> supertypes = dVar.getTypeConstructor().mo7371getSupertypes();
            p.b(supertypes, "it.typeConstructor.supertypes");
            Collection<KotlinType> collection = supertypes;
            g gVar = g.this;
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : collection) {
                kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                LazyJavaClassDescriptor lazyJavaClassDescriptor = null;
                kotlin.reflect.jvm.internal.impl.descriptors.g original = declarationDescriptor == null ? null : declarationDescriptor.getOriginal();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = original instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) original : null;
                if (dVar2 != null) {
                    lazyJavaClassDescriptor = gVar.d(dVar2);
                }
                if (lazyJavaClassDescriptor != null) {
                    arrayList.add(lazyJavaClassDescriptor);
                }
            }
            return arrayList;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$i.class */
    public static final class i extends b.a<kotlin.reflect.jvm.internal.impl.descriptors.d, a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37273a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ab.e<a> f37274b;

        i(String str, ab.e<a> eVar) {
            this.f37273a = str;
            this.f37274b = eVar;
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        /* JADX WARN: Type inference failed for: r1v6, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        /* JADX WARN: Type inference failed for: r1v7, types: [kotlin.reflect.jvm.internal.impl.builtins.a.g$a, T] */
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.a, kotlin.reflect.jvm.internal.impl.utils.b.d
        public final /* synthetic */ boolean beforeChildren(Object obj) {
            kotlin.reflect.jvm.internal.impl.descriptors.d javaClassDescriptor = (kotlin.reflect.jvm.internal.impl.descriptors.d) obj;
            p.d(javaClassDescriptor, "javaClassDescriptor");
            String a2 = s.a(kotlin.reflect.jvm.internal.impl.load.kotlin.v.f38097a, javaClassDescriptor, this.f37273a);
            kotlin.reflect.jvm.internal.impl.builtins.a.i iVar = kotlin.reflect.jvm.internal.impl.builtins.a.i.f37278a;
            if (kotlin.reflect.jvm.internal.impl.builtins.a.i.b().contains(a2)) {
                this.f37274b.f36780a = a.HIDDEN;
            } else {
                kotlin.reflect.jvm.internal.impl.builtins.a.i iVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.i.f37278a;
                if (kotlin.reflect.jvm.internal.impl.builtins.a.i.c().contains(a2)) {
                    this.f37274b.f36780a = a.VISIBLE;
                } else {
                    kotlin.reflect.jvm.internal.impl.builtins.a.i iVar3 = kotlin.reflect.jvm.internal.impl.builtins.a.i.f37278a;
                    if (kotlin.reflect.jvm.internal.impl.builtins.a.i.a().contains(a2)) {
                        this.f37274b.f36780a = a.DROP;
                    }
                }
            }
            return this.f37274b.f36780a == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public final /* bridge */ /* synthetic */ Object result() {
            a aVar = this.f37274b.f36780a;
            a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = a.NOT_CONSIDERED;
            }
            return aVar2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$j.class */
    static final class j implements b.c<kotlin.reflect.jvm.internal.impl.descriptors.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f37275a = new j();

        j() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        public final /* synthetic */ Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> getNeighbors(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            return bVar.getOriginal().getOverriddenDescriptors();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$k.class */
    static final class k extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {
        k() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            boolean z;
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = bVar;
            if (bVar2.getKind() == b.a.DECLARATION) {
                kotlin.reflect.jvm.internal.impl.builtins.a.d unused = g.this.f37263c;
                if (kotlin.reflect.jvm.internal.impl.builtins.a.d.a((kotlin.reflect.jvm.internal.impl.descriptors.d) bVar2.getContainingDeclaration())) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/g$l.class */
    static final class l extends r implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.a.g> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a.g invoke() {
            kotlin.reflect.jvm.internal.impl.descriptors.a.c a2 = kotlin.reflect.jvm.internal.impl.descriptors.a.f.a(g.this.f37262b.getBuiltIns(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version");
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            return g.a.a(kotlin.a.n.a(a2));
        }
    }

    public g(kotlin.reflect.jvm.internal.impl.descriptors.ab moduleDescriptor, n storageManager, Function0<f.b> settingsComputation) {
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(storageManager, "storageManager");
        p.d(settingsComputation, "settingsComputation");
        this.f37262b = moduleDescriptor;
        this.f37264d = storageManager.a(settingsComputation);
        kotlin.reflect.jvm.internal.impl.descriptors.impl.f fVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.f(new d(moduleDescriptor, new kotlin.reflect.jvm.internal.impl.c.b("java.io")), kotlin.reflect.jvm.internal.impl.c.e.a("Serializable"), y.ABSTRACT, kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE, kotlin.a.n.a(new LazyWrappedType(storageManager, new e())), at.f37401a, false, storageManager);
        fVar.initialize(h.c.f38297a, kotlin.a.ab.f36567a, null);
        SimpleType defaultType = fVar.getDefaultType();
        p.b(defaultType, "mockSerializableClass.defaultType");
        this.e = defaultType;
        this.f = storageManager.a(new c(storageManager));
        this.g = storageManager.b();
        this.h = storageManager.a(new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f.b a() {
        return (f.b) m.a(this.f37264d, f37261a[0]);
    }

    private final SimpleType b() {
        return (SimpleType) m.a(this.f, f37261a[1]);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g c() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.a.g) m.a(this.h, f37261a[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LazyJavaClassDescriptor d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (kotlin.reflect.jvm.internal.impl.builtins.g.d(dVar)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = dVar;
        if (!kotlin.reflect.jvm.internal.impl.builtins.g.b((kotlin.reflect.jvm.internal.impl.descriptors.k) dVar2)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.c.c a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.k) dVar2);
        if (!a2.b()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.builtins.a.c cVar = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
        kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.builtins.a.c.a(a2);
        kotlin.reflect.jvm.internal.impl.c.b f2 = a3 == null ? null : a3.f();
        if (f2 == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d a4 = q.a(a().f37253a, f2, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_BUILTINS);
        if (a4 instanceof LazyJavaClassDescriptor) {
            return (LazyJavaClassDescriptor) a4;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x0530, code lost:
        if (r0 != 3) goto L_0x055a;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x042f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x024d  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.as> a(kotlin.reflect.jvm.internal.impl.c.e r8, kotlin.reflect.jvm.internal.impl.descriptors.d r9) {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.a.g.a(kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.d):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
    public final Collection<KotlinType> a(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        p.d(classDescriptor, "classDescriptor");
        kotlin.reflect.jvm.internal.impl.c.c a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.k) classDescriptor);
        kotlin.reflect.jvm.internal.impl.builtins.a.i iVar = kotlin.reflect.jvm.internal.impl.builtins.a.i.f37278a;
        if (kotlin.reflect.jvm.internal.impl.builtins.a.i.b(a2)) {
            SimpleType cloneableType = b();
            p.b(cloneableType, "cloneableType");
            return kotlin.a.n.b((Object[]) new KotlinType[]{cloneableType, this.e});
        }
        kotlin.reflect.jvm.internal.impl.builtins.a.i iVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.i.f37278a;
        return kotlin.reflect.jvm.internal.impl.builtins.a.i.a(a2) ? kotlin.a.n.a(this.e) : z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.c
    public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, as functionDescriptor) {
        p.d(classDescriptor, "classDescriptor");
        p.d(functionDescriptor, "functionDescriptor");
        LazyJavaClassDescriptor d2 = d(classDescriptor);
        if (d2 == null || !functionDescriptor.getAnnotations().b(kotlin.reflect.jvm.internal.impl.descriptors.b.d.a())) {
            return true;
        }
        if (!a().f37254b) {
            return false;
        }
        String a2 = t.a(functionDescriptor, false, false, 3);
        kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f a3 = d2.a();
        kotlin.reflect.jvm.internal.impl.c.e name = functionDescriptor.getName();
        p.b(name, "functionDescriptor.name");
        Collection<as> contributedFunctions = a3.getContributedFunctions(name, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_BUILTINS);
        if ((contributedFunctions instanceof Collection) && contributedFunctions.isEmpty()) {
            return false;
        }
        for (as asVar : contributedFunctions) {
            if (p.a((Object) t.a(asVar, false, false, 3), (Object) a2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01ae  */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> b(kotlin.reflect.jvm.internal.impl.descriptors.d r9) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.a.g.b(kotlin.reflect.jvm.internal.impl.descriptors.d):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
    public final /* synthetic */ Collection c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        kotlin.a.ab abVar;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.f a2;
        p.d(classDescriptor, "classDescriptor");
        if (!a().f37254b) {
            abVar = kotlin.a.ab.f36567a;
        } else {
            LazyJavaClassDescriptor d2 = d(classDescriptor);
            Set<kotlin.reflect.jvm.internal.impl.c.e> functionNames = (d2 == null || (a2 = d2.a()) == null) ? null : a2.getFunctionNames();
            abVar = functionNames;
            if (functionNames == null) {
                abVar = kotlin.a.ab.f36567a;
            }
        }
        return abVar;
    }
}
