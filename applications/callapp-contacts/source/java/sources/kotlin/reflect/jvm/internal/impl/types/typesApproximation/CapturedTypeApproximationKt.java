package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import java.util.ArrayList;
import java.util.List;
import kotlin.C18538n;
import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.C19768a;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
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
        C18524p.m3840d(type, "type");
        if (FlexibleTypesKt.isFlexible(type)) {
            ApproximationBounds<KotlinType> approximateCapturedTypes = approximateCapturedTypes(FlexibleTypesKt.lowerIfFlexible(type));
            ApproximationBounds<KotlinType> approximateCapturedTypes2 = approximateCapturedTypes(FlexibleTypesKt.upperIfFlexible(type));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            UnwrappedType inheritEnhancement = TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(approximateCapturedTypes.getLower()), FlexibleTypesKt.upperIfFlexible(approximateCapturedTypes2.getLower())), type);
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            return new ApproximationBounds<>(inheritEnhancement, TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(approximateCapturedTypes.getUpper()), FlexibleTypesKt.upperIfFlexible(approximateCapturedTypes2.getUpper())), type));
        }
        TypeConstructor constructor = type.getConstructor();
        if (C19768a.m1498a(type)) {
            TypeProjection projection = ((CapturedTypeConstructor) constructor).getProjection();
            KotlinType type2 = projection.getType();
            C18524p.m3843b(type2, "typeProjection.type");
            KotlinType approximateCapturedTypes$makeNullableIfNeeded = approximateCapturedTypes$makeNullableIfNeeded(type2, type);
            int i = WhenMappings.$EnumSwitchMapping$0[projection.getProjectionKind().ordinal()];
            if (i == 2) {
                SimpleType m2796h = TypeUtilsKt.getBuiltIns(type).m2796h();
                C18524p.m3843b(m2796h, "type.builtIns.nullableAnyType");
                return new ApproximationBounds<>(approximateCapturedTypes$makeNullableIfNeeded, m2796h);
            } else if (i != 3) {
                throw new AssertionError(C18524p.m3847a("Only nontrivial projections should have been captured, not: ", (Object) projection));
            } else {
                SimpleType m2800f = TypeUtilsKt.getBuiltIns(type).m2800f();
                C18524p.m3843b(m2800f, "type.builtIns.nothingType");
                return new ApproximationBounds<>(approximateCapturedTypes$makeNullableIfNeeded(m2800f, type), approximateCapturedTypes$makeNullableIfNeeded);
            }
        } else if (type.getArguments().isEmpty() || type.getArguments().size() != constructor.getParameters().size()) {
            return new ApproximationBounds<>(type, type);
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            List<TypeProjection> arguments = type.getArguments();
            List<TypeParameterDescriptor> parameters = constructor.getParameters();
            C18524p.m3843b(parameters, "typeConstructor.parameters");
            for (C18538n c18538n : C18282n.m4127d((Iterable) arguments, (Iterable) parameters)) {
                TypeProjection typeProjection = (TypeProjection) c18538n.f63624a;
                TypeParameterDescriptor typeParameter = (TypeParameterDescriptor) c18538n.f63625b;
                C18524p.m3843b(typeParameter, "typeParameter");
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
                SimpleType m2800f2 = TypeUtilsKt.getBuiltIns(type).m2800f();
                C18524p.m3843b(m2800f2, "type.builtIns.nothingType");
                simpleType = m2800f2;
            } else {
                simpleType = replaceTypeArguments(type, arrayList);
            }
            return new ApproximationBounds<>(simpleType, replaceTypeArguments(type, arrayList2));
        }
    }

    private static final KotlinType approximateCapturedTypes$makeNullableIfNeeded(KotlinType kotlinType, KotlinType kotlinType2) {
        KotlinType makeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(kotlinType, kotlinType2.isMarkedNullable());
        C18524p.m3843b(makeNullableIfNeeded, "makeNullableIfNeeded(this, type.isMarkedNullable)");
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
        C18524p.m3843b(type, "typeProjection.type");
        if (!TypeUtils.contains(type, C19994x21acc51c.INSTANCE)) {
            return typeProjection;
        }
        Variance projectionKind = typeProjection.getProjectionKind();
        C18524p.m3843b(projectionKind, "typeProjection.projectionKind");
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
        if (!C20130x.f66532a || z) {
            List<TypeArgument> list2 = list;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (TypeArgument typeArgument : list2) {
                arrayList.add(toTypeProjection(typeArgument));
            }
            return TypeSubstitutionKt.replace$default(kotlinType, arrayList, null, null, 6, null);
        }
        throw new AssertionError(C18524p.m3847a("Incorrect type arguments ", (Object) list));
    }

    private static final TypeProjection substituteCapturedTypesWithProjections(TypeProjection typeProjection) {
        TypeSubstitutor create = TypeSubstitutor.create(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public final TypeProjection get(TypeConstructor key) {
                C18524p.m3840d(key, "key");
                CapturedTypeConstructor capturedTypeConstructor = key instanceof CapturedTypeConstructor ? (CapturedTypeConstructor) key : null;
                if (capturedTypeConstructor == null) {
                    return null;
                }
                return capturedTypeConstructor.getProjection().isStarProjection() ? new TypeProjectionImpl(Variance.OUT_VARIANCE, capturedTypeConstructor.getProjection().getType()) : capturedTypeConstructor.getProjection();
            }
        });
        C18524p.m3843b(create, "create(object : TypeConstructorSubstitution() {\n        override fun get(key: TypeConstructor): TypeProjection? {\n            val capturedTypeConstructor = key as? CapturedTypeConstructor ?: return null\n            if (capturedTypeConstructor.projection.isStarProjection) {\n                return TypeProjectionImpl(Variance.OUT_VARIANCE, capturedTypeConstructor.projection.type)\n            }\n            return capturedTypeConstructor.projection\n        }\n    })");
        return create.substituteWithoutApproximation(typeProjection);
    }

    private static final TypeArgument toTypeArgument(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        int i = WhenMappings.$EnumSwitchMapping$0[TypeSubstitutor.combine(typeParameterDescriptor.getVariance(), typeProjection).ordinal()];
        if (i == 1) {
            KotlinType type = typeProjection.getType();
            C18524p.m3843b(type, "type");
            KotlinType type2 = typeProjection.getType();
            C18524p.m3843b(type2, "type");
            return new TypeArgument(typeParameterDescriptor, type, type2);
        } else if (i == 2) {
            KotlinType type3 = typeProjection.getType();
            C18524p.m3843b(type3, "type");
            SimpleType m2796h = C19756a.m1526d(typeParameterDescriptor).m2796h();
            C18524p.m3843b(m2796h, "typeParameter.builtIns.nullableAnyType");
            return new TypeArgument(typeParameterDescriptor, type3, m2796h);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            SimpleType m2800f = C19756a.m1526d(typeParameterDescriptor).m2800f();
            C18524p.m3843b(m2800f, "typeParameter.builtIns.nothingType");
            SimpleType simpleType = m2800f;
            KotlinType type4 = typeProjection.getType();
            C18524p.m3843b(type4, "type");
            return new TypeArgument(typeParameterDescriptor, simpleType, type4);
        }
    }

    private static final TypeProjection toTypeProjection(TypeArgument typeArgument) {
        boolean isConsistent = typeArgument.isConsistent();
        if (!C20130x.f66532a || isConsistent) {
            if (C18524p.m3850a(typeArgument.getInProjection(), typeArgument.getOutProjection()) || typeArgument.getTypeParameter().getVariance() == Variance.IN_VARIANCE) {
                return new TypeProjectionImpl(typeArgument.getInProjection());
            }
            if ((!AbstractC18940g.m2783n(typeArgument.getInProjection()) || typeArgument.getTypeParameter().getVariance() == Variance.IN_VARIANCE) && AbstractC18940g.m2779p(typeArgument.getOutProjection())) {
                return new TypeProjectionImpl(toTypeProjection$removeProjectionIfRedundant(typeArgument, Variance.IN_VARIANCE), typeArgument.getInProjection());
            }
            return new TypeProjectionImpl(toTypeProjection$removeProjectionIfRedundant(typeArgument, Variance.OUT_VARIANCE), typeArgument.getOutProjection());
        }
        AbstractC19230c.C19231a c19231a = AbstractC19230c.f65024a;
        AbstractC19230c m2490a = AbstractC19230c.C19231a.m2490a(C19996x8e300b6.INSTANCE);
        throw new AssertionError("Only consistent enhanced type projection can be converted to type projection, but [" + m2490a.mo2447a(typeArgument.getTypeParameter()) + ": <" + m2490a.mo2425a(typeArgument.getInProjection()) + ", " + m2490a.mo2425a(typeArgument.getOutProjection()) + ">] was found");
    }

    private static final Variance toTypeProjection$removeProjectionIfRedundant(TypeArgument typeArgument, Variance variance) {
        return variance == typeArgument.getTypeParameter().getVariance() ? Variance.INVARIANT : variance;
    }
}
