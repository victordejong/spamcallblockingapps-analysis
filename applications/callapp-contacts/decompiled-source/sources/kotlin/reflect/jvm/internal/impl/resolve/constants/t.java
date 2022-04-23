package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/t.class */
public final class t extends x<Byte> {
    public t(byte b2) {
        super(Byte.valueOf(b2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final KotlinType a(ab module) {
        p.d(module, "module");
        d b2 = v.b(module, j.a.at);
        SimpleType defaultType = b2 == null ? null : b2.getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        SimpleType createErrorType = ErrorUtils.createErrorType("Unsigned type UByte not found");
        p.b(createErrorType, "createErrorType(\"Unsigned type UByte not found\")");
        return createErrorType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final String toString() {
        return a().intValue() + ".toUByte()";
    }
}
