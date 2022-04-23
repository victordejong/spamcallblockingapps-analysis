package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/u.class */
public final class u {
    public static final a a(c cVar, int i) {
        p.d(cVar, "<this>");
        a a2 = a.a(cVar.b(i), cVar.c(i));
        p.b(a2, "fromString(getQualifiedClassName(index), isLocalClassName(index))");
        return a2;
    }

    public static final e b(c cVar, int i) {
        p.d(cVar, "<this>");
        e d2 = e.d(cVar.a(i));
        p.b(d2, "guessByFirstCharacter(getString(index))");
        return d2;
    }
}
