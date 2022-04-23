package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/SpecialTypesKt.class */
public final class SpecialTypesKt {
    public static final AbbreviatedType getAbbreviatedType(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof AbbreviatedType) {
            return (AbbreviatedType) unwrap;
        }
        return null;
    }

    public static final SimpleType getAbbreviation(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        AbbreviatedType abbreviatedType = getAbbreviatedType(kotlinType);
        if (abbreviatedType == null) {
            return null;
        }
        return abbreviatedType.getAbbreviation();
    }

    public static final boolean isDefinitelyNotNullType(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DefinitelyNotNullType;
    }

    private static final IntersectionTypeConstructor makeDefinitelyNotNullOrNotNull(IntersectionTypeConstructor intersectionTypeConstructor) {
        UnwrappedType alternativeType;
        Collection<KotlinType> supertypes = intersectionTypeConstructor.mo7371getSupertypes();
        ArrayList arrayList = new ArrayList(n.a(supertypes, 10));
        Iterator<T> it2 = supertypes.iterator();
        boolean z = false;
        while (true) {
            alternativeType = null;
            if (!it2.hasNext()) {
                break;
            }
            KotlinType kotlinType = (KotlinType) it2.next();
            UnwrappedType unwrappedType = kotlinType;
            if (TypeUtils.isNullableType(kotlinType)) {
                unwrappedType = makeDefinitelyNotNullOrNotNull$default(kotlinType.unwrap(), false, 1, null);
                z = true;
            }
            arrayList.add(unwrappedType);
        }
        ArrayList arrayList2 = arrayList;
        if (!z) {
            return null;
        }
        alternativeType = intersectionTypeConstructor.getAlternativeType();
        if (alternativeType != null && TypeUtils.isNullableType(alternativeType)) {
            alternativeType = makeDefinitelyNotNullOrNotNull$default(alternativeType.unwrap(), false, 1, null);
        }
        return new IntersectionTypeConstructor(arrayList2).setAlternative(alternativeType);
    }

    public static final UnwrappedType makeDefinitelyNotNullOrNotNull(UnwrappedType unwrappedType, boolean z) {
        p.d(unwrappedType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull$descriptors = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$descriptors(unwrappedType, z);
        if (makeDefinitelyNotNull$descriptors != null) {
            return makeDefinitelyNotNull$descriptors;
        }
        SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(unwrappedType);
        return makeIntersectionTypeDefinitelyNotNullOrNotNull == null ? unwrappedType.makeNullableAsSpecified(false) : makeIntersectionTypeDefinitelyNotNullOrNotNull;
    }

    public static /* synthetic */ UnwrappedType makeDefinitelyNotNullOrNotNull$default(UnwrappedType unwrappedType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return makeDefinitelyNotNullOrNotNull(unwrappedType, z);
    }

    private static final SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull(KotlinType kotlinType) {
        IntersectionTypeConstructor makeDefinitelyNotNullOrNotNull;
        TypeConstructor constructor = kotlinType.getConstructor();
        IntersectionTypeConstructor intersectionTypeConstructor = constructor instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) constructor : null;
        if (intersectionTypeConstructor == null || (makeDefinitelyNotNullOrNotNull = makeDefinitelyNotNullOrNotNull(intersectionTypeConstructor)) == null) {
            return null;
        }
        return makeDefinitelyNotNullOrNotNull.createType();
    }

    public static final SimpleType makeSimpleTypeDefinitelyNotNullOrNotNull(SimpleType simpleType, boolean z) {
        p.d(simpleType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull$descriptors = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$descriptors(simpleType, z);
        if (makeDefinitelyNotNull$descriptors != null) {
            return makeDefinitelyNotNull$descriptors;
        }
        SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(simpleType);
        return makeIntersectionTypeDefinitelyNotNullOrNotNull == null ? simpleType.makeNullableAsSpecified(false) : makeIntersectionTypeDefinitelyNotNullOrNotNull;
    }

    public static /* synthetic */ SimpleType makeSimpleTypeDefinitelyNotNullOrNotNull$default(SimpleType simpleType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return makeSimpleTypeDefinitelyNotNullOrNotNull(simpleType, z);
    }

    public static final SimpleType withAbbreviation(SimpleType simpleType, SimpleType abbreviatedType) {
        p.d(simpleType, "<this>");
        p.d(abbreviatedType, "abbreviatedType");
        return KotlinTypeKt.isError(simpleType) ? simpleType : new AbbreviatedType(simpleType, abbreviatedType);
    }

    public static final NewCapturedType withNotNullProjection(NewCapturedType newCapturedType) {
        p.d(newCapturedType, "<this>");
        return new NewCapturedType(newCapturedType.getCaptureStatus(), newCapturedType.getConstructor(), newCapturedType.getLowerType(), newCapturedType.getAnnotations(), newCapturedType.isMarkedNullable(), true);
    }
}
