package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/c.class */
public final class C19777c extends AbstractC19781g<Boolean> {
    public C19777c(boolean z) {
        super(Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType m2784n = module.getBuiltIns().m2784n();
        C18524p.m3843b(m2784n, "module.builtIns.booleanType");
        return m2784n;
    }
}
