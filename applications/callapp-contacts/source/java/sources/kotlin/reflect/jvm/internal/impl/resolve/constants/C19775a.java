package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/a.class */
public final class C19775a extends AbstractC19781g<AbstractC18977c> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19775a(AbstractC18977c value) {
        super(value);
        C18524p.m3840d(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        return mo1489a().mo2043a();
    }
}
