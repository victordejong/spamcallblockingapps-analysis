package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt.class */
public final class TypeWithEnhancementKt {
    public static final KotlinType getEnhancement(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        if (kotlinType instanceof TypeWithEnhancement) {
            return ((TypeWithEnhancement) kotlinType).getEnhancement();
        }
        return null;
    }

    public static final UnwrappedType inheritEnhancement(UnwrappedType unwrappedType, KotlinType origin) {
        p.d(unwrappedType, "<this>");
        p.d(origin, "origin");
        return wrapEnhancement(unwrappedType, getEnhancement(origin));
    }

    public static final KotlinType unwrapEnhancement(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        KotlinType enhancement = getEnhancement(kotlinType);
        return enhancement == null ? kotlinType : enhancement;
    }

    public static final UnwrappedType wrapEnhancement(UnwrappedType unwrappedType, KotlinType kotlinType) {
        p.d(unwrappedType, "<this>");
        if (kotlinType == null) {
            return unwrappedType;
        }
        if (unwrappedType instanceof SimpleType) {
            return new SimpleTypeWithEnhancement((SimpleType) unwrappedType, kotlinType);
        }
        if (unwrappedType instanceof FlexibleType) {
            return new FlexibleTypeWithEnhancement((FlexibleType) unwrappedType, kotlinType);
        }
        throw new NoWhenBranchMatchedException();
    }
}
