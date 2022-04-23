package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/b.class */
public final class b extends g<List<? extends g<?>>> {

    /* renamed from: a  reason: collision with root package name */
    private final Function1<ab, KotlinType> f38248a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends g<?>> value, Function1<? super ab, ? extends KotlinType> computeType) {
        super(value);
        p.d(value, "value");
        p.d(computeType, "computeType");
        this.f38248a = computeType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final KotlinType a(ab module) {
        p.d(module, "module");
        KotlinType invoke = this.f38248a.invoke(module);
        boolean z = g.b(invoke) || g.c(invoke) || g.m(invoke);
        if (!x.f38657a || z) {
            return invoke;
        }
        throw new AssertionError("Type should be an array, but was " + invoke + ": " + a());
    }
}
