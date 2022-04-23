package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/x.class */
public final class x {
    public static final <T> T a(k<T> kVar, T possiblyPrimitiveType, boolean z) {
        p.d(kVar, "<this>");
        p.d(possiblyPrimitiveType, "possiblyPrimitiveType");
        return z ? kVar.a((k<T>) possiblyPrimitiveType) : possiblyPrimitiveType;
    }
}
