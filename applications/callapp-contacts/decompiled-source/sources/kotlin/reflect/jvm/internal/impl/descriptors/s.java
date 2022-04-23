package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/s.class */
public abstract class s {
    public final Integer a(s visibility) {
        p.d(visibility, "visibility");
        return a().a(visibility.a());
    }

    public abstract bf a();

    public abstract boolean a(e eVar, o oVar, k kVar);

    public abstract String b();

    public abstract s c();

    public final String toString() {
        return a().toString();
    }
}
