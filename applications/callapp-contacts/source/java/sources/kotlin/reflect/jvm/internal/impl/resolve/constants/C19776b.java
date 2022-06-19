package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/b.class */
public final class C19776b extends AbstractC19781g<List<? extends AbstractC19781g<?>>> {

    /* renamed from: a */
    private final Function1<AbstractC18999ab, KotlinType> f65963a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C19776b(List<? extends AbstractC19781g<?>> value, Function1<? super AbstractC18999ab, ? extends KotlinType> computeType) {
        super(value);
        C18524p.m3840d(value, "value");
        C18524p.m3840d(computeType, "computeType");
        this.f65963a = computeType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        KotlinType invoke = this.f65963a.invoke(module);
        boolean z = AbstractC18940g.m2815b(invoke) || AbstractC18940g.m2810c(invoke) || AbstractC18940g.m2785m(invoke);
        if (!C20130x.f66532a || z) {
            return invoke;
        }
        throw new AssertionError("Type should be an array, but was " + invoke + ": " + mo1489a());
    }
}
