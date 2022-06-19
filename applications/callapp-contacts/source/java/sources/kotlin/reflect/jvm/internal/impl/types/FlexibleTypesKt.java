package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt.class */
public final class FlexibleTypesKt {
    public static final FlexibleType asFlexibleType(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return (FlexibleType) kotlinType.unwrap();
    }

    public static final boolean isFlexible(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof FlexibleType;
    }

    public static final SimpleType lowerIfFlexible(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getLowerBound();
        }
        if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        }
        return (SimpleType) unwrap;
    }

    public static final SimpleType upperIfFlexible(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getUpperBound();
        }
        if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        }
        return (SimpleType) unwrap;
    }
}
