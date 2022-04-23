package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b.class */
public final class b {
    private static final List<a> e;
    private static final Map<kotlin.reflect.jvm.internal.impl.c.b, p> f;
    private static final Map<kotlin.reflect.jvm.internal.impl.c.b, p> g;

    /* renamed from: a  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.b f37745a = new kotlin.reflect.jvm.internal.impl.c.b("javax.annotation.meta.TypeQualifierNickname");

    /* renamed from: b  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.b f37746b = new kotlin.reflect.jvm.internal.impl.c.b("javax.annotation.meta.TypeQualifier");

    /* renamed from: c  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.b f37747c = new kotlin.reflect.jvm.internal.impl.c.b("javax.annotation.meta.TypeQualifierDefault");

    /* renamed from: d  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.b f37748d = new kotlin.reflect.jvm.internal.impl.c.b("kotlin.annotations.jvm.UnderMigration");
    private static final Set<kotlin.reflect.jvm.internal.impl.c.b> h = ap.a((Object[]) new kotlin.reflect.jvm.internal.impl.c.b[]{v.e(), v.f()});

    static {
        List<a> b2 = n.b((Object[]) new a[]{a.FIELD, a.METHOD_RETURN_TYPE, a.VALUE_PARAMETER, a.TYPE_PARAMETER_BOUNDS, a.TYPE_USE});
        e = b2;
        Map<kotlin.reflect.jvm.internal.impl.c.b, p> map = ai.a(t.a(v.c(), new p(new h(g.NOT_NULL, false, 2, null), b2, false)));
        f = map;
        Map plus = ai.a(t.a(new kotlin.reflect.jvm.internal.impl.c.b("javax.annotation.ParametersAreNullableByDefault"), new p(new h(g.NULLABLE, false, 2, null), n.a(a.VALUE_PARAMETER), false, 4, null)), t.a(new kotlin.reflect.jvm.internal.impl.c.b("javax.annotation.ParametersAreNonnullByDefault"), new p(new h(g.NOT_NULL, false, 2, null), n.a(a.VALUE_PARAMETER), false, 4, null)));
        p.d(plus, "$this$plus");
        p.d(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.putAll(map);
        g = linkedHashMap;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b a() {
        return f37745a;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b b() {
        return f37746b;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b c() {
        return f37747c;
    }

    public static final kotlin.reflect.jvm.internal.impl.c.b d() {
        return f37748d;
    }

    public static final Map<kotlin.reflect.jvm.internal.impl.c.b, p> e() {
        return f;
    }

    public static final Map<kotlin.reflect.jvm.internal.impl.c.b, p> f() {
        return g;
    }

    public static final Set<kotlin.reflect.jvm.internal.impl.c.b> g() {
        return h;
    }
}
