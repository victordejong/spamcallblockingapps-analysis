package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/c.class */
public final class c {
    public static final boolean a(b bVar, d classDescriptor) {
        p.d(bVar, "<this>");
        p.d(classDescriptor, "classDescriptor");
        if (!kotlin.reflect.jvm.internal.impl.resolve.d.g(classDescriptor)) {
            return false;
        }
        Set<a> a2 = b.a();
        a a3 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((g) classDescriptor);
        return n.a((Iterable<? extends a>) a2, a3 == null ? null : a3.d());
    }
}
