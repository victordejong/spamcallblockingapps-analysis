package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18988i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
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

        public final void assertRecursionDepth(int i, AbstractC19033ax abstractC19033ax) {
            if (i <= 100) {
                return;
            }
            throw new AssertionError(C18524p.m3847a("Too deep recursion while expanding type alias ", (Object) abstractC19033ax.getName()));
        }

        public final void checkBoundsInTypeAlias(TypeAliasExpansionReportStrategy reportStrategy, KotlinType unsubstitutedArgument, KotlinType typeArgument, TypeParameterDescriptor typeParameterDescriptor, TypeSubstitutor substitutor) {
            C18524p.m3840d(reportStrategy, "reportStrategy");
            C18524p.m3840d(unsubstitutedArgument, "unsubstitutedArgument");
            C18524p.m3840d(typeArgument, "typeArgument");
            C18524p.m3840d(typeParameterDescriptor, "typeParameterDescriptor");
            C18524p.m3840d(substitutor, "substitutor");
            for (KotlinType kotlinType : typeParameterDescriptor.getUpperBounds()) {
                KotlinType safeSubstitute = substitutor.safeSubstitute(kotlinType, Variance.INVARIANT);
                C18524p.m3843b(safeSubstitute, "substitutor.safeSubstitute(bound, Variance.INVARIANT)");
                if (!KotlinTypeChecker.DEFAULT.isSubtypeOf(typeArgument, safeSubstitute)) {
                    reportStrategy.boundsViolationInSubstitution(safeSubstitute, unsubstitutedArgument, typeArgument, typeParameterDescriptor);
                }
            }
        }
    }

    public TypeAliasExpander(TypeAliasExpansionReportStrategy reportStrategy, boolean z) {
        C18524p.m3840d(reportStrategy, "reportStrategy");
        this.reportStrategy = reportStrategy;
        this.shouldCheckBounds = z;
    }

    private final void checkRepeatedAnnotations(AbstractC18983g abstractC18983g, AbstractC18983g abstractC18983g2) {
        HashSet hashSet = new HashSet();
        Iterator<AbstractC18977c> it2 = abstractC18983g.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next().mo2042b());
        }
        HashSet hashSet2 = hashSet;
        for (AbstractC18977c abstractC18977c : abstractC18983g2) {
            if (hashSet2.contains(abstractC18977c.mo2042b())) {
                this.reportStrategy.repeatedAnnotation(abstractC18977c);
            }
        }
    }

    private final void checkTypeArgumentsSubstitution(KotlinType kotlinType, KotlinType kotlinType2) {
        TypeSubstitutor create = TypeSubstitutor.create(kotlinType2);
        C18524p.m3843b(create, "create(substitutedType)");
        int i = 0;
        for (Object obj : kotlinType2.getArguments()) {
            if (i < 0) {
                C18282n.m4175a();
            }
            TypeProjection typeProjection = (TypeProjection) obj;
            if (!typeProjection.isStarProjection()) {
                KotlinType type = typeProjection.getType();
                C18524p.m3843b(type, "substitutedArgument.type");
                if (!TypeUtilsKt.containsTypeAliasParameters(type)) {
                    TypeProjection typeProjection2 = kotlinType.getArguments().get(i);
                    TypeParameterDescriptor typeParameter = kotlinType.getConstructor().getParameters().get(i);
                    if (this.shouldCheckBounds) {
                        Companion companion = Companion;
                        TypeAliasExpansionReportStrategy typeAliasExpansionReportStrategy = this.reportStrategy;
                        KotlinType type2 = typeProjection2.getType();
                        C18524p.m3843b(type2, "unsubstitutedArgument.type");
                        KotlinType type3 = typeProjection.getType();
                        C18524p.m3843b(type3, "substitutedArgument.type");
                        C18524p.m3843b(typeParameter, "typeParameter");
                        companion.checkBoundsInTypeAlias(typeAliasExpansionReportStrategy, type2, type3, typeParameter, create);
                    }
                }
            }
            i++;
        }
    }

    private final DynamicType combineAnnotations(DynamicType dynamicType, AbstractC18983g abstractC18983g) {
        return dynamicType.replaceAnnotations(createCombinedAnnotations(dynamicType, abstractC18983g));
    }

    private final SimpleType combineAnnotations(SimpleType simpleType, AbstractC18983g abstractC18983g) {
        SimpleType simpleType2 = simpleType;
        return KotlinTypeKt.isError(simpleType2) ? simpleType : TypeSubstitutionKt.replace$default(simpleType, null, createCombinedAnnotations(simpleType2, abstractC18983g), 1, null);
    }

    private final SimpleType combineNullability(SimpleType simpleType, KotlinType kotlinType) {
        SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(simpleType, kotlinType.isMarkedNullable());
        C18524p.m3843b(makeNullableIfNeeded, "makeNullableIfNeeded(this, fromType.isMarkedNullable)");
        return makeNullableIfNeeded;
    }

    private final SimpleType combineNullabilityAndAnnotations(SimpleType simpleType, KotlinType kotlinType) {
        return combineAnnotations(combineNullability(simpleType, kotlinType), kotlinType.getAnnotations());
    }

    private final SimpleType createAbbreviation(TypeAliasExpansion typeAliasExpansion, AbstractC18983g abstractC18983g, boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        TypeConstructor typeConstructor = typeAliasExpansion.getDescriptor().getTypeConstructor();
        C18524p.m3843b(typeConstructor, "descriptor.typeConstructor");
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(abstractC18983g, typeConstructor, typeAliasExpansion.getArguments(), z, AbstractC19834h.C19838c.f66035a);
    }

    private final AbstractC18983g createCombinedAnnotations(KotlinType kotlinType, AbstractC18983g abstractC18983g) {
        return KotlinTypeKt.isError(kotlinType) ? kotlinType.getAnnotations() : C18988i.m2701a(abstractC18983g, kotlinType.getAnnotations());
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
        AbstractC19129g declarationDescriptor = constructor.getDeclarationDescriptor();
        boolean z = constructor.getParameters().size() == asSimpleType.getArguments().size();
        if (C20130x.f66532a && !z) {
            throw new AssertionError(C18524p.m3847a("Unexpected malformed type: ", (Object) asSimpleType));
        }
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return typeProjection;
        }
        if (!(declarationDescriptor instanceof AbstractC19033ax)) {
            SimpleType substituteArguments = substituteArguments(asSimpleType, typeAliasExpansion, i);
            checkTypeArgumentsSubstitution(simpleType, substituteArguments);
            return new TypeProjectionImpl(typeProjection.getProjectionKind(), substituteArguments);
        }
        AbstractC19033ax abstractC19033ax = (AbstractC19033ax) declarationDescriptor;
        if (typeAliasExpansion.isRecursion(abstractC19033ax)) {
            this.reportStrategy.recursiveTypeAlias(abstractC19033ax);
            return new TypeProjectionImpl(Variance.INVARIANT, ErrorUtils.createErrorType(C18524p.m3847a("Recursive type alias: ", (Object) abstractC19033ax.getName())));
        }
        List<TypeProjection> arguments = asSimpleType.getArguments();
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) arguments, 10));
        int i2 = 0;
        for (Object obj : arguments) {
            if (i2 < 0) {
                C18282n.m4175a();
            }
            arrayList.add(expandTypeProjection((TypeProjection) obj, typeAliasExpansion, constructor.getParameters().get(i2), i + 1));
            i2++;
        }
        SimpleType expandRecursively = expandRecursively(TypeAliasExpansion.Companion.create(typeAliasExpansion, abstractC19033ax, arrayList), asSimpleType.getAnnotations(), asSimpleType.isMarkedNullable(), i + 1, false);
        return new TypeProjectionImpl(typeProjection.getProjectionKind(), DynamicTypesKt.isDynamic(expandRecursively) ? expandRecursively : SpecialTypesKt.withAbbreviation(expandRecursively, substituteArguments(asSimpleType, typeAliasExpansion, i)));
    }

    private final SimpleType expandRecursively(TypeAliasExpansion typeAliasExpansion, AbstractC18983g abstractC18983g, boolean z, int i, boolean z2) {
        TypeProjection expandTypeProjection = expandTypeProjection(new TypeProjectionImpl(Variance.INVARIANT, typeAliasExpansion.getDescriptor().mo1284a()), typeAliasExpansion, null, i);
        KotlinType type = expandTypeProjection.getType();
        C18524p.m3843b(type, "expandedProjection.type");
        SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(type);
        if (KotlinTypeKt.isError(asSimpleType)) {
            return asSimpleType;
        }
        boolean z3 = expandTypeProjection.getProjectionKind() == Variance.INVARIANT;
        if (!C20130x.f66532a || z3) {
            checkRepeatedAnnotations(asSimpleType.getAnnotations(), abstractC18983g);
            SimpleType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(combineAnnotations(asSimpleType, abstractC18983g), z);
            C18524p.m3843b(makeNullableIfNeeded, "expandedType.combineAnnotations(annotations).let { TypeUtils.makeNullableIfNeeded(it, isNullable) }");
            return z2 ? SpecialTypesKt.withAbbreviation(makeNullableIfNeeded, createAbbreviation(typeAliasExpansion, abstractC18983g, z)) : makeNullableIfNeeded;
        }
        throw new AssertionError("Type alias expansion: result for " + typeAliasExpansion.getDescriptor() + " is " + expandTypeProjection.getProjectionKind() + ", should be invariant");
    }

    private final TypeProjection expandTypeProjection(TypeProjection typeProjection, TypeAliasExpansion typeAliasExpansion, TypeParameterDescriptor typeParameterDescriptor, int i) {
        Companion.assertRecursionDepth(i, typeAliasExpansion.getDescriptor());
        if (typeProjection.isStarProjection()) {
            C18524p.m3851a(typeParameterDescriptor);
            TypeProjection makeStarProjection = TypeUtils.makeStarProjection(typeParameterDescriptor);
            C18524p.m3843b(makeStarProjection, "makeStarProjection(typeParameterDescriptor!!)");
            return makeStarProjection;
        }
        KotlinType type = typeProjection.getType();
        C18524p.m3843b(type, "underlyingProjection.type");
        TypeProjection replacement = typeAliasExpansion.getReplacement(type.getConstructor());
        if (replacement == null) {
            return expandNonArgumentTypeProjection(typeProjection, typeAliasExpansion, i);
        }
        if (replacement.isStarProjection()) {
            C18524p.m3851a(typeParameterDescriptor);
            TypeProjection makeStarProjection2 = TypeUtils.makeStarProjection(typeParameterDescriptor);
            C18524p.m3843b(makeStarProjection2, "makeStarProjection(typeParameterDescriptor!!)");
            return makeStarProjection2;
        }
        UnwrappedType unwrap = replacement.getType().unwrap();
        TypeAliasExpander typeAliasExpander = this;
        Variance projectionKind = replacement.getProjectionKind();
        C18524p.m3843b(projectionKind, "argument.projectionKind");
        Variance projectionKind2 = typeProjection.getProjectionKind();
        C18524p.m3843b(projectionKind2, "underlyingProjection.projectionKind");
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
        C18524p.m3843b(variance2, "typeParameterDescriptor?.variance ?: Variance.INVARIANT");
        if (variance2 != projectionKind2 && variance2 != Variance.INVARIANT) {
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
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) arguments, 10));
        int i2 = 0;
        for (Object obj : arguments) {
            if (i2 < 0) {
                C18282n.m4175a();
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

    public final SimpleType expand(TypeAliasExpansion typeAliasExpansion, AbstractC18983g annotations) {
        C18524p.m3840d(typeAliasExpansion, "typeAliasExpansion");
        C18524p.m3840d(annotations, "annotations");
        return expandRecursively(typeAliasExpansion, annotations, false, 0, true);
    }
}
