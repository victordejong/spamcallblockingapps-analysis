package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory.class */
public final class KotlinTypeFactory {
    public static final KotlinTypeFactory INSTANCE = new KotlinTypeFactory();
    private static final Function1<KotlinTypeRefiner, SimpleType> EMPTY_REFINED_TYPE_FACTORY = KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1.INSTANCE;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$ExpandedTypeOrRefinedConstructor.class */
    public static final class ExpandedTypeOrRefinedConstructor {
        private final SimpleType expandedType;
        private final TypeConstructor refinedConstructor;

        public ExpandedTypeOrRefinedConstructor(SimpleType simpleType, TypeConstructor typeConstructor) {
            this.expandedType = simpleType;
            this.refinedConstructor = typeConstructor;
        }

        public final SimpleType getExpandedType() {
            return this.expandedType;
        }

        public final TypeConstructor getRefinedConstructor() {
            return this.refinedConstructor;
        }
    }

    private KotlinTypeFactory() {
    }

    public static final SimpleType computeExpandedType(AbstractC19033ax abstractC19033ax, List<? extends TypeProjection> arguments) {
        C18524p.m3840d(abstractC19033ax, "<this>");
        C18524p.m3840d(arguments, "arguments");
        TypeAliasExpander typeAliasExpander = new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.INSTANCE, false);
        TypeAliasExpansion create = TypeAliasExpansion.Companion.create(null, abstractC19033ax, arguments);
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        return typeAliasExpander.expand(create, AbstractC18983g.C18984a.m2705a());
    }

    private final AbstractC19834h computeMemberScope(TypeConstructor typeConstructor, List<? extends TypeProjection> list, KotlinTypeRefiner kotlinTypeRefiner) {
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return declarationDescriptor.getDefaultType().getMemberScope();
        }
        if (!(declarationDescriptor instanceof AbstractC19070d)) {
            if (declarationDescriptor instanceof AbstractC19033ax) {
                AbstractC19834h createErrorScope = ErrorUtils.createErrorScope(C18524p.m3847a("Scope for abbreviation: ", (Object) ((AbstractC19033ax) declarationDescriptor).getName()), true);
                C18524p.m3843b(createErrorScope, "createErrorScope(\"Scope for abbreviation: ${descriptor.name}\", true)");
                return createErrorScope;
            } else if (typeConstructor instanceof IntersectionTypeConstructor) {
                return ((IntersectionTypeConstructor) typeConstructor).createScopeForKotlinType();
            } else {
                throw new IllegalStateException("Unsupported classifier: " + declarationDescriptor + " for constructor: " + typeConstructor);
            }
        }
        KotlinTypeRefiner kotlinTypeRefiner2 = kotlinTypeRefiner;
        if (kotlinTypeRefiner == null) {
            kotlinTypeRefiner2 = C19756a.m1538a(C19756a.m1527c(declarationDescriptor));
        }
        if (list.isEmpty()) {
            AbstractC19070d abstractC19070d = (AbstractC19070d) declarationDescriptor;
            C18524p.m3840d(abstractC19070d, "<this>");
            KotlinTypeRefiner kotlinTypeRefiner3 = kotlinTypeRefiner2;
            C18524p.m3840d(kotlinTypeRefiner3, "kotlinTypeRefiner");
            AbstractC19179q.C19180a c19180a = AbstractC19179q.Companion;
            return AbstractC19179q.C19180a.m2563a(abstractC19070d, kotlinTypeRefiner2);
        }
        AbstractC19070d abstractC19070d2 = (AbstractC19070d) declarationDescriptor;
        TypeSubstitution typeSubstitution = TypeConstructorSubstitution.Companion.create(typeConstructor, list);
        C18524p.m3840d(abstractC19070d2, "<this>");
        C18524p.m3840d(typeSubstitution, "typeSubstitution");
        KotlinTypeRefiner kotlinTypeRefiner4 = kotlinTypeRefiner2;
        C18524p.m3840d(kotlinTypeRefiner4, "kotlinTypeRefiner");
        AbstractC19179q.C19180a c19180a2 = AbstractC19179q.Companion;
        return AbstractC19179q.C19180a.m2564a(abstractC19070d2, typeSubstitution, kotlinTypeRefiner2);
    }

    public static final UnwrappedType flexibleType(SimpleType lowerBound, SimpleType upperBound) {
        C18524p.m3840d(lowerBound, "lowerBound");
        C18524p.m3840d(upperBound, "upperBound");
        return C18524p.m3850a(lowerBound, upperBound) ? lowerBound : new FlexibleTypeImpl(lowerBound, upperBound);
    }

    public static final SimpleType integerLiteralType(AbstractC18983g annotations, IntegerLiteralTypeConstructor constructor, boolean z) {
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(constructor, "constructor");
        C18297z c18297z = C18297z.f63400a;
        AbstractC19834h createErrorScope = ErrorUtils.createErrorScope("Scope for integer literal type", true);
        C18524p.m3843b(createErrorScope, "createErrorScope(\"Scope for integer literal type\", true)");
        return simpleTypeWithNonTrivialMemberScope(annotations, constructor, c18297z, z, createErrorScope);
    }

    public final ExpandedTypeOrRefinedConstructor refineConstructor(TypeConstructor typeConstructor, KotlinTypeRefiner kotlinTypeRefiner, List<? extends TypeProjection> list) {
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        AbstractC19129g refineDescriptor = declarationDescriptor == null ? null : kotlinTypeRefiner.refineDescriptor(declarationDescriptor);
        if (refineDescriptor == null) {
            return null;
        }
        if (refineDescriptor instanceof AbstractC19033ax) {
            return new ExpandedTypeOrRefinedConstructor(computeExpandedType((AbstractC19033ax) refineDescriptor, list), null);
        }
        TypeConstructor refine = refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner);
        C18524p.m3843b(refine, "descriptor.typeConstructor.refine(kotlinTypeRefiner)");
        return new ExpandedTypeOrRefinedConstructor(null, refine);
    }

    public static final SimpleType simpleNotNullType(AbstractC18983g annotations, AbstractC19070d descriptor, List<? extends TypeProjection> arguments) {
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(arguments, "arguments");
        TypeConstructor typeConstructor = descriptor.getTypeConstructor();
        C18524p.m3843b(typeConstructor, "descriptor.typeConstructor");
        return simpleType$default(annotations, typeConstructor, arguments, false, null, 16, null);
    }

    public static final SimpleType simpleType(AbstractC18983g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(arguments, "arguments");
        if (!annotations.mo1275a() || !arguments.isEmpty() || z || constructor.getDeclarationDescriptor() == null) {
            KotlinTypeFactory kotlinTypeFactory = INSTANCE;
            return simpleTypeWithNonTrivialMemberScope(annotations, constructor, arguments, z, kotlinTypeFactory.computeMemberScope(constructor, arguments, kotlinTypeRefiner), new KotlinTypeFactory$simpleType$1(kotlinTypeFactory, constructor, arguments, annotations, z));
        }
        AbstractC19129g declarationDescriptor = constructor.getDeclarationDescriptor();
        C18524p.m3851a(declarationDescriptor);
        SimpleType defaultType = declarationDescriptor.getDefaultType();
        C18524p.m3843b(defaultType, "constructor.declarationDescriptor!!.defaultType");
        return defaultType;
    }

    public static /* synthetic */ SimpleType simpleType$default(AbstractC18983g abstractC18983g, TypeConstructor typeConstructor, List list, boolean z, KotlinTypeRefiner kotlinTypeRefiner, int i, Object obj) {
        if ((i & 16) != 0) {
            kotlinTypeRefiner = null;
        }
        return simpleType(abstractC18983g, typeConstructor, list, z, kotlinTypeRefiner);
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(AbstractC18983g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, AbstractC19834h memberScope) {
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(arguments, "arguments");
        C18524p.m3840d(memberScope, "memberScope");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, new KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(INSTANCE, constructor, arguments, annotations, z, memberScope));
        return annotations.mo1275a() ? simpleTypeImpl : new AnnotatedSimpleType(simpleTypeImpl, annotations);
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(AbstractC18983g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, AbstractC19834h memberScope, Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(arguments, "arguments");
        C18524p.m3840d(memberScope, "memberScope");
        C18524p.m3840d(refinedTypeFactory, "refinedTypeFactory");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, refinedTypeFactory);
        return annotations.mo1275a() ? simpleTypeImpl : new AnnotatedSimpleType(simpleTypeImpl, annotations);
    }
}
