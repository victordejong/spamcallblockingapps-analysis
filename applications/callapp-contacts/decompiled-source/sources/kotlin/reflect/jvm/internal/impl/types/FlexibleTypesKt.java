package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt.class */
public final class FlexibleTypesKt {
    public static final FlexibleType asFlexibleType(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return (FlexibleType) kotlinType.unwrap();
    }

    public static final boolean isFlexible(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof FlexibleType;
    }

    public static final SimpleType lowerIfFlexible(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getLowerBound();
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final SimpleType upperIfFlexible(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getUpperBound();
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        throw new NoWhenBranchMatchedException();
    }
}
