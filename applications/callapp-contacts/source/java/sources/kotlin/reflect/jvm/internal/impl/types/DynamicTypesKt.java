package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DynamicTypesKt.class */
public final class DynamicTypesKt {
    public static final boolean isDynamic(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DynamicType;
    }
}
