package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18991k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18994l;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.C19768a;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
import kotlin.reflect.jvm.internal.impl.utils.C20009c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor.class */
public class TypeSubstitutor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final TypeSubstitutor EMPTY = create(TypeSubstitution.EMPTY);
    private final TypeSubstitution substitution;

    /* renamed from: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$2 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$2.class */
    public static /* synthetic */ class C199872 {

        /* renamed from: $SwitchMap$org$jetbrains$kotlin$types$TypeSubstitutor$VarianceConflictType */
        static final /* synthetic */ int[] f66342x4790888d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            f66342x4790888d = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f66342x4790888d[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f66342x4790888d[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException.class */
    public static final class SubstitutionException extends Exception {
        public SubstitutionException(String str) {
            super(str);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType.class */
    public enum VarianceConflictType {
        NO_CONFLICT,
        IN_IN_OUT_POSITION,
        OUT_IN_IN_POSITION
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04e0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009e A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013d A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0444  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r4) {
        /*
            Method dump skipped, instructions count: 1259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.$$$reportNull$$$0(int):void");
    }

    protected TypeSubstitutor(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(6);
        }
        this.substitution = typeSubstitution;
    }

    private static void assertRecursionDepth(int i, TypeProjection typeProjection, TypeSubstitution typeSubstitution) {
        if (i <= 100) {
            return;
        }
        throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + safeToString(typeProjection) + "; substitution: " + safeToString(typeSubstitution));
    }

    public static Variance combine(Variance variance, TypeProjection typeProjection) {
        if (variance == null) {
            $$$reportNull$$$0(33);
        }
        if (typeProjection == null) {
            $$$reportNull$$$0(34);
        }
        if (typeProjection.isStarProjection()) {
            Variance variance2 = Variance.OUT_VARIANCE;
            if (variance2 == null) {
                $$$reportNull$$$0(35);
            }
            return variance2;
        }
        return combine(variance, typeProjection.getProjectionKind());
    }

    public static Variance combine(Variance variance, Variance variance2) {
        if (variance == null) {
            $$$reportNull$$$0(36);
        }
        if (variance2 == null) {
            $$$reportNull$$$0(37);
        }
        if (variance == Variance.INVARIANT) {
            if (variance2 == null) {
                $$$reportNull$$$0(38);
            }
            return variance2;
        } else if (variance2 == Variance.INVARIANT) {
            if (variance == null) {
                $$$reportNull$$$0(39);
            }
            return variance;
        } else if (variance == variance2) {
            if (variance2 == null) {
                $$$reportNull$$$0(40);
            }
            return variance2;
        } else {
            throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
        }
    }

    private static VarianceConflictType conflictType(Variance variance, Variance variance2) {
        return (variance == Variance.IN_VARIANCE && variance2 == Variance.OUT_VARIANCE) ? VarianceConflictType.OUT_IN_IN_POSITION : (variance == Variance.OUT_VARIANCE && variance2 == Variance.IN_VARIANCE) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static TypeSubstitutor create(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(5);
        }
        return create(TypeConstructorSubstitution.create(kotlinType.getConstructor(), kotlinType.getArguments()));
    }

    public static TypeSubstitutor create(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(0);
        }
        return new TypeSubstitutor(typeSubstitution);
    }

    public static TypeSubstitutor createChainedSubstitutor(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(2);
        }
        if (typeSubstitution2 == null) {
            $$$reportNull$$$0(3);
        }
        return create(DisjointKeysUnionTypeSubstitution.create(typeSubstitution, typeSubstitution2));
    }

    private static AbstractC18983g filterOutUnsafeVariance(AbstractC18983g abstractC18983g) {
        if (abstractC18983g == null) {
            $$$reportNull$$$0(31);
        }
        if (!abstractC18983g.mo1338b(C18954j.C18955a.f64600L)) {
            if (abstractC18983g == null) {
                $$$reportNull$$$0(32);
            }
            return abstractC18983g;
        }
        return new C18994l(abstractC18983g, new Function1<C18961b, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.1
            private static /* synthetic */ void $$$reportNull$$$0(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "name", "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1", "invoke"));
            }

            public final Boolean invoke(C18961b c18961b) {
                if (c18961b == null) {
                    $$$reportNull$$$0(0);
                }
                return Boolean.valueOf(!c18961b.equals(C18954j.C18955a.f64600L));
            }
        });
    }

    private static TypeProjection projectedTypeForConflictedTypeWithUnsafeVariance(KotlinType kotlinType, TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor, TypeProjection typeProjection2) {
        if (kotlinType == null) {
            $$$reportNull$$$0(24);
        }
        if (typeProjection == null) {
            $$$reportNull$$$0(25);
        }
        if (typeProjection2 == null) {
            $$$reportNull$$$0(26);
        }
        if (!kotlinType.getAnnotations().mo1338b(C18954j.C18955a.f64600L)) {
            if (typeProjection == null) {
                $$$reportNull$$$0(27);
            }
            return typeProjection;
        }
        TypeConstructor constructor = typeProjection.getType().getConstructor();
        if (!(constructor instanceof NewCapturedTypeConstructor)) {
            if (typeProjection == null) {
                $$$reportNull$$$0(28);
            }
            return typeProjection;
        }
        TypeProjection projection = ((NewCapturedTypeConstructor) constructor).getProjection();
        Variance projectionKind = projection.getProjectionKind();
        if (conflictType(typeProjection2.getProjectionKind(), projectionKind) == VarianceConflictType.OUT_IN_IN_POSITION) {
            return new TypeProjectionImpl(projection.getType());
        }
        if (typeParameterDescriptor == null) {
            if (typeProjection == null) {
                $$$reportNull$$$0(29);
            }
            return typeProjection;
        } else if (conflictType(typeParameterDescriptor.getVariance(), projectionKind) == VarianceConflictType.OUT_IN_IN_POSITION) {
            return new TypeProjectionImpl(projection.getType());
        } else {
            if (typeProjection == null) {
                $$$reportNull$$$0(30);
            }
            return typeProjection;
        }
    }

    private static String safeToString(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (C20009c.m1199a(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + "]";
        }
    }

    private TypeProjection substituteCompoundType(TypeProjection typeProjection, int i) throws SubstitutionException {
        KotlinType type = typeProjection.getType();
        Variance projectionKind = typeProjection.getProjectionKind();
        if (type.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) {
            return typeProjection;
        }
        SimpleType simpleType = null;
        SimpleType abbreviation = SpecialTypesKt.getAbbreviation(type);
        if (abbreviation != null) {
            simpleType = replaceWithNonApproximatingSubstitution().substitute(abbreviation, Variance.INVARIANT);
        }
        KotlinType replace = TypeSubstitutionKt.replace(type, substituteTypeArguments(type.getConstructor().getParameters(), type.getArguments(), i), this.substitution.filterAnnotations(type.getAnnotations()));
        SimpleType simpleType2 = replace;
        if (replace instanceof SimpleType) {
            simpleType2 = replace;
            if (simpleType instanceof SimpleType) {
                simpleType2 = SpecialTypesKt.withAbbreviation((SimpleType) replace, simpleType);
            }
        }
        return new TypeProjectionImpl(projectionKind, simpleType2);
    }

    private List<TypeProjection> substituteTypeArguments(List<TypeParameterDescriptor> list, List<TypeProjection> list2, int i) throws SubstitutionException {
        TypeProjectionImpl typeProjectionImpl;
        ArrayList arrayList = new ArrayList(list.size());
        boolean z = false;
        for (int i2 = 0; i2 < list.size(); i2++) {
            TypeParameterDescriptor typeParameterDescriptor = list.get(i2);
            TypeProjection typeProjection = list2.get(i2);
            TypeProjection unsafeSubstitute = unsafeSubstitute(typeProjection, typeParameterDescriptor, i + 1);
            int i3 = C199872.f66342x4790888d[conflictType(typeParameterDescriptor.getVariance(), unsafeSubstitute.getProjectionKind()).ordinal()];
            if (i3 == 1 || i3 == 2) {
                typeProjectionImpl = TypeUtils.makeStarProjection(typeParameterDescriptor);
            } else if (i3 != 3) {
                typeProjectionImpl = unsafeSubstitute;
            } else {
                typeProjectionImpl = unsafeSubstitute;
                if (typeParameterDescriptor.getVariance() != Variance.INVARIANT) {
                    typeProjectionImpl = unsafeSubstitute;
                    if (!unsafeSubstitute.isStarProjection()) {
                        typeProjectionImpl = new TypeProjectionImpl(Variance.INVARIANT, unsafeSubstitute.getType());
                    }
                }
            }
            if (typeProjectionImpl != typeProjection) {
                z = true;
            }
            arrayList.add(typeProjectionImpl);
        }
        return !z ? list2 : arrayList;
    }

    private TypeProjection unsafeSubstitute(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor, int i) throws SubstitutionException {
        if (typeProjection == null) {
            $$$reportNull$$$0(17);
        }
        assertRecursionDepth(i, typeProjection, this.substitution);
        if (typeProjection.isStarProjection()) {
            if (typeProjection == null) {
                $$$reportNull$$$0(18);
            }
            return typeProjection;
        }
        KotlinType type = typeProjection.getType();
        if (type instanceof TypeWithEnhancement) {
            TypeWithEnhancement typeWithEnhancement = (TypeWithEnhancement) type;
            UnwrappedType origin = typeWithEnhancement.getOrigin();
            KotlinType enhancement = typeWithEnhancement.getEnhancement();
            TypeProjection unsafeSubstitute = unsafeSubstitute(new TypeProjectionImpl(typeProjection.getProjectionKind(), origin), typeParameterDescriptor, i + 1);
            return new TypeProjectionImpl(unsafeSubstitute.getProjectionKind(), TypeWithEnhancementKt.wrapEnhancement(unsafeSubstitute.getType().unwrap(), substitute(enhancement, typeProjection.getProjectionKind())));
        } else if (DynamicTypesKt.isDynamic(type) || (type.unwrap() instanceof RawType)) {
            if (typeProjection == null) {
                $$$reportNull$$$0(19);
            }
            return typeProjection;
        } else {
            TypeProjection typeProjection2 = this.substitution.get(type);
            TypeProjection projectedTypeForConflictedTypeWithUnsafeVariance = typeProjection2 != null ? projectedTypeForConflictedTypeWithUnsafeVariance(type, typeProjection2, typeParameterDescriptor, typeProjection) : null;
            Variance projectionKind = typeProjection.getProjectionKind();
            if (projectedTypeForConflictedTypeWithUnsafeVariance == null && FlexibleTypesKt.isFlexible(type) && !TypeCapabilitiesKt.isCustomTypeVariable(type)) {
                FlexibleType asFlexibleType = FlexibleTypesKt.asFlexibleType(type);
                int i2 = i + 1;
                TypeProjection unsafeSubstitute2 = unsafeSubstitute(new TypeProjectionImpl(projectionKind, asFlexibleType.getLowerBound()), typeParameterDescriptor, i2);
                TypeProjection unsafeSubstitute3 = unsafeSubstitute(new TypeProjectionImpl(projectionKind, asFlexibleType.getUpperBound()), typeParameterDescriptor, i2);
                Variance projectionKind2 = unsafeSubstitute2.getProjectionKind();
                if (unsafeSubstitute2.getType() != asFlexibleType.getLowerBound() || unsafeSubstitute3.getType() != asFlexibleType.getUpperBound()) {
                    return new TypeProjectionImpl(projectionKind2, KotlinTypeFactory.flexibleType(TypeSubstitutionKt.asSimpleType(unsafeSubstitute2.getType()), TypeSubstitutionKt.asSimpleType(unsafeSubstitute3.getType())));
                }
                if (typeProjection == null) {
                    $$$reportNull$$$0(20);
                }
                return typeProjection;
            } else if (AbstractC18940g.m2783n(type) || KotlinTypeKt.isError(type)) {
                if (typeProjection == null) {
                    $$$reportNull$$$0(21);
                }
                return typeProjection;
            } else if (projectedTypeForConflictedTypeWithUnsafeVariance == null) {
                TypeProjection substituteCompoundType = substituteCompoundType(typeProjection, i);
                if (substituteCompoundType == null) {
                    $$$reportNull$$$0(23);
                }
                return substituteCompoundType;
            } else {
                VarianceConflictType conflictType = conflictType(projectionKind, projectedTypeForConflictedTypeWithUnsafeVariance.getProjectionKind());
                if (!C19768a.m1498a(type)) {
                    int i3 = C199872.f66342x4790888d[conflictType.ordinal()];
                    if (i3 == 1) {
                        throw new SubstitutionException("Out-projection in in-position");
                    }
                    if (i3 == 2) {
                        return new TypeProjectionImpl(Variance.OUT_VARIANCE, type.getConstructor().getBuiltIns().m2796h());
                    }
                }
                CustomTypeVariable customTypeVariable = TypeCapabilitiesKt.getCustomTypeVariable(type);
                if (projectedTypeForConflictedTypeWithUnsafeVariance.isStarProjection()) {
                    if (projectedTypeForConflictedTypeWithUnsafeVariance == null) {
                        $$$reportNull$$$0(22);
                    }
                    return projectedTypeForConflictedTypeWithUnsafeVariance;
                }
                KotlinType substitutionResult = customTypeVariable != null ? customTypeVariable.substitutionResult(projectedTypeForConflictedTypeWithUnsafeVariance.getType()) : TypeUtils.makeNullableIfNeeded(projectedTypeForConflictedTypeWithUnsafeVariance.getType(), type.isMarkedNullable());
                KotlinType kotlinType = substitutionResult;
                if (!type.getAnnotations().mo1275a()) {
                    kotlinType = TypeUtilsKt.replaceAnnotations(substitutionResult, new C18991k(substitutionResult.getAnnotations(), filterOutUnsafeVariance(this.substitution.filterAnnotations(type.getAnnotations()))));
                }
                Variance variance = projectionKind;
                if (conflictType == VarianceConflictType.NO_CONFLICT) {
                    variance = combine(projectionKind, projectedTypeForConflictedTypeWithUnsafeVariance.getProjectionKind());
                }
                return new TypeProjectionImpl(variance, kotlinType);
            }
        }
    }

    public TypeSubstitution getSubstitution() {
        TypeSubstitution typeSubstitution = this.substitution;
        if (typeSubstitution == null) {
            $$$reportNull$$$0(7);
        }
        return typeSubstitution;
    }

    public boolean isEmpty() {
        return this.substitution.isEmpty();
    }

    public TypeSubstitutor replaceWithNonApproximatingSubstitution() {
        TypeSubstitution typeSubstitution = this.substitution;
        return (!(typeSubstitution instanceof IndexedParametersSubstitution) || !typeSubstitution.approximateContravariantCapturedTypes()) ? this : new TypeSubstitutor(new IndexedParametersSubstitution(((IndexedParametersSubstitution) this.substitution).getParameters(), ((IndexedParametersSubstitution) this.substitution).getArguments(), false));
    }

    public KotlinType safeSubstitute(KotlinType kotlinType, Variance variance) {
        if (kotlinType == null) {
            $$$reportNull$$$0(8);
        }
        if (variance == null) {
            $$$reportNull$$$0(9);
        }
        if (isEmpty()) {
            if (kotlinType == null) {
                $$$reportNull$$$0(10);
            }
            return kotlinType;
        }
        try {
            KotlinType type = unsafeSubstitute(new TypeProjectionImpl(variance, kotlinType), null, 0).getType();
            if (type == null) {
                $$$reportNull$$$0(11);
            }
            return type;
        } catch (SubstitutionException e) {
            SimpleType createErrorType = ErrorUtils.createErrorType(e.getMessage());
            if (createErrorType == null) {
                $$$reportNull$$$0(12);
            }
            return createErrorType;
        }
    }

    public KotlinType substitute(KotlinType kotlinType, Variance variance) {
        if (kotlinType == null) {
            $$$reportNull$$$0(13);
        }
        if (variance == null) {
            $$$reportNull$$$0(14);
        }
        TypeProjection substitute = substitute(new TypeProjectionImpl(variance, getSubstitution().prepareTopLevelType(kotlinType, variance)));
        if (substitute == null) {
            return null;
        }
        return substitute.getType();
    }

    public TypeProjection substitute(TypeProjection typeProjection) {
        if (typeProjection == null) {
            $$$reportNull$$$0(15);
        }
        TypeProjection substituteWithoutApproximation = substituteWithoutApproximation(typeProjection);
        return (this.substitution.approximateCapturedTypes() || this.substitution.approximateContravariantCapturedTypes()) ? CapturedTypeApproximationKt.approximateCapturedTypesIfNecessary(substituteWithoutApproximation, this.substitution.approximateContravariantCapturedTypes()) : substituteWithoutApproximation;
    }

    public TypeProjection substituteWithoutApproximation(TypeProjection typeProjection) {
        if (typeProjection == null) {
            $$$reportNull$$$0(16);
        }
        if (isEmpty()) {
            return typeProjection;
        }
        try {
            return unsafeSubstitute(typeProjection, null, 0);
        } catch (SubstitutionException e) {
            return null;
        }
    }
}
