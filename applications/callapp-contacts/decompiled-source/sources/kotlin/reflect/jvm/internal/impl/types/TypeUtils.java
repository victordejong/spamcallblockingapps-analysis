package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.utils.i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeUtils.class */
public class TypeUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final SimpleType DONT_CARE = ErrorUtils.createErrorTypeWithCustomDebugName("DONT_CARE");
    public static final SimpleType CANT_INFER_FUNCTION_PARAM_TYPE = ErrorUtils.createErrorType("Cannot be inferred");
    public static final SimpleType NO_EXPECTED_TYPE = new SpecialType("NO_EXPECTED_TYPE");
    public static final SimpleType UNIT_EXPECTED_TYPE = new SpecialType("UNIT_EXPECTED_TYPE");

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType.class */
    public static class SpecialType extends DelegatingSimpleType {
        private final String name;

        /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x007e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void $$$reportNull$$$0(int r4) {
            /*
                Method dump skipped, instructions count: 201
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeUtils.SpecialType.$$$reportNull$$$0(int):void");
        }

        public SpecialType(String str) {
            this.name = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
        protected SimpleType getDelegate() {
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public SimpleType makeNullableAsSpecified(boolean z) {
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
        public SpecialType refine(KotlinTypeRefiner kotlinTypeRefiner) {
            if (kotlinTypeRefiner == null) {
                $$$reportNull$$$0(3);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
        public SimpleType replaceAnnotations(g gVar) {
            if (gVar == null) {
                $$$reportNull$$$0(0);
            }
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
        public DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
            if (simpleType == null) {
                $$$reportNull$$$0(2);
            }
            throw new IllegalStateException(this.name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
        public String toString() {
            String str = this.name;
            if (str == null) {
                $$$reportNull$$$0(1);
            }
            return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0292  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r4) {
        /*
            Method dump skipped, instructions count: 1463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeUtils.$$$reportNull$$$0(int):void");
    }

    public static boolean acceptsNullable(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(28);
        }
        if (kotlinType.isMarkedNullable()) {
            return true;
        }
        return FlexibleTypesKt.isFlexible(kotlinType) && acceptsNullable(FlexibleTypesKt.asFlexibleType(kotlinType).getUpperBound());
    }

    public static boolean contains(KotlinType kotlinType, Function1<UnwrappedType, Boolean> function1) {
        if (function1 == null) {
            $$$reportNull$$$0(43);
        }
        return contains(kotlinType, function1, null);
    }

    private static boolean contains(KotlinType kotlinType, Function1<UnwrappedType, Boolean> function1, i<KotlinType> iVar) {
        if (function1 == null) {
            $$$reportNull$$$0(44);
        }
        if (kotlinType == null) {
            return false;
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (noExpectedType(kotlinType)) {
            return function1.invoke(unwrap).booleanValue();
        }
        if (iVar != null && iVar.contains(kotlinType)) {
            return false;
        }
        if (function1.invoke(unwrap).booleanValue()) {
            return true;
        }
        i<KotlinType> iVar2 = iVar;
        if (iVar == null) {
            iVar2 = i.a();
        }
        iVar2.add(kotlinType);
        FlexibleType flexibleType = unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
        if (flexibleType != null && (contains(flexibleType.getLowerBound(), function1, iVar2) || contains(flexibleType.getUpperBound(), function1, iVar2))) {
            return true;
        }
        if ((unwrap instanceof DefinitelyNotNullType) && contains(((DefinitelyNotNullType) unwrap).getOriginal(), function1, iVar2)) {
            return true;
        }
        TypeConstructor constructor = kotlinType.getConstructor();
        if (constructor instanceof IntersectionTypeConstructor) {
            for (KotlinType kotlinType2 : ((IntersectionTypeConstructor) constructor).mo7371getSupertypes()) {
                if (contains(kotlinType2, function1, iVar2)) {
                    return true;
                }
            }
            return false;
        }
        for (TypeProjection typeProjection : kotlinType.getArguments()) {
            if (!typeProjection.isStarProjection()) {
                if (contains(typeProjection.getType(), function1, iVar2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static KotlinType createSubstitutedSupertype(KotlinType kotlinType, KotlinType kotlinType2, TypeSubstitutor typeSubstitutor) {
        if (kotlinType == null) {
            $$$reportNull$$$0(20);
        }
        if (kotlinType2 == null) {
            $$$reportNull$$$0(21);
        }
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(22);
        }
        KotlinType substitute = typeSubstitutor.substitute(kotlinType2, Variance.INVARIANT);
        if (substitute != null) {
            return makeNullableIfNeeded(substitute, kotlinType.isMarkedNullable());
        }
        return null;
    }

    public static d getClassDescriptor(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(30);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof d) {
            return (d) declarationDescriptor;
        }
        return null;
    }

    public static List<TypeProjection> getDefaultTypeProjections(List<TypeParameterDescriptor> list) {
        if (list == null) {
            $$$reportNull$$$0(16);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            arrayList.add(new TypeProjectionImpl(typeParameterDescriptor.getDefaultType()));
        }
        List<TypeProjection> h = n.h((Iterable) arrayList);
        if (h == null) {
            $$$reportNull$$$0(17);
        }
        return h;
    }

    public static List<KotlinType> getImmediateSupertypes(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(18);
        }
        TypeSubstitutor create = TypeSubstitutor.create(kotlinType);
        Collection<KotlinType> supertypes = kotlinType.getConstructor().mo7371getSupertypes();
        ArrayList arrayList = new ArrayList(supertypes.size());
        for (KotlinType kotlinType2 : supertypes) {
            KotlinType createSubstitutedSupertype = createSubstitutedSupertype(kotlinType, kotlinType2, create);
            if (createSubstitutedSupertype != null) {
                arrayList.add(createSubstitutedSupertype);
            }
        }
        return arrayList;
    }

    public static TypeParameterDescriptor getTypeParameterDescriptorOrNull(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(62);
        }
        if (kotlinType.getConstructor().getDeclarationDescriptor() instanceof TypeParameterDescriptor) {
            return (TypeParameterDescriptor) kotlinType.getConstructor().getDeclarationDescriptor();
        }
        return null;
    }

    public static boolean hasNullableSuperType(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(29);
        }
        if (kotlinType.getConstructor().getDeclarationDescriptor() instanceof d) {
            return false;
        }
        for (KotlinType kotlinType2 : getImmediateSupertypes(kotlinType)) {
            if (isNullableType(kotlinType2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDontCarePlaceholder(KotlinType kotlinType) {
        return kotlinType != null && kotlinType.getConstructor() == DONT_CARE.getConstructor();
    }

    public static boolean isNullableType(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(27);
        }
        if (kotlinType.isMarkedNullable()) {
            return true;
        }
        if (FlexibleTypesKt.isFlexible(kotlinType) && isNullableType(FlexibleTypesKt.asFlexibleType(kotlinType).getUpperBound())) {
            return true;
        }
        if (SpecialTypesKt.isDefinitelyNotNullType(kotlinType)) {
            return false;
        }
        if (isTypeParameter(kotlinType)) {
            return hasNullableSuperType(kotlinType);
        }
        TypeConstructor constructor = kotlinType.getConstructor();
        if (!(constructor instanceof IntersectionTypeConstructor)) {
            return false;
        }
        for (KotlinType kotlinType2 : constructor.mo7371getSupertypes()) {
            if (isNullableType(kotlinType2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTypeParameter(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(59);
        }
        return getTypeParameterDescriptorOrNull(kotlinType) != null || (kotlinType.getConstructor() instanceof NewTypeVariableConstructor);
    }

    public static KotlinType makeNotNullable(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(2);
        }
        return makeNullableAsSpecified(kotlinType, false);
    }

    public static KotlinType makeNullable(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(1);
        }
        return makeNullableAsSpecified(kotlinType, true);
    }

    public static KotlinType makeNullableAsSpecified(KotlinType kotlinType, boolean z) {
        if (kotlinType == null) {
            $$$reportNull$$$0(3);
        }
        UnwrappedType makeNullableAsSpecified = kotlinType.unwrap().makeNullableAsSpecified(z);
        if (makeNullableAsSpecified == null) {
            $$$reportNull$$$0(4);
        }
        return makeNullableAsSpecified;
    }

    public static KotlinType makeNullableIfNeeded(KotlinType kotlinType, boolean z) {
        if (kotlinType == null) {
            $$$reportNull$$$0(8);
        }
        if (z) {
            return makeNullable(kotlinType);
        }
        if (kotlinType == null) {
            $$$reportNull$$$0(9);
        }
        return kotlinType;
    }

    public static SimpleType makeNullableIfNeeded(SimpleType simpleType, boolean z) {
        if (simpleType == null) {
            $$$reportNull$$$0(5);
        }
        if (z) {
            SimpleType makeNullableAsSpecified = simpleType.makeNullableAsSpecified(true);
            if (makeNullableAsSpecified == null) {
                $$$reportNull$$$0(6);
            }
            return makeNullableAsSpecified;
        }
        if (simpleType == null) {
            $$$reportNull$$$0(7);
        }
        return simpleType;
    }

    public static TypeProjection makeStarProjection(TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null) {
            $$$reportNull$$$0(45);
        }
        return new StarProjectionImpl(typeParameterDescriptor);
    }

    public static SimpleType makeUnsubstitutedType(kotlin.reflect.jvm.internal.impl.descriptors.g gVar, h hVar, Function1<KotlinTypeRefiner, SimpleType> function1) {
        if (!ErrorUtils.isError(gVar)) {
            return makeUnsubstitutedType(gVar.getTypeConstructor(), hVar, function1);
        }
        SimpleType createErrorType = ErrorUtils.createErrorType("Unsubstituted type for ".concat(String.valueOf(gVar)));
        if (createErrorType == null) {
            $$$reportNull$$$0(11);
        }
        return createErrorType;
    }

    public static SimpleType makeUnsubstitutedType(TypeConstructor typeConstructor, h hVar, Function1<KotlinTypeRefiner, SimpleType> function1) {
        if (typeConstructor == null) {
            $$$reportNull$$$0(12);
        }
        if (hVar == null) {
            $$$reportNull$$$0(13);
        }
        if (function1 == null) {
            $$$reportNull$$$0(14);
        }
        List<TypeProjection> defaultTypeProjections = getDefaultTypeProjections(typeConstructor.getParameters());
        g.a aVar = g.f37361a;
        SimpleType simpleTypeWithNonTrivialMemberScope = KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(g.a.a(), typeConstructor, defaultTypeProjections, false, hVar, function1);
        if (simpleTypeWithNonTrivialMemberScope == null) {
            $$$reportNull$$$0(15);
        }
        return simpleTypeWithNonTrivialMemberScope;
    }

    public static boolean noExpectedType(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(0);
        }
        return kotlinType == NO_EXPECTED_TYPE || kotlinType == UNIT_EXPECTED_TYPE;
    }
}
