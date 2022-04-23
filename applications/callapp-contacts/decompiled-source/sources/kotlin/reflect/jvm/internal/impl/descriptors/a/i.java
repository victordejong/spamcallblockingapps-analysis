package kotlin.reflect.jvm.internal.impl.descriptors.a;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/i.class */
public final class i {
    public static final g a(g first, g second) {
        p.d(first, "first");
        p.d(second, "second");
        return first.a() ? second : second.a() ? first : new k(first, second);
    }
}
