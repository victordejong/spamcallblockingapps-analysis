package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m.class */
public final class m extends b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(n storageManager, Function0<? extends List<? extends c>> compute) {
        super(storageManager, compute);
        p.d(storageManager, "storageManager");
        p.d(compute, "compute");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        return false;
    }
}
