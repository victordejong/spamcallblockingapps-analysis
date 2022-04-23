package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/i.class */
public final class i extends g<Double> {
    public i(double d2) {
        super(Double.valueOf(d2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ KotlinType a(ab module) {
        p.d(module, "module");
        SimpleType a2 = module.getBuiltIns().a(h.DOUBLE);
        if (a2 == null) {
            g.b(60);
        }
        p.b(a2, "module.builtIns.doubleType");
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final String toString() {
        return a().doubleValue() + ".toDouble()";
    }
}
