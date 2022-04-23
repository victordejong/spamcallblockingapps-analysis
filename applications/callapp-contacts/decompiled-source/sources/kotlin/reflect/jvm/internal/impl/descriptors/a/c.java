package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Map;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/c.class */
public interface c {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/c$a.class */
    public static final class a {
        public static b a(c cVar) {
            p.d(cVar, "this");
            d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(cVar);
            if (a2 == null) {
                return null;
            }
            if (ErrorUtils.isError(a2)) {
                a2 = null;
            }
            if (a2 == null) {
                return null;
            }
            return kotlin.reflect.jvm.internal.impl.resolve.b.a.f(a2);
        }
    }

    KotlinType a();

    b b();

    Map<e, g<?>> c();

    at d();
}
