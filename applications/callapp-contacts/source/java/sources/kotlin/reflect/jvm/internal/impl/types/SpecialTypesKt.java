package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/SpecialTypesKt.class */
public final class SpecialTypesKt {
    public static final AbbreviatedType getAbbreviatedType(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof AbbreviatedType) {
            return (AbbreviatedType) unwrap;
        }
        return null;
    }

    public static final SimpleType getAbbreviation(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        AbbreviatedType abbreviatedType = getAbbreviatedType(kotlinType);
        if (abbreviatedType == null) {
            return null;
        }
        return abbreviatedType.getAbbreviation();
    }

    public static final boolean isDefinitelyNotNullType(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DefinitelyNotNullType;
    }

    private static final IntersectionTypeConstructor makeDefinitelyNotNullOrNotNull(IntersectionTypeConstructor intersectionTypeConstructor) {
        UnwrappedType unwrappedType;
        Collection<KotlinType> mo53752getSupertypes = intersectionTypeConstructor.mo53752getSupertypes();
        ArrayList arrayList = new ArrayList(C18282n.m4163a(mo53752getSupertypes, 10));
        boolean z = false;
        for (KotlinType kotlinType : mo53752getSupertypes) {
            UnwrappedType unwrappedType2 = kotlinType;
            if (TypeUtils.isNullableType(kotlinType)) {
                unwrappedType2 = makeDefinitelyNotNullOrNotNull$default(kotlinType.unwrap(), false, 1, null);
                z = true;
            }
            arrayList.add(unwrappedType2);
        }
        ArrayList arrayList2 = arrayList;
        if (!z) {
            return null;
        }
        KotlinType alternativeType = intersectionTypeConstructor.getAlternativeType();
        if (alternativeType == null) {
            unwrappedType = null;
        } else {
            boolean isNullableType = TypeUtils.isNullableType(alternativeType);
            unwrappedType = alternativeType;
            if (isNullableType) {
                unwrappedType = makeDefinitelyNotNullOrNotNull$default(alternativeType.unwrap(), false, 1, null);
            }
        }
        return new IntersectionTypeConstructor(arrayList2).setAlternative(unwrappedType);
    }

    public static final UnwrappedType makeDefinitelyNotNullOrNotNull(UnwrappedType unwrappedType, boolean z) {
        C18524p.m3840d(unwrappedType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull$descriptors = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$descriptors(unwrappedType, z);
        if (makeDefinitelyNotNull$descriptors == null) {
            SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(unwrappedType);
            return makeIntersectionTypeDefinitelyNotNullOrNotNull == null ? unwrappedType.makeNullableAsSpecified(false) : makeIntersectionTypeDefinitelyNotNullOrNotNull;
        }
        return makeDefinitelyNotNull$descriptors;
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
        C18524p.m3840d(simpleType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull$descriptors = DefinitelyNotNullType.Companion.makeDefinitelyNotNull$descriptors(simpleType, z);
        if (makeDefinitelyNotNull$descriptors == null) {
            SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(simpleType);
            return makeIntersectionTypeDefinitelyNotNullOrNotNull == null ? simpleType.makeNullableAsSpecified(false) : makeIntersectionTypeDefinitelyNotNullOrNotNull;
        }
        return makeDefinitelyNotNull$descriptors;
    }

    public static /* synthetic */ SimpleType makeSimpleTypeDefinitelyNotNullOrNotNull$default(SimpleType simpleType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return makeSimpleTypeDefinitelyNotNullOrNotNull(simpleType, z);
    }

    public static final SimpleType withAbbreviation(SimpleType simpleType, SimpleType abbreviatedType) {
        C18524p.m3840d(simpleType, "<this>");
        C18524p.m3840d(abbreviatedType, "abbreviatedType");
        return KotlinTypeKt.isError(simpleType) ? simpleType : new AbbreviatedType(simpleType, abbreviatedType);
    }

    public static final NewCapturedType withNotNullProjection(NewCapturedType newCapturedType) {
        C18524p.m3840d(newCapturedType, "<this>");
        return new NewCapturedType(newCapturedType.getCaptureStatus(), newCapturedType.getConstructor(), newCapturedType.getLowerType(), newCapturedType.getAnnotations(), newCapturedType.isMarkedNullable(), true);
    }
}
