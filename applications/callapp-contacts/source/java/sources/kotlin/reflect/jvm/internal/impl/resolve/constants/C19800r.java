package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/r.class */
public final class C19800r extends AbstractC19792n<Short> {
    public C19800r(short s) {
        super(Short.valueOf(s));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType m2790k = module.getBuiltIns().m2790k();
        C18524p.m3843b(m2790k, "module.builtIns.shortType");
        return m2790k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        return mo1489a().intValue() + ".toShort()";
    }
}
