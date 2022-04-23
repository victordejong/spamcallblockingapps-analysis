package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeKt.class */
public final class KotlinTypeKt {
    public static final boolean isError(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (!(unwrap instanceof ErrorType)) {
            return (unwrap instanceof FlexibleType) && (((FlexibleType) unwrap).getDelegate() instanceof ErrorType);
        }
        return true;
    }

    public static final boolean isNullable(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return TypeUtils.isNullableType(kotlinType);
    }
}
