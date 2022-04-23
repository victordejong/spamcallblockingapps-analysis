package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/z.class */
public final class z {
    public static final boolean a(d dVar) {
        p.d(dVar, "<this>");
        return dVar.getModality() == y.FINAL && dVar.getKind() != e.ENUM_CLASS;
    }
}
