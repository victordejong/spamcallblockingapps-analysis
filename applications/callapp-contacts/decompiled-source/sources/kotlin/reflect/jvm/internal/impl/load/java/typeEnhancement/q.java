package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Set;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q.class */
public final class q {
    public static final <T> T a(Set<? extends T> set, T low, T high, T t, boolean z) {
        Set<? extends T> j;
        p.d(set, "<this>");
        p.d(low, "low");
        p.d(high, "high");
        if (z) {
            T t2 = set.contains(low) ? low : set.contains(high) ? high : null;
            if (!p.a(t2, low) || !p.a(t, high)) {
                return t == null ? t2 : t;
            }
            return null;
        }
        if (!(t == null || (j = n.j(ap.a(set, t))) == null)) {
            set = j;
        }
        return (T) n.e(set);
    }

    public static final e a(g gVar, f fVar, boolean z, boolean z2) {
        return (!z2 || gVar != g.NOT_NULL) ? new e(gVar, fVar, false, z) : new e(gVar, fVar, true, z);
    }

    public static final g a(Set<? extends g> set, g gVar, boolean z) {
        p.d(set, "<this>");
        return gVar == g.FORCE_FLEXIBILITY ? g.FORCE_FLEXIBILITY : (g) a(set, g.NOT_NULL, g.NULLABLE, gVar, z);
    }

    public static final boolean a(TypeSystemCommonBackendContext typeSystemCommonBackendContext, KotlinTypeMarker type) {
        p.d(typeSystemCommonBackendContext, "<this>");
        p.d(type, "type");
        b ENHANCED_NULLABILITY_ANNOTATION = u.q;
        p.b(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        return typeSystemCommonBackendContext.hasAnnotation(type, ENHANCED_NULLABILITY_ANNOTATION);
    }
}
