package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.a.i;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpander.class */
public final class TypeAliasExpander {
    public static final Companion Companion = new Companion(null);
    private static final TypeAliasExpander NON_REPORTING = new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.INSTANCE, false);
    private final TypeAliasExpansionReportStrategy reportStrategy;
    private final boolean shouldCheckBounds;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void assertRecursionDepth(int i, ax axVar) {
            if (i > 100) {
                throw new AssertionError(p.a("Too deep recursion while expanding type alias ", (Object) axVar.getName()));
            }
        }

        public final void checkBoundsInTypeAlias(TypeAliasExpansionReportStrategy reportStrategy, KotlinType unsubstitutedArgument, KotlinType typeArgument, TypeParameterDescriptor typeParameterDescriptor, TypeSubstitutor substitutor) {
            p.d(reportStrategy, "reportStrategy");
            p.d(unsubstitutedArgument, "unsubstitutedArgument");
            p.d(typeArgument, "typeArgument");
            p.d(typeParameterDescriptor, "typeParameterDescriptor");
            p.d(substitutor, "substitutor");
            for (KotlinType kotlinType : typeParameterDescriptor.getUpperBounds()) {
                KotlinType safeSubstitute = substitutor.safeSubstitute(kotlinType, Variance.INVARIANT);
                p.b(safeSubstitute, "substitutor.safeSubstitute(bound, Variance.INVARIANT)");
                if (!KotlinTypeChecker.DEFAULT.isSubtypeOf(typeArgument, safeSubstitute)) {
                    reportStrategy.boundsViolationInSubstitution(safeSubstitute, unsubstitutedArgument, typeArgument, typeParameterDescriptor);
                }
            }
        }
    }

    public TypeAliasExpander(TypeAliasExpansionReportStrategy reportStrategy, boolean z) {
        p.d(reportStrategy, "reportStrategy");
        this.reportStrategy = reportStrategy;
        this.shouldCheckBounds = z;
    }

    private final void checkRepeatedAnnotations(g gVar, g gVar2) {
        HashSet hashSet = new HashSet();
        Iterator<c> it2 = gVar.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next().b());
        }
        HashSet hashSet2 = hashSet;
        for (c cVar : gVar2) {
            if (hashSet2.contains(cVar.b())) {
                this.reportStrategy.repeatedAnnotation(cVar);
            }
        }
    }

    private final void checkTypeArgumentsSubstitution(KotlinType kotlinType, KotlinType kotlinType2) {
        TypeSubstitutor create = TypeSubstitutor.create(kotlinType2);
        p.b(create, "create(substitutedType)");
        int i = 0;
        for (Object obj : kotlinType2.getArguments()) {
            if (i < 0) {
                n.a();
            }
            TypeProjection typeProjection = (TypeProjection) obj;
            if (!typeProjection.isStarProjection()) {
                KotlinType type = typeProjection.getType();
                p.b(type, "substitutedArgument.type");
                if (!TypeUtilsKt.containsTypeAliasParameters(type)) {
                    TypeProjection typeProjection2 = kotlinType.getArguments().get(i);
                    TypeParameterDescriptor typeParameter = kotlinType.getConstructor().getParameters().get(i);
                    if (this.shouldCheckBounds) {
                        Companion companion = Companion;
                        TypeAliasExpansionReportStrategy typeAliasExpansionReportStrategy = this.reportStrategy;
                        KotlinType type2 = typeProjection2.getType();
                        p.b(type2, "unsubstitutedArgument.type");
                        KotlinType type3 = typeProjection.getType();
                        p.b(type3, "substitutedArgument.type");
                        p.b(typeParameter, "typeParameter");
                        companion.checkBoundsInTypeAlias(typeAliasExpansionReportStrategy, type2, type3, typeParameter, create);
                    }
                }
            }
            i++;
        }
    }

    private final DynamicType combineAnnotations(DynamicType dynamicType, g gVar) {
        return dynamicType.replaceAnnotations(createCombinedAnnotations(dynamicType, gVar));
    }

    private final SimpleType combineAnnotations(SimpleType simpleType, g gVar) {
        SimpleType simpleType2 = simpleType;
        return KotlinTypeKt.isError(simpleType2) ? simpleType : TypeSubstitutionKt.replace$default(simpleType, null, createCombinedAnnotations(simpleType2, gVar), 1, null);
    }

    private final SimpleType combineNullability(SimpleType simpleType, KotlinType kotlinType) {
        SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(simpleType, kotlinType.isMarkedNullable());
        p.b(makeNullableIfNeeded, "makeNullableIfNeeded(this, fromType.isMarkedNullable)");
        return makeNullableIfNeeded;
    }

    private final SimpleType combineNullabilityAndAnnotations(SimpleType simpleType, KotlinType kotlinType) {
        return combineAnnotations(combineNullability(simpleType, kotlinType), kotlinType.getAnnotations());
    }

    private final SimpleType createAbbreviation(TypeAliasExpansion typeAliasExpansion, g gVar, boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        TypeConstructor typeConstructor = typeAliasExpansion.getDescriptor().getTypeConstructor();
        p.b(typeConstructor, "descriptor.typeConstructor");
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(gVar, typeConstructor, typeAliasExpansion.getArguments(), z, h.c.f38297a);
    }

    private final g createCombinedAnnotations(KotlinType kotlinType, g gVar) {
        return KotlinTypeKt.isError(kotlinType) ? kotlinType.getAnnotations() : i.a(gVar, kotlinType.getAnnotations());
    }

    private final TypeProjection expandNonArgumentTypeProjection(TypeProjection typeProjection, TypeAliasExpansion typeAliasExpansion, int i) {
        UnwrappedType unwrap = typeProjection.getType().unwrap();
        if (DynamicTypesKt.isDynamic(unwrap)) {
            return typeProjection;
        }
        SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(unwrap);
        SimpleType simpleType = asSimpleType;
        if (KotlinTypeKt.isError(simpleType) || !TypeUtilsKt.requiresTypeAliasExpansion(simpleType)) {
            return typeProjection;
        }
        TypeConstructor constructor = asSimpleType.getConstructor();
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = constructor.getDeclarationDescriptor();
        int i2 = 0;
        boolean z = constructor.getParameters().size() == asSimpleType.getArguments().size();
        if (x.f38657a && !z) {
            throw new AssertionError(p.a("Unexpected malformed type: ", (Object) asSimpleType));
        } else if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return typeProjection;
        } else {
            if (declarationDescriptor instanceof ax) {
                ax axVar = (ax) declarationDescriptor;
                if (typeAliasExpansion.isRecursion(axVar)) {
                    this.reportStrategy.recursiveTypeAlias(axVar);
                    return new TypeProjectionImpl(Variance.INVARIANT, ErrorUtils.createErrorType(p.a("Recursive type alias: ", (Object) axVar.getName())));
                }
                List<TypeProjection> arguments = asSimpleType.getArguments();
                ArrayList arrayList = new ArrayList(n.a((Iterable) arguments, 10));
                for (Object obj : arguments) {
                    if (i2 < 0) {
                        n.a();
                    }
                    arrayList.add(expandTypeProjection((TypeProjection) obj, typeAliasExpansion, constructor.getParameters().get(i2), i + 1));
                    i2++;
                }
                SimpleType expandRecursively = expandRecursively(TypeAliasExpansion.Companion.create(typeAliasExpansion, axVar, arrayList), asSimpleType.getAnnotations(), asSimpleType.isMarkedNullable(), i + 1, false);
                return new TypeProjectionImpl(typeProjection.getProjectionKind(), DynamicTypesKt.isDynamic(expandRecursively) ? expandRecursively : SpecialTypesKt.withAbbreviation(expandRecursively, substituteArguments(asSimpleType, typeAliasExpansion, i)));
            }
            SimpleType substituteArguments = substituteArguments(asSimpleType, typeAliasExpansion, i);
            checkTypeArgumentsSubstitution(simpleType, substituteArguments);
            return new TypeProjectionImpl(typeProjection.getProjectionKind(), substituteArguments);
        }
    }

    private final SimpleType expandRecursively(TypeAliasExpansion typeAliasExpansion, g gVar, boolean z, int i, boolean z2) {
        TypeProjection expandTypeProjection = expandTypeProjection(new TypeProjectionImpl(Variance.INVARIANT, typeAliasExpansion.getDescriptor().a()), typeAliasExpansion, null, i);
        KotlinType type = expandTypeProjection.getType();
        p.b(type, "expandedProjection.type");
        SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(type);
        if (KotlinTypeKt.isError(asSimpleType)) {
            return asSimpleType;
        }
        boolean z3 = expandTypeProjection.getProjectionKind() == Variance.INVARIANT;
        if (!x.f38657a || z3) {
            checkRepeatedAnnotations(asSimpleType.getAnnotations(), gVar);
            SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(combineAnnotations(asSimpleType, gVar), z);
            p.b(makeNullableIfNeeded, "expandedType.combineAnnotations(annotations).let { TypeUtils.makeNullableIfNeeded(it, isNullable) }");
            return z2 ? SpecialTypesKt.withAbbreviation(makeNullableIfNeeded, createAbbreviation(typeAliasExpansion, gVar, z)) : makeNullableIfNeeded;
        }
        throw new AssertionError("Type alias expansion: result for " + typeAliasExpansion.getDescriptor() + " is " + expandTypeProjection.getProjectionKind() + ", should be invariant");
    }

    private final TypeProjection expandTypeProjection(TypeProjection typeProjection, TypeAliasExpansion typeAliasExpansion, TypeParameterDescriptor typeParameterDescriptor, int i) {
        Companion.assertRecursionDepth(i, typeAliasExpansion.getDescriptor());
        if (typeProjection.isStarProjection()) {
            p.a(typeParameterDescriptor);
            TypeProjection makeStarProjection = TypeUtils.makeStarProjection(typeParameterDescriptor);
            p.b(makeStarProjection, "makeStarProjection(typeParameterDescriptor!!)");
            return makeStarProjection;
        }
        KotlinType type = typeProjection.getType();
        p.b(type, "underlyingProjection.type");
        TypeProjection replacement = typeAliasExpansion.getReplacement(type.getConstructor());
        if (replacement == null) {
            return expandNonArgumentTypeProjection(typeProjection, typeAliasExpansion, i);
        }
        if (replacement.isStarProjection()) {
            p.a(typeParameterDescriptor);
            TypeProjection makeStarProjection2 = TypeUtils.makeStarProjection(typeParameterDescriptor);
            p.b(makeStarProjection2, "makeStarProjection(typeParameterDescriptor!!)");
            return makeStarProjection2;
        }
        UnwrappedType unwrap = replacement.getType().unwrap();
        TypeAliasExpander typeAliasExpander = this;
        Variance projectionKind = replacement.getProjectionKind();
        p.b(projectionKind, "argument.projectionKind");
        Variance projectionKind2 = typeProjection.getProjectionKind();
        p.b(projectionKind2, "underlyingProjection.projectionKind");
        if (projectionKind2 == projectionKind) {
            projectionKind2 = projectionKind;
        } else if (projectionKind2 == Variance.INVARIANT) {
            projectionKind2 = projectionKind;
        } else if (projectionKind != Variance.INVARIANT) {
            typeAliasExpander.reportStrategy.conflictingProjection(typeAliasExpansion.getDescriptor(), typeParameterDescriptor, unwrap);
            projectionKind2 = projectionKind;
        }
        Variance variance = typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance();
        Variance variance2 = variance;
        if (variance == null) {
            variance2 = Variance.INVARIANT;
        }
        p.b(variance2, "typeParameterDescriptor?.variance ?: Variance.INVARIANT");
        if (!(variance2 == projectionKind2 || variance2 == Variance.INVARIANT)) {
            if (projectionKind2 == Variance.INVARIANT) {
                projectionKind2 = Variance.INVARIANT;
            } else {
                typeAliasExpander.reportStrategy.conflictingProjection(typeAliasExpansion.getDescriptor(), typeParameterDescriptor, unwrap);
            }
        }
        checkRepeatedAnnotations(type.getAnnotations(), unwrap.getAnnotations());
        return new TypeProjectionImpl(projectionKind2, unwrap instanceof DynamicType ? combineAnnotations((DynamicType) unwrap, type.getAnnotations()) : combineNullabilityAndAnnotations(TypeSubstitutionKt.asSimpleType(unwrap), type));
    }

    private final SimpleType substituteArguments(SimpleType simpleType, TypeAliasExpansion typeAliasExpansion, int i) {
        TypeConstructor constructor = simpleType.getConstructor();
        List<TypeProjection> arguments = simpleType.getArguments();
        ArrayList arrayList = new ArrayList(n.a((Iterable) arguments, 10));
        int i2 = 0;
        for (Object obj : arguments) {
            if (i2 < 0) {
                n.a();
            }
            TypeProjection typeProjection = (TypeProjection) obj;
            TypeProjectionImpl expandTypeProjection = expandTypeProjection(typeProjection, typeAliasExpansion, constructor.getParameters().get(i2), i + 1);
            if (!expandTypeProjection.isStarProjection()) {
                expandTypeProjection = new TypeProjectionImpl(expandTypeProjection.getProjectionKind(), TypeUtils.makeNullableIfNeeded(expandTypeProjection.getType(), typeProjection.getType().isMarkedNullable()));
            }
            arrayList.add(expandTypeProjection);
            i2++;
        }
        return TypeSubstitutionKt.replace$default(simpleType, arrayList, null, 2, null);
    }

    public final SimpleType expand(TypeAliasExpansion typeAliasExpansion, g annotations) {
        p.d(typeAliasExpansion, "typeAliasExpansion");
        p.d(annotations, "annotations");
        return expandRecursively(typeAliasExpansion, annotations, false, 0, true);
    }
}
