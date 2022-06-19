package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b.class */
public final class C19751b {

    /* renamed from: a */
    public static final C19751b f65938a = new C19751b();

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$a.class */
    public static final class C19752a extends AbstractC18526r implements Function2<AbstractC19193k, AbstractC19193k, Boolean> {

        /* renamed from: a */
        public static final C19752a f65939a = new C19752a();

        C19752a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Boolean invoke(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
            return Boolean.FALSE;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$b.class */
    public static final class C19753b implements KotlinTypeChecker.TypeConstructorEquality {

        /* renamed from: b */
        final /* synthetic */ boolean f65941b;

        /* renamed from: c */
        final /* synthetic */ AbstractC18973a f65942c;

        /* renamed from: d */
        final /* synthetic */ AbstractC18973a f65943d;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$b$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$b$1.class */
        static final class C197541 extends AbstractC18526r implements Function2<AbstractC19193k, AbstractC19193k, Boolean> {

            /* renamed from: a */
            final /* synthetic */ AbstractC18973a f65944a;

            /* renamed from: b */
            final /* synthetic */ AbstractC18973a f65945b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C197541(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
                super(2);
                this.f65944a = abstractC18973a;
                this.f65945b = abstractC18973a2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ Boolean invoke(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
                return Boolean.valueOf(C18524p.m3850a(abstractC19193k, this.f65944a) && C18524p.m3850a(abstractC19193k2, this.f65945b));
            }
        }

        C19753b(boolean z, AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2) {
            C19751b.this = r4;
            this.f65941b = z;
            this.f65942c = abstractC18973a;
            this.f65943d = abstractC18973a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
        public final boolean equals(TypeConstructor c1, TypeConstructor c2) {
            C18524p.m3840d(c1, "c1");
            C18524p.m3840d(c2, "c2");
            if (C18524p.m3850a(c1, c2)) {
                return true;
            }
            AbstractC19129g declarationDescriptor = c1.getDeclarationDescriptor();
            AbstractC19129g declarationDescriptor2 = c2.getDeclarationDescriptor();
            if ((declarationDescriptor instanceof TypeParameterDescriptor) && (declarationDescriptor2 instanceof TypeParameterDescriptor)) {
                return C19751b.this.m1545a((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, this.f65941b, new C197541(this.f65942c, this.f65943d));
            }
            return false;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/b$c.class */
    public static final class C19755c extends AbstractC18526r implements Function2<AbstractC19193k, AbstractC19193k, Boolean> {

        /* renamed from: a */
        public static final C19755c f65946a = new C19755c();

        C19755c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Boolean invoke(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
            return Boolean.FALSE;
        }
    }

    private C19751b() {
    }

    /* renamed from: a */
    private static AbstractC19026at m1544a(AbstractC18973a abstractC18973a) {
        while (abstractC18973a instanceof AbstractC19039b) {
            AbstractC19039b abstractC19039b = (AbstractC19039b) abstractC18973a;
            if (abstractC19039b.getKind() != AbstractC19039b.EnumC19040a.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends AbstractC19039b> overriddenDescriptors = abstractC19039b.getOverriddenDescriptors();
            C18524p.m3843b(overriddenDescriptors, "overriddenDescriptors");
            AbstractC19039b abstractC19039b2 = (AbstractC19039b) C18282n.m4124e(overriddenDescriptors);
            if (abstractC19039b2 == null) {
                return null;
            }
            abstractC18973a = abstractC19039b2;
        }
        return abstractC18973a.getSource();
    }

    /* renamed from: a */
    public final boolean m1545a(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, boolean z, Function2<? super AbstractC19193k, ? super AbstractC19193k, Boolean> function2) {
        if (C18524p.m3850a(typeParameterDescriptor, typeParameterDescriptor2)) {
            return true;
        }
        return !C18524p.m3850a(typeParameterDescriptor.getContainingDeclaration(), typeParameterDescriptor2.getContainingDeclaration()) && m1543a(typeParameterDescriptor, typeParameterDescriptor2, function2, z) && typeParameterDescriptor.getIndex() == typeParameterDescriptor2.getIndex();
    }

    /* renamed from: a */
    private final boolean m1543a(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2, Function2<? super AbstractC19193k, ? super AbstractC19193k, Boolean> function2, boolean z) {
        AbstractC19193k containingDeclaration = abstractC19193k.getContainingDeclaration();
        AbstractC19193k containingDeclaration2 = abstractC19193k2.getContainingDeclaration();
        return ((containingDeclaration instanceof AbstractC19039b) || (containingDeclaration2 instanceof AbstractC19039b)) ? function2.invoke(containingDeclaration, containingDeclaration2).booleanValue() : m1542a(containingDeclaration, containingDeclaration2, z, true);
    }

    /* renamed from: a */
    public final boolean m1542a(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2, boolean z, boolean z2) {
        if (!(abstractC19193k instanceof AbstractC19070d) || !(abstractC19193k2 instanceof AbstractC19070d)) {
            if ((abstractC19193k instanceof TypeParameterDescriptor) && (abstractC19193k2 instanceof TypeParameterDescriptor)) {
                return m1545a((TypeParameterDescriptor) abstractC19193k, (TypeParameterDescriptor) abstractC19193k2, z, C19755c.f65946a);
            }
            if (!(abstractC19193k instanceof AbstractC18973a) || !(abstractC19193k2 instanceof AbstractC18973a)) {
                return (!(abstractC19193k instanceof AbstractC19006ae) || !(abstractC19193k2 instanceof AbstractC19006ae)) ? C18524p.m3850a(abstractC19193k, abstractC19193k2) : C18524p.m3850a(((AbstractC19006ae) abstractC19193k).mo2542c(), ((AbstractC19006ae) abstractC19193k2).mo2542c());
            }
            AbstractC18973a a = (AbstractC18973a) abstractC19193k;
            AbstractC18973a b = (AbstractC18973a) abstractC19193k2;
            KotlinTypeRefiner.Default kotlinTypeRefiner = KotlinTypeRefiner.Default.INSTANCE;
            C18524p.m3840d(a, "a");
            C18524p.m3840d(b, "b");
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            if (C18524p.m3850a(a, b)) {
                return true;
            }
            if (!C18524p.m3850a(a.getName(), b.getName())) {
                return false;
            }
            if ((a instanceof AbstractC19221x) && (b instanceof AbstractC19221x) && ((AbstractC19221x) a).isExpect() != ((AbstractC19221x) b).isExpect()) {
                return false;
            }
            if (C18524p.m3850a(a.getContainingDeclaration(), b.getContainingDeclaration()) && (!z || !C18524p.m3850a(m1544a(a), m1544a(b)))) {
                return false;
            }
            AbstractC18973a abstractC18973a = a;
            if (C19807d.m1466b(abstractC18973a)) {
                return false;
            }
            AbstractC18973a abstractC18973a2 = b;
            if (C19807d.m1466b(abstractC18973a2) || !m1543a(abstractC18973a, abstractC18973a2, C19752a.f65939a, z)) {
                return false;
            }
            OverridingUtil m1561a = OverridingUtil.m1561a(kotlinTypeRefiner, new C19753b(z, a, b));
            C18524p.m3843b(m1561a, "fun areCallableDescriptorsEquivalent(\n        a: CallableDescriptor,\n        b: CallableDescriptor,\n        allowCopiesFromTheSameDeclaration: Boolean,\n        distinguishExpectsAndNonExpects: Boolean = true,\n        ignoreReturnType: Boolean = false,\n        kotlinTypeRefiner: KotlinTypeRefiner\n    ): Boolean {\n        if (a == b) return true\n        if (a.name != b.name) return false\n        if (distinguishExpectsAndNonExpects && a is MemberDescriptor && b is MemberDescriptor && a.isExpect != b.isExpect) return false\n        if (a.containingDeclaration == b.containingDeclaration) {\n            if (!allowCopiesFromTheSameDeclaration) return false\n            if (a.singleSource() != b.singleSource()) return false\n        }\n\n        // Distinct locals are not equivalent\n        if (DescriptorUtils.isLocal(a) || DescriptorUtils.isLocal(b)) return false\n\n        if (!ownersEquivalent(a, b, { _, _ -> false }, allowCopiesFromTheSameDeclaration)) return false\n\n        val overridingUtil = OverridingUtil.create(kotlinTypeRefiner) eq@{ c1, c2 ->\n            if (c1 == c2) return@eq true\n\n            val d1 = c1.declarationDescriptor\n            val d2 = c2.declarationDescriptor\n\n            if (d1 !is TypeParameterDescriptor || d2 !is TypeParameterDescriptor) return@eq false\n\n            areTypeParametersEquivalent(d1, d2, allowCopiesFromTheSameDeclaration) { x, y -> x == a && y == b }\n        }\n\n        return overridingUtil.isOverridableBy(a, b, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n                && overridingUtil.isOverridableBy(b, a, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n\n    }");
            return m1561a.m1574a(a, b, (AbstractC19070d) null, true).m1550b() == OverridingUtil.C19746a.EnumC19747a.OVERRIDABLE && m1561a.m1574a(b, a, (AbstractC19070d) null, true).m1550b() == OverridingUtil.C19746a.EnumC19747a.OVERRIDABLE;
        }
        return C18524p.m3850a(((AbstractC19070d) abstractC19193k).getTypeConstructor(), ((AbstractC19070d) abstractC19193k2).getTypeConstructor());
    }
}
