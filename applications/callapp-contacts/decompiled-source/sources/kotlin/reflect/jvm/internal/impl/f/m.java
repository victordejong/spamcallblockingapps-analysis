package kotlin.reflect.jvm.internal.impl.f;

import kotlin.jvm.internal.p;
import kotlin.reflect.KProperty;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/m.class */
public final class m {
    public static final <T> T a(i<? extends T> iVar, KProperty<?> p) {
        p.d(iVar, "<this>");
        p.d(p, "p");
        return (T) iVar.invoke();
    }

    public static final <T> T a(j<? extends T> jVar, KProperty<?> p) {
        p.d(jVar, "<this>");
        p.d(p, "p");
        return (T) jVar.invoke();
    }
}
