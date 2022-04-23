package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Map;
import kotlin.a.ai;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final e f37725b;

    /* renamed from: c  reason: collision with root package name */
    private static final e f37726c;

    /* renamed from: d  reason: collision with root package name */
    private static final e f37727d;

    /* renamed from: a  reason: collision with root package name */
    public static final c f37724a = new c();
    private static final Map<b, b> e = ai.a(t.a(j.a.F, u.f38004d), t.a(j.a.I, u.e), t.a(j.a.J, u.h), t.a(j.a.K, u.g));
    private static final Map<b, b> f = ai.a(t.a(u.f38004d, j.a.F), t.a(u.e, j.a.I), t.a(u.f, j.a.y), t.a(u.h, j.a.J), t.a(u.g, j.a.K));

    static {
        e a2 = e.a("message");
        p.b(a2, "identifier(\"message\")");
        f37725b = a2;
        e a3 = e.a("allowedTargets");
        p.b(a3, "identifier(\"allowedTargets\")");
        f37726c = a3;
        e a4 = e.a("value");
        p.b(a4, "identifier(\"value\")");
        f37727d = a4;
    }

    private c() {
    }

    public static e a() {
        return f37725b;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.a.c a(a annotation, g c2, boolean z) {
        p.d(annotation, "annotation");
        p.d(c2, "c");
        kotlin.reflect.jvm.internal.impl.c.a b2 = annotation.b();
        if (p.a(b2, kotlin.reflect.jvm.internal.impl.c.a.a(u.f38004d))) {
            return new i(annotation, c2);
        }
        if (p.a(b2, kotlin.reflect.jvm.internal.impl.c.a.a(u.e))) {
            return new h(annotation, c2);
        }
        if (p.a(b2, kotlin.reflect.jvm.internal.impl.c.a.a(u.h))) {
            return new b(c2, annotation, j.a.J);
        }
        if (p.a(b2, kotlin.reflect.jvm.internal.impl.c.a.a(u.g))) {
            return new b(c2, annotation, j.a.K);
        }
        if (p.a(b2, kotlin.reflect.jvm.internal.impl.c.a.a(u.f))) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e(c2, annotation, z);
    }

    public static e b() {
        return f37726c;
    }

    public static e c() {
        return f37727d;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a.c a(b kotlinName, d annotationOwner, g c2) {
        a a2;
        p.d(kotlinName, "kotlinName");
        p.d(annotationOwner, "annotationOwner");
        p.d(c2, "c");
        if (p.a(kotlinName, j.a.y)) {
            b DEPRECATED_ANNOTATION = u.f;
            p.b(DEPRECATED_ANNOTATION, "DEPRECATED_ANNOTATION");
            a a3 = annotationOwner.a(DEPRECATED_ANNOTATION);
            if (a3 != null || annotationOwner.c()) {
                return new e(a3, c2);
            }
        }
        b bVar = e.get(kotlinName);
        if (bVar == null || (a2 = annotationOwner.a(bVar)) == null) {
            return null;
        }
        return a(a2, c2, false);
    }
}
