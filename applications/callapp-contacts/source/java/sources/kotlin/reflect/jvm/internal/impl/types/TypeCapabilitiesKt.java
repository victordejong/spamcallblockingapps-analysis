package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt.class */
public final class TypeCapabilitiesKt {
    public static final CustomTypeVariable getCustomTypeVariable(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        CustomTypeVariable customTypeVariable = unwrap instanceof CustomTypeVariable ? (CustomTypeVariable) unwrap : null;
        if (customTypeVariable == null || !customTypeVariable.isTypeVariable()) {
            return null;
        }
        return customTypeVariable;
    }

    public static final boolean isCustomTypeVariable(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        CustomTypeVariable customTypeVariable = unwrap instanceof CustomTypeVariable ? (CustomTypeVariable) unwrap : null;
        if (customTypeVariable == null) {
            return false;
        }
        return customTypeVariable.isTypeVariable();
    }
}
