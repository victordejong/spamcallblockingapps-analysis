package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/q.class */
public final class q extends g<Void> {
    public q() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ KotlinType a(ab module) {
        p.d(module, "module");
        SimpleType makeNullableAsSpecified = module.getBuiltIns().f().makeNullableAsSpecified(true);
        if (makeNullableAsSpecified == null) {
            g.b(48);
        }
        p.b(makeNullableAsSpecified, "module.builtIns.nullableNothingType");
        return makeNullableAsSpecified;
    }
}
