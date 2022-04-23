package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/g.class */
public final class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final b a(b bVar, String str) {
        b a2 = bVar.a(e.a(str));
        p.b(a2, "child(Name.identifier(name))");
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final b a(c cVar, String str) {
        b c2 = cVar.a(e.a(str)).c();
        p.b(c2, "child(Name.identifier(name)).toSafe()");
        return c2;
    }
}
