package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/m.class */
public final class m extends n<Integer> {
    public m(int i) {
        super(Integer.valueOf(i));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ KotlinType a(ab module) {
        p.d(module, "module");
        SimpleType l = module.getBuiltIns().l();
        p.b(l, "module.builtIns.intType");
        return l;
    }
}
