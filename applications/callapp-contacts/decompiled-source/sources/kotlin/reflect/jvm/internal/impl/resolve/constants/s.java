package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/s.class */
public final class s extends g<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(String value) {
        super(value);
        p.d(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ KotlinType a(ab module) {
        p.d(module, "module");
        SimpleType p = module.getBuiltIns().p();
        p.b(p, "module.builtIns.stringType");
        return p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final String toString() {
        return "\"" + a() + '\"';
    }
}
