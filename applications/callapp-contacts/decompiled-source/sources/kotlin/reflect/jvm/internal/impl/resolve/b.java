package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.a.n;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f38223a = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$a.class */
    public static final class a extends r implements Function2<k, k, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38225a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Boolean invoke(k kVar, k kVar2) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$b.class */
    public static final class C0706b implements KotlinTypeChecker.TypeConstructorEquality {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f38233b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a f38234c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a f38235d;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$b$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$b$1.class */
        static final class AnonymousClass1 extends r implements Function2<k, k, Boolean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a f38236a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a f38237b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
                super(2);
                this.f38236a = aVar;
                this.f38237b = aVar2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ Boolean invoke(k kVar, k kVar2) {
                return Boolean.valueOf(p.a(kVar, this.f38236a) && p.a(kVar2, this.f38237b));
            }
        }

        C0706b(boolean z, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            this.f38233b = z;
            this.f38234c = aVar;
            this.f38235d = aVar2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
        public final boolean equals(TypeConstructor c1, TypeConstructor c2) {
            p.d(c1, "c1");
            p.d(c2, "c2");
            if (p.a(c1, c2)) {
                return true;
            }
            g declarationDescriptor = c1.getDeclarationDescriptor();
            g declarationDescriptor2 = c2.getDeclarationDescriptor();
            if (!(declarationDescriptor instanceof TypeParameterDescriptor) || !(declarationDescriptor2 instanceof TypeParameterDescriptor)) {
                return false;
            }
            return b.this.a((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, this.f38233b, new AnonymousClass1(this.f38234c, this.f38235d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$c.class */
    public static final class c extends r implements Function2<k, k, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38238a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Boolean invoke(k kVar, k kVar2) {
            return Boolean.FALSE;
        }
    }

    private b() {
    }

    private static at a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        while (aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.b) {
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar = (kotlin.reflect.jvm.internal.impl.descriptors.b) aVar;
            if (bVar.getKind() != b.a.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> overriddenDescriptors = bVar.getOverriddenDescriptors();
            p.b(overriddenDescriptors, "overriddenDescriptors");
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.b) n.e(overriddenDescriptors);
            if (bVar2 == null) {
                return null;
            }
            aVar = bVar2;
        }
        return aVar.getSource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, boolean z, Function2<? super k, ? super k, Boolean> function2) {
        if (p.a(typeParameterDescriptor, typeParameterDescriptor2)) {
            return true;
        }
        return !p.a(typeParameterDescriptor.getContainingDeclaration(), typeParameterDescriptor2.getContainingDeclaration()) && a(typeParameterDescriptor, typeParameterDescriptor2, function2, z) && typeParameterDescriptor.getIndex() == typeParameterDescriptor2.getIndex();
    }

    private final boolean a(k kVar, k kVar2, Function2<? super k, ? super k, Boolean> function2, boolean z) {
        k containingDeclaration = kVar.getContainingDeclaration();
        k containingDeclaration2 = kVar2.getContainingDeclaration();
        return ((containingDeclaration instanceof kotlin.reflect.jvm.internal.impl.descriptors.b) || (containingDeclaration2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.b)) ? function2.invoke(containingDeclaration, containingDeclaration2).booleanValue() : a(containingDeclaration, containingDeclaration2, z, true);
    }

    public final boolean a(k kVar, k kVar2, boolean z, boolean z2) {
        if ((kVar instanceof d) && (kVar2 instanceof d)) {
            return p.a(((d) kVar).getTypeConstructor(), ((d) kVar2).getTypeConstructor());
        }
        if ((kVar instanceof TypeParameterDescriptor) && (kVar2 instanceof TypeParameterDescriptor)) {
            return a((TypeParameterDescriptor) kVar, (TypeParameterDescriptor) kVar2, z, c.f38238a);
        }
        if (!(kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) || !(kVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            return (!(kVar instanceof ae) || !(kVar2 instanceof ae)) ? p.a(kVar, kVar2) : p.a(((ae) kVar).c(), ((ae) kVar2).c());
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a a2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar;
        kotlin.reflect.jvm.internal.impl.descriptors.a b2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar2;
        KotlinTypeRefiner.Default kotlinTypeRefiner = KotlinTypeRefiner.Default.INSTANCE;
        p.d(a2, "a");
        p.d(b2, "b");
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (p.a(a2, b2)) {
            return true;
        }
        if (!p.a(a2.getName(), b2.getName())) {
            return false;
        }
        if ((a2 instanceof x) && (b2 instanceof x) && ((x) a2).isExpect() != ((x) b2).isExpect()) {
            return false;
        }
        if (p.a(a2.getContainingDeclaration(), b2.getContainingDeclaration()) && (!z || !p.a(a(a2), a(b2)))) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = a2;
        if (d.b(aVar)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = b2;
        if (d.b(aVar2) || !a(aVar, aVar2, a.f38225a, z)) {
            return false;
        }
        OverridingUtil a3 = OverridingUtil.a(kotlinTypeRefiner, new C0706b(z, a2, b2));
        p.b(a3, "fun areCallableDescriptorsEquivalent(\n        a: CallableDescriptor,\n        b: CallableDescriptor,\n        allowCopiesFromTheSameDeclaration: Boolean,\n        distinguishExpectsAndNonExpects: Boolean = true,\n        ignoreReturnType: Boolean = false,\n        kotlinTypeRefiner: KotlinTypeRefiner\n    ): Boolean {\n        if (a == b) return true\n        if (a.name != b.name) return false\n        if (distinguishExpectsAndNonExpects && a is MemberDescriptor && b is MemberDescriptor && a.isExpect != b.isExpect) return false\n        if (a.containingDeclaration == b.containingDeclaration) {\n            if (!allowCopiesFromTheSameDeclaration) return false\n            if (a.singleSource() != b.singleSource()) return false\n        }\n\n        // Distinct locals are not equivalent\n        if (DescriptorUtils.isLocal(a) || DescriptorUtils.isLocal(b)) return false\n\n        if (!ownersEquivalent(a, b, { _, _ -> false }, allowCopiesFromTheSameDeclaration)) return false\n\n        val overridingUtil = OverridingUtil.create(kotlinTypeRefiner) eq@{ c1, c2 ->\n            if (c1 == c2) return@eq true\n\n            val d1 = c1.declarationDescriptor\n            val d2 = c2.declarationDescriptor\n\n            if (d1 !is TypeParameterDescriptor || d2 !is TypeParameterDescriptor) return@eq false\n\n            areTypeParametersEquivalent(d1, d2, allowCopiesFromTheSameDeclaration) { x, y -> x == a && y == b }\n        }\n\n        return overridingUtil.isOverridableBy(a, b, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n                && overridingUtil.isOverridableBy(b, a, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n\n    }");
        return a3.a(a2, b2, (d) null, true).b() == OverridingUtil.a.EnumC0703a.OVERRIDABLE && a3.a(b2, a2, (d) null, true).b() == OverridingUtil.a.EnumC0703a.OVERRIDABLE;
    }
}
