package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt.class */
public final class CapturedTypeApproximationKt {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.INVARIANT.ordinal()] = 1;
            iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ApproximationBounds<KotlinType> approximateCapturedTypes(KotlinType type) {
        SimpleType simpleType;
        p.d(type, "type");
        if (FlexibleTypesKt.isFlexible(type)) {
            ApproximationBounds<KotlinType> approximateCapturedTypes = approximateCapturedTypes(FlexibleTypesKt.lowerIfFlexible(type));
            ApproximationBounds<KotlinType> approximateCapturedTypes2 = approximateCapturedTypes(FlexibleTypesKt.upperIfFlexible(type));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            UnwrappedType inheritEnhancement = TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(approximateCapturedTypes.getLower()), FlexibleTypesKt.upperIfFlexible(approximateCapturedTypes2.getLower())), type);
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            return new ApproximationBounds<>(inheritEnhancement, TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(approximateCapturedTypes.getUpper()), FlexibleTypesKt.upperIfFlexible(approximateCapturedTypes2.getUpper())), type));
        }
        TypeConstructor constructor = type.getConstructor();
        if (a.a(type)) {
            TypeProjection projection = ((CapturedTypeConstructor) constructor).getProjection();
            KotlinType type2 = projection.getType();
            p.b(type2, "typeProjection.type");
            KotlinType approximateCapturedTypes$makeNullableIfNeeded = approximateCapturedTypes$makeNullableIfNeeded(type2, type);
            int i = WhenMappings.$EnumSwitchMapping$0[projection.getProjectionKind().ordinal()];
            if (i == 2) {
                SimpleType h = TypeUtilsKt.getBuiltIns(type).h();
                p.b(h, "type.builtIns.nullableAnyType");
                return new ApproximationBounds<>(approximateCapturedTypes$makeNullableIfNeeded, h);
            } else if (i == 3) {
                SimpleType f = TypeUtilsKt.getBuiltIns(type).f();
                p.b(f, "type.builtIns.nothingType");
                return new ApproximationBounds<>(approximateCapturedTypes$makeNullableIfNeeded(f, type), approximateCapturedTypes$makeNullableIfNeeded);
            } else {
                throw new AssertionError(p.a("Only nontrivial projections should have been captured, not: ", (Object) projection));
            }
        } else if (type.getArguments().isEmpty() || type.getArguments().size() != constructor.getParameters().size()) {
            return new ApproximationBounds<>(type, type);
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            List<TypeProjection> arguments = type.getArguments();
            List<TypeParameterDescriptor> parameters = constructor.getParameters();
            p.b(parameters, "typeConstructor.parameters");
            for (n nVar : kotlin.a.n.d((Iterable) arguments, (Iterable) parameters)) {
                TypeProjection typeProjection = (TypeProjection) nVar.f36810a;
                TypeParameterDescriptor typeParameter = (TypeParameterDescriptor) nVar.f36811b;
                p.b(typeParameter, "typeParameter");
                TypeArgument typeArgument = toTypeArgument(typeProjection, typeParameter);
                if (typeProjection.isStarProjection()) {
                    arrayList.add(typeArgument);
                    arrayList2.add(typeArgument);
                } else {
                    ApproximationBounds<TypeArgument> approximateProjection = approximateProjection(typeArgument);
                    arrayList.add(approximateProjection.component1());
                    arrayList2.add(approximateProjection.component2());
                }
            }
            ArrayList<TypeArgument> arrayList3 = arrayList;
            boolean z = true;
            if (!arrayList3.isEmpty()) {
                for (TypeArgument typeArgument2 : arrayList3) {
                    if (!typeArgument2.isConsistent()) {
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                SimpleType f2 = TypeUtilsKt.getBuiltIns(type).f();
                p.b(f2, "type.builtIns.nothingType");
                simpleType = f2;
            } else {
                simpleType = replaceTypeArguments(type, arrayList);
            }
            return new ApproximationBounds<>(simpleType, replaceTypeArguments(type, arrayList2));
        }
    }

    private static final KotlinType approximateCapturedTypes$makeNullableIfNeeded(KotlinType kotlinType, KotlinType kotlinType2) {
        KotlinType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(kotlinType, kotlinType2.isMarkedNullable());
        p.b(makeNullableIfNeeded, "makeNullableIfNeeded(this, type.isMarkedNullable)");
        return makeNullableIfNeeded;
    }

    public static final TypeProjection approximateCapturedTypesIfNecessary(TypeProjection typeProjection, boolean z) {
        if (typeProjection == null) {
            return null;
        }
        if (typeProjection.isStarProjection()) {
            return typeProjection;
        }
        KotlinType type = typeProjection.getType();
        p.b(type, "typeProjection.type");
        if (!TypeUtils.contains(type, CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1.INSTANCE)) {
            return typeProjection;
        }
        Variance projectionKind = typeProjection.getProjectionKind();
        p.b(projectionKind, "typeProjection.projectionKind");
        return projectionKind == Variance.OUT_VARIANCE ? new TypeProjectionImpl(projectionKind, approximateCapturedTypes(type).getUpper()) : z ? new TypeProjectionImpl(projectionKind, approximateCapturedTypes(type).getLower()) : substituteCapturedTypesWithProjections(typeProjection);
    }

    private static final ApproximationBounds<TypeArgument> approximateProjection(TypeArgument typeArgument) {
        ApproximationBounds<KotlinType> approximateCapturedTypes = approximateCapturedTypes(typeArgument.getInProjection());
        KotlinType component1 = approximateCapturedTypes.component1();
        KotlinType component2 = approximateCapturedTypes.component2();
        ApproximationBounds<KotlinType> approximateCapturedTypes2 = approximateCapturedTypes(typeArgument.getOutProjection());
        return new ApproximationBounds<>(new TypeArgument(typeArgument.getTypeParameter(), component2, approximateCapturedTypes2.component1()), new TypeArgument(typeArgument.getTypeParameter(), component1, approximateCapturedTypes2.component2()));
    }

    private static final KotlinType replaceTypeArguments(KotlinType kotlinType, List<TypeArgument> list) {
        boolean z = kotlinType.getArguments().size() == list.size();
        if (!x.f38657a || z) {
            List<TypeArgument> list2 = list;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
            for (TypeArgument typeArgument : list2) {
                arrayList.add(toTypeProjection(typeArgument));
            }
            return TypeSubstitutionKt.replace$default(kotlinType, arrayList, null, null, 6, null);
        }
        throw new AssertionError(p.a("Incorrect type arguments ", (Object) list));
    }

    private static final TypeProjection substituteCapturedTypesWithProjections(TypeProjection typeProjection) {
        TypeSubstitutor create = TypeSubstitutor.create(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public final TypeProjection get(TypeConstructor key) {
                p.d(key, "key");
                CapturedTypeConstructor capturedTypeConstructor = key instanceof CapturedTypeConstructor ? (CapturedTypeConstructor) key : null;
                if (capturedTypeConstructor == null) {
                    return null;
                }
                return capturedTypeConstructor.getProjection().isStarProjection() ? new TypeProjectionImpl(Variance.OUT_VARIANCE, capturedTypeConstructor.getProjection().getType()) : capturedTypeConstructor.getProjection();
            }
        });
        p.b(create, "create(object : TypeConstructorSubstitution() {\n        override fun get(key: TypeConstructor): TypeProjection? {\n            val capturedTypeConstructor = key as? CapturedTypeConstructor ?: return null\n            if (capturedTypeConstructor.projection.isStarProjection) {\n                return TypeProjectionImpl(Variance.OUT_VARIANCE, capturedTypeConstructor.projection.type)\n            }\n            return capturedTypeConstructor.projection\n        }\n    })");
        return create.substituteWithoutApproximation(typeProjection);
    }

    private static final TypeArgument toTypeArgument(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        int i = WhenMappings.$EnumSwitchMapping$0[TypeSubstitutor.combine(typeParameterDescriptor.getVariance(), typeProjection).ordinal()];
        if (i == 1) {
            KotlinType type = typeProjection.getType();
            p.b(type, "type");
            KotlinType type2 = typeProjection.getType();
            p.b(type2, "type");
            return new TypeArgument(typeParameterDescriptor, type, type2);
        } else if (i == 2) {
            KotlinType type3 = typeProjection.getType();
            p.b(type3, "type");
            SimpleType h = kotlin.reflect.jvm.internal.impl.resolve.b.a.d(typeParameterDescriptor).h();
            p.b(h, "typeParameter.builtIns.nullableAnyType");
            return new TypeArgument(typeParameterDescriptor, type3, h);
        } else if (i == 3) {
            SimpleType f = kotlin.reflect.jvm.internal.impl.resolve.b.a.d(typeParameterDescriptor).f();
            p.b(f, "typeParameter.builtIns.nothingType");
            SimpleType simpleType = f;
            KotlinType type4 = typeProjection.getType();
            p.b(type4, "type");
            return new TypeArgument(typeParameterDescriptor, simpleType, type4);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private static final TypeProjection toTypeProjection(TypeArgument typeArgument) {
        boolean isConsistent = typeArgument.isConsistent();
        if (x.f38657a && !isConsistent) {
            c.a aVar = c.f37599a;
            c a2 = c.a.a(CapturedTypeApproximationKt$toTypeProjection$1$descriptorRenderer$1.INSTANCE);
            throw new AssertionError("Only consistent enhanced type projection can be converted to type projection, but [" + a2.a(typeArgument.getTypeParameter()) + ": <" + a2.a(typeArgument.getInProjection()) + ", " + a2.a(typeArgument.getOutProjection()) + ">] was found");
        } else if (p.a(typeArgument.getInProjection(), typeArgument.getOutProjection()) || typeArgument.getTypeParameter().getVariance() == Variance.IN_VARIANCE) {
            return new TypeProjectionImpl(typeArgument.getInProjection());
        } else {
            if ((!g.n(typeArgument.getInProjection()) || typeArgument.getTypeParameter().getVariance() == Variance.IN_VARIANCE) && g.p(typeArgument.getOutProjection())) {
                return new TypeProjectionImpl(toTypeProjection$removeProjectionIfRedundant(typeArgument, Variance.IN_VARIANCE), typeArgument.getInProjection());
            }
            return new TypeProjectionImpl(toTypeProjection$removeProjectionIfRedundant(typeArgument, Variance.OUT_VARIANCE), typeArgument.getOutProjection());
        }
    }

    private static final Variance toTypeProjection$removeProjectionIfRedundant(TypeArgument typeArgument, Variance variance) {
        return variance == typeArgument.getTypeParameter().getVariance() ? Variance.INVARIANT : variance;
    }
}
