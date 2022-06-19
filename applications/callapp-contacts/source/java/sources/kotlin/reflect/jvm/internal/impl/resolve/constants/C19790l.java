package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/l.class */
public final class C19790l extends AbstractC19781g<Float> {
    public C19790l(float f) {
        super(Float.valueOf(f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType m2831a = module.getBuiltIns().m2831a(EnumC18946h.FLOAT);
        if (m2831a == null) {
            AbstractC18940g.m2819b(59);
        }
        C18524p.m3843b(m2831a, "module.builtIns.floatType");
        return m2831a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        return mo1489a().floatValue() + ".toFloat()";
    }
}
