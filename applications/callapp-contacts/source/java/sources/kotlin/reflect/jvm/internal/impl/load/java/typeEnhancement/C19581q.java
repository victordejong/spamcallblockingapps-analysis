package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q.class */
public final class C19581q {
    /* renamed from: a */
    public static final <T> T m1999a(Set<? extends T> set, T low, T high, T t, boolean z) {
        Set<? extends T> j;
        C18524p.m3840d(set, "<this>");
        C18524p.m3840d(low, "low");
        C18524p.m3840d(high, "high");
        if (!z) {
            if (t != null && (j = C18282n.m4114j(C18255ap.m4237a(set, t))) != null) {
                set = j;
            }
            return (T) C18282n.m4124e(set);
        }
        T t2 = set.contains(low) ? low : set.contains(high) ? high : null;
        if (C18524p.m3850a(t2, low) && C18524p.m3850a(t, high)) {
            return null;
        }
        return t == null ? t2 : t;
    }

    /* renamed from: a */
    public static final C19528e m1997a(EnumC19531g enumC19531g, EnumC19530f enumC19530f, boolean z, boolean z2) {
        return (!z2 || enumC19531g != EnumC19531g.NOT_NULL) ? new C19528e(enumC19531g, enumC19530f, false, z) : new C19528e(enumC19531g, enumC19530f, true, z);
    }

    /* renamed from: a */
    public static final EnumC19531g m1998a(Set<? extends EnumC19531g> set, EnumC19531g enumC19531g, boolean z) {
        C18524p.m3840d(set, "<this>");
        return enumC19531g == EnumC19531g.FORCE_FLEXIBILITY ? EnumC19531g.FORCE_FLEXIBILITY : (EnumC19531g) m1999a(set, EnumC19531g.NOT_NULL, EnumC19531g.NULLABLE, enumC19531g, z);
    }

    /* renamed from: a */
    public static final boolean m1996a(TypeSystemCommonBackendContext typeSystemCommonBackendContext, KotlinTypeMarker type) {
        C18524p.m3840d(typeSystemCommonBackendContext, "<this>");
        C18524p.m3840d(type, "type");
        C18961b ENHANCED_NULLABILITY_ANNOTATION = C19585u.f65623q;
        C18524p.m3843b(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        return typeSystemCommonBackendContext.hasAnnotation(type, ENHANCED_NULLABILITY_ANNOTATION);
    }
}
