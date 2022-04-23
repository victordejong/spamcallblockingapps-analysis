package kotlin.reflect.jvm.internal.impl.resolve.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.types.checker.Ref;
import kotlin.reflect.jvm.internal.impl.utils.b;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.e f38224a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$a.class */
    static final class C0705a implements b.c<ba> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0705a f38226a = new C0705a();

        C0705a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        public final /* synthetic */ Iterable<? extends ba> getNeighbors(ba baVar) {
            Collection<ba> overriddenDescriptors = baVar.getOverriddenDescriptors();
            ArrayList arrayList = new ArrayList(n.a(overriddenDescriptors, 10));
            for (ba baVar2 : overriddenDescriptors) {
                arrayList.add(baVar2.e());
            }
            return arrayList;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$b.class */
    final /* synthetic */ class b extends m implements Function1<ba, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38227a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "declaresDefaultValue";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(ba.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "declaresDefaultValue()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(ba baVar) {
            ba p0 = baVar;
            p.d(p0, "p0");
            return Boolean.valueOf(p0.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$c.class */
    public static final class c implements b.c<kotlin.reflect.jvm.internal.impl.descriptors.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38228a;

        c(boolean z) {
            this.f38228a = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        public final /* synthetic */ Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> getNeighbors(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = bVar;
            Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> collection = null;
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar3 = bVar2;
            if (this.f38228a) {
                bVar3 = bVar2 == null ? null : bVar2.getOriginal();
            }
            if (bVar3 != null) {
                collection = bVar3.getOverriddenDescriptors();
            }
            return collection == null ? z.f36608a : collection;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$d.class */
    public static final class d extends b.a<kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ab.e<kotlin.reflect.jvm.internal.impl.descriptors.b> f38229a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> f38230b;

        /* JADX WARN: Multi-variable type inference failed */
        d(ab.e<kotlin.reflect.jvm.internal.impl.descriptors.b> eVar, Function1<? super kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> function1) {
            this.f38229a = eVar;
            this.f38230b = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.b] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.a, kotlin.reflect.jvm.internal.impl.utils.b.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ void afterChildren(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                kotlin.reflect.jvm.internal.impl.descriptors.b r0 = (kotlin.reflect.jvm.internal.impl.descriptors.b) r0
                r4 = r0
                r0 = r4
                java.lang.String r1 = "current"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r3
                kotlin.jvm.internal.ab$e<kotlin.reflect.jvm.internal.impl.descriptors.b> r0 = r0.f38229a
                T r0 = r0.f36780a
                if (r0 != 0) goto L_0x0030
                r0 = r3
                kotlin.jvm.functions.Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, java.lang.Boolean> r0 = r0.f38230b
                r1 = r4
                java.lang.Object r0 = r0.invoke(r1)
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L_0x0030
                r0 = r3
                kotlin.jvm.internal.ab$e<kotlin.reflect.jvm.internal.impl.descriptors.b> r0 = r0.f38229a
                r1 = r4
                r0.f36780a = r1
            L_0x0030:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.b.a.d.afterChildren(java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.a, kotlin.reflect.jvm.internal.impl.utils.b.d
        public final /* synthetic */ boolean beforeChildren(Object obj) {
            kotlin.reflect.jvm.internal.impl.descriptors.b current = (kotlin.reflect.jvm.internal.impl.descriptors.b) obj;
            p.d(current, "current");
            return this.f38229a.f36780a == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public final /* bridge */ /* synthetic */ Object result() {
            return this.f38229a.f36780a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b/a$e.class */
    static final class e extends r implements Function1<k, k> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f38231a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ k invoke(k kVar) {
            k it2 = kVar;
            p.d(it2, "it");
            return it2.getContainingDeclaration();
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a("value");
        p.b(a2, "identifier(\"value\")");
        f38224a = a2;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.a a(g gVar) {
        k containingDeclaration;
        kotlin.reflect.jvm.internal.impl.c.a a2;
        if (gVar == null || (containingDeclaration = gVar.getContainingDeclaration()) == null) {
            return null;
        }
        if (containingDeclaration instanceof ae) {
            return new kotlin.reflect.jvm.internal.impl.c.a(((ae) containingDeclaration).c(), gVar.getName());
        }
        if (!(containingDeclaration instanceof h) || (a2 = a((g) containingDeclaration)) == null) {
            return null;
        }
        return a2.a(gVar.getName());
    }

    public static final kotlin.reflect.jvm.internal.impl.c.c a(k kVar) {
        p.d(kVar, "<this>");
        kotlin.reflect.jvm.internal.impl.c.c c2 = kotlin.reflect.jvm.internal.impl.resolve.d.c(kVar);
        p.b(c2, "getFqName(this)");
        return c2;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.b a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        p.d(bVar, "<this>");
        an anVar = bVar;
        if (bVar instanceof am) {
            an correspondingProperty = ((am) bVar).b();
            p.b(correspondingProperty, "correspondingProperty");
            anVar = correspondingProperty;
        }
        return anVar;
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.b a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, Function1 predicate) {
        p.d(bVar, "<this>");
        p.d(predicate, "predicate");
        return (kotlin.reflect.jvm.internal.impl.descriptors.b) kotlin.reflect.jvm.internal.impl.utils.b.a(n.a(bVar), new c(false), new d(new ab.e(), predicate));
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar) {
        p.d(cVar, "<this>");
        g declarationDescriptor = cVar.a().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor;
        }
        return null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.descriptors.ab abVar, kotlin.reflect.jvm.internal.impl.c.b topLevelClassFqName, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(abVar, "<this>");
        p.d(topLevelClassFqName, "topLevelClassFqName");
        p.d(location, "location");
        boolean c2 = topLevelClassFqName.c();
        if (!x.f38657a || (!c2)) {
            kotlin.reflect.jvm.internal.impl.c.b d2 = topLevelClassFqName.d();
            p.b(d2, "topLevelClassFqName.parent()");
            kotlin.reflect.jvm.internal.impl.resolve.e.h b2 = abVar.getPackage(d2).b();
            kotlin.reflect.jvm.internal.impl.c.e e2 = topLevelClassFqName.e();
            p.b(e2, "topLevelClassFqName.shortName()");
            g contributedClassifier = b2.getContributedClassifier(e2, location);
            if (contributedClassifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return (kotlin.reflect.jvm.internal.impl.descriptors.d) contributedClassifier;
            }
            return null;
        }
        throw new AssertionError("Assertion failed");
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        p.d(dVar, "<this>");
        for (KotlinType kotlinType : dVar.getDefaultType().getConstructor().mo7371getSupertypes()) {
            if (!kotlin.reflect.jvm.internal.impl.builtins.g.o(kotlinType)) {
                g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                if (kotlin.reflect.jvm.internal.impl.resolve.d.m(declarationDescriptor)) {
                    Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    return (kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor;
                }
            }
        }
        return null;
    }

    public static final KotlinTypeRefiner a(kotlin.reflect.jvm.internal.impl.descriptors.ab abVar) {
        p.d(abVar, "<this>");
        Ref ref = (Ref) abVar.getCapability(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        KotlinTypeRefiner kotlinTypeRefiner = ref == null ? null : (KotlinTypeRefiner) ref.getValue();
        KotlinTypeRefiner.Default r4 = kotlinTypeRefiner;
        if (kotlinTypeRefiner == null) {
            r4 = KotlinTypeRefiner.Default.INSTANCE;
        }
        return r4;
    }

    public static final boolean a(ba baVar) {
        p.d(baVar, "<this>");
        Boolean a2 = kotlin.reflect.jvm.internal.impl.utils.b.a(n.a(baVar), C0705a.f38226a, b.f38227a);
        p.b(a2, "ifAny(\n        listOf(this),\n        { current -> current.overriddenDescriptors.map(ValueParameterDescriptor::getOriginal) },\n        ValueParameterDescriptor::declaresDefaultValue\n    )");
        return a2.booleanValue();
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b b(k kVar) {
        p.d(kVar, "<this>");
        kotlin.reflect.jvm.internal.impl.c.b d2 = kotlin.reflect.jvm.internal.impl.resolve.d.d(kVar);
        p.b(d2, "getFqNameSafe(this)");
        return d2;
    }

    public static final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> b(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar) {
        p.d(cVar, "<this>");
        return (kotlin.reflect.jvm.internal.impl.resolve.constants.g) n.b((Iterable<? extends Object>) cVar.c().values());
    }

    public static final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.ab abVar) {
        p.d(abVar, "<this>");
        Ref ref = (Ref) abVar.getCapability(KotlinTypeRefinerKt.getREFINER_CAPABILITY());
        return (ref == null ? null : (KotlinTypeRefiner) ref.getValue()) != null;
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.ab c(k kVar) {
        p.d(kVar, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.ab f = kotlin.reflect.jvm.internal.impl.resolve.d.f(kVar);
        p.b(f, "getContainingModule(this)");
        return f;
    }

    public static final kotlin.reflect.jvm.internal.impl.builtins.g d(k kVar) {
        p.d(kVar, "<this>");
        return c(kVar).getBuiltIns();
    }

    public static final kotlin.g.h<k> e(k kVar) {
        p.d(kVar, "<this>");
        p.d(kVar, "<this>");
        return kotlin.g.k.a(kotlin.g.k.a(kVar, e.f38231a), 1);
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b f(k kVar) {
        p.d(kVar, "<this>");
        kotlin.reflect.jvm.internal.impl.c.c a2 = a(kVar);
        if (!a2.b()) {
            a2 = null;
        }
        if (a2 == null) {
            return null;
        }
        return a2.c();
    }
}
