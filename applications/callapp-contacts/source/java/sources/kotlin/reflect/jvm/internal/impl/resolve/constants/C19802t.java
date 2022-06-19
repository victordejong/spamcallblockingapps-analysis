package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/t.class */
public final class C19802t extends AbstractC19806x<Byte> {
    public C19802t(byte b) {
        super(Byte.valueOf(b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        AbstractC19070d m2497b = C19216v.m2497b(module, C18954j.C18955a.f64640at);
        SimpleType defaultType = m2497b == null ? null : m2497b.getDefaultType();
        if (defaultType == null) {
            SimpleType createErrorType = ErrorUtils.createErrorType("Unsigned type UByte not found");
            C18524p.m3843b(createErrorType, "createErrorType(\"Unsigned type UByte not found\")");
            return createErrorType;
        }
        return defaultType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        return mo1489a().intValue() + ".toUByte()";
    }
}
