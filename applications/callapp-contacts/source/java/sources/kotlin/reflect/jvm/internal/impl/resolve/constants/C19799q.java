package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/q.class */
public final class C19799q extends AbstractC19781g<Void> {
    public C19799q() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType makeNullableAsSpecified = module.getBuiltIns().m2800f().makeNullableAsSpecified(true);
        if (makeNullableAsSpecified == null) {
            AbstractC18940g.m2819b(48);
        }
        C18524p.m3843b(makeNullableAsSpecified, "module.builtIns.nullableNothingType");
        return makeNullableAsSpecified;
    }
}
