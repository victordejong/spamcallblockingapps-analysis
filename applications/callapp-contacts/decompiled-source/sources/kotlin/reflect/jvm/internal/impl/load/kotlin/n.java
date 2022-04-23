package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/n.class */
public final class n {
    public static final o a(m mVar, a classId) {
        p.d(mVar, "<this>");
        p.d(classId, "classId");
        m.a a2 = mVar.a(classId);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }
}
