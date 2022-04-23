package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DynamicTypesKt.class */
public final class DynamicTypesKt {
    public static final boolean isDynamic(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DynamicType;
    }
}
