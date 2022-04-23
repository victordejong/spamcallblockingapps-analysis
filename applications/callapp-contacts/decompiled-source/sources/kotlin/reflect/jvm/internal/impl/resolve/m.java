package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/m.class */
public final class m {
    public static final b a(Collection<? extends b> descriptors) {
        Integer a2;
        p.d(descriptors, "descriptors");
        boolean isEmpty = descriptors.isEmpty();
        if (!x.f38657a || (!isEmpty)) {
            b bVar = null;
            for (b bVar2 : descriptors) {
                if (bVar == null || ((a2 = r.a(bVar.getVisibility(), bVar2.getVisibility())) != null && a2.intValue() < 0)) {
                    bVar = bVar2;
                }
            }
            p.a(bVar);
            return bVar;
        }
        throw new AssertionError("Assertion failed");
    }
}
