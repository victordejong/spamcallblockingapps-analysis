package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/s.class */
public final class C19801s extends AbstractC19781g<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19801s(String value) {
        super(value);
        C18524p.m3840d(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType m2780p = module.getBuiltIns().m2780p();
        C18524p.m3843b(m2780p, "module.builtIns.stringType");
        return m2780p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        return "\"" + mo1489a() + '\"';
    }
}
