package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.q;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory.class */
public final class KotlinTypeFactory {
    public static final KotlinTypeFactory INSTANCE = new KotlinTypeFactory();
    private static final Function1<KotlinTypeRefiner, SimpleType> EMPTY_REFINED_TYPE_FACTORY = KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1.INSTANCE;

    /* JADX INFO: Access modifiers changed from: package-private */
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

    public static final SimpleType computeExpandedType(ax axVar, List<? extends TypeProjection> arguments) {
        p.d(axVar, "<this>");
        p.d(arguments, "arguments");
        TypeAliasExpander typeAliasExpander = new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.INSTANCE, false);
        TypeAliasExpansion create = TypeAliasExpansion.Companion.create(null, axVar, arguments);
        g.a aVar = g.f37361a;
        return typeAliasExpander.expand(create, g.a.a());
    }

    private final h computeMemberScope(TypeConstructor typeConstructor, List<? extends TypeProjection> list, KotlinTypeRefiner kotlinTypeRefiner) {
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return declarationDescriptor.getDefaultType().getMemberScope();
        }
        if (declarationDescriptor instanceof d) {
            KotlinTypeRefiner kotlinTypeRefiner2 = kotlinTypeRefiner;
            if (kotlinTypeRefiner == null) {
                kotlinTypeRefiner2 = a.a(a.c(declarationDescriptor));
            }
            if (list.isEmpty()) {
                d dVar = (d) declarationDescriptor;
                p.d(dVar, "<this>");
                p.d(kotlinTypeRefiner2, "kotlinTypeRefiner");
                q.a aVar = q.Companion;
                return q.a.a(dVar, kotlinTypeRefiner2);
            }
            d dVar2 = (d) declarationDescriptor;
            TypeSubstitution typeSubstitution = TypeConstructorSubstitution.Companion.create(typeConstructor, list);
            p.d(dVar2, "<this>");
            p.d(typeSubstitution, "typeSubstitution");
            p.d(kotlinTypeRefiner2, "kotlinTypeRefiner");
            q.a aVar2 = q.Companion;
            return q.a.a(dVar2, typeSubstitution, kotlinTypeRefiner2);
        } else if (declarationDescriptor instanceof ax) {
            h createErrorScope = ErrorUtils.createErrorScope(p.a("Scope for abbreviation: ", (Object) ((ax) declarationDescriptor).getName()), true);
            p.b(createErrorScope, "createErrorScope(\"Scope for abbreviation: ${descriptor.name}\", true)");
            return createErrorScope;
        } else if (typeConstructor instanceof IntersectionTypeConstructor) {
            return ((IntersectionTypeConstructor) typeConstructor).createScopeForKotlinType();
        } else {
            throw new IllegalStateException("Unsupported classifier: " + declarationDescriptor + " for constructor: " + typeConstructor);
        }
    }

    public static final UnwrappedType flexibleType(SimpleType lowerBound, SimpleType upperBound) {
        p.d(lowerBound, "lowerBound");
        p.d(upperBound, "upperBound");
        return p.a(lowerBound, upperBound) ? lowerBound : new FlexibleTypeImpl(lowerBound, upperBound);
    }

    public static final SimpleType integerLiteralType(g annotations, IntegerLiteralTypeConstructor constructor, boolean z) {
        p.d(annotations, "annotations");
        p.d(constructor, "constructor");
        z zVar = z.f36608a;
        h createErrorScope = ErrorUtils.createErrorScope("Scope for integer literal type", true);
        p.b(createErrorScope, "createErrorScope(\"Scope for integer literal type\", true)");
        return simpleTypeWithNonTrivialMemberScope(annotations, constructor, zVar, z, createErrorScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExpandedTypeOrRefinedConstructor refineConstructor(TypeConstructor typeConstructor, KotlinTypeRefiner kotlinTypeRefiner, List<? extends TypeProjection> list) {
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        kotlin.reflect.jvm.internal.impl.descriptors.g refineDescriptor = declarationDescriptor == null ? null : kotlinTypeRefiner.refineDescriptor(declarationDescriptor);
        if (refineDescriptor == null) {
            return null;
        }
        if (refineDescriptor instanceof ax) {
            return new ExpandedTypeOrRefinedConstructor(computeExpandedType((ax) refineDescriptor, list), null);
        }
        TypeConstructor refine = refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner);
        p.b(refine, "descriptor.typeConstructor.refine(kotlinTypeRefiner)");
        return new ExpandedTypeOrRefinedConstructor(null, refine);
    }

    public static final SimpleType simpleNotNullType(g annotations, d descriptor, List<? extends TypeProjection> arguments) {
        p.d(annotations, "annotations");
        p.d(descriptor, "descriptor");
        p.d(arguments, "arguments");
        TypeConstructor typeConstructor = descriptor.getTypeConstructor();
        p.b(typeConstructor, "descriptor.typeConstructor");
        return simpleType$default(annotations, typeConstructor, arguments, false, null, 16, null);
    }

    public static final SimpleType simpleType(g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(annotations, "annotations");
        p.d(constructor, "constructor");
        p.d(arguments, "arguments");
        if (!annotations.a() || !arguments.isEmpty() || z || constructor.getDeclarationDescriptor() == null) {
            KotlinTypeFactory kotlinTypeFactory = INSTANCE;
            return simpleTypeWithNonTrivialMemberScope(annotations, constructor, arguments, z, kotlinTypeFactory.computeMemberScope(constructor, arguments, kotlinTypeRefiner), new KotlinTypeFactory$simpleType$1(kotlinTypeFactory, constructor, arguments, annotations, z));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = constructor.getDeclarationDescriptor();
        p.a(declarationDescriptor);
        SimpleType defaultType = declarationDescriptor.getDefaultType();
        p.b(defaultType, "constructor.declarationDescriptor!!.defaultType");
        return defaultType;
    }

    public static /* synthetic */ SimpleType simpleType$default(g gVar, TypeConstructor typeConstructor, List list, boolean z, KotlinTypeRefiner kotlinTypeRefiner, int i, Object obj) {
        if ((i & 16) != 0) {
            kotlinTypeRefiner = null;
        }
        return simpleType(gVar, typeConstructor, list, z, kotlinTypeRefiner);
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, h memberScope) {
        p.d(annotations, "annotations");
        p.d(constructor, "constructor");
        p.d(arguments, "arguments");
        p.d(memberScope, "memberScope");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, new KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(INSTANCE, constructor, arguments, annotations, z, memberScope));
        return annotations.a() ? simpleTypeImpl : new AnnotatedSimpleType(simpleTypeImpl, annotations);
    }

    public static final SimpleType simpleTypeWithNonTrivialMemberScope(g annotations, TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, h memberScope, Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        p.d(annotations, "annotations");
        p.d(constructor, "constructor");
        p.d(arguments, "arguments");
        p.d(memberScope, "memberScope");
        p.d(refinedTypeFactory, "refinedTypeFactory");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z, memberScope, refinedTypeFactory);
        return annotations.a() ? simpleTypeImpl : new AnnotatedSimpleType(simpleTypeImpl, annotations);
    }
}
