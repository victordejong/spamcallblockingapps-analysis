package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19532h;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.EnumC19531g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b.class */
public final class C19366b {

    /* renamed from: e */
    private static final List<EnumC19343a> f65277e;

    /* renamed from: f */
    private static final Map<C18961b, C19514p> f65278f;

    /* renamed from: g */
    private static final Map<C18961b, C19514p> f65279g;

    /* renamed from: a */
    private static final C18961b f65273a = new C18961b("javax.annotation.meta.TypeQualifierNickname");

    /* renamed from: b */
    private static final C18961b f65274b = new C18961b("javax.annotation.meta.TypeQualifier");

    /* renamed from: c */
    private static final C18961b f65275c = new C18961b("javax.annotation.meta.TypeQualifierDefault");

    /* renamed from: d */
    private static final C18961b f65276d = new C18961b("kotlin.annotations.jvm.UnderMigration");

    /* renamed from: h */
    private static final Set<C18961b> f65280h = C18255ap.m4239a((Object[]) new C18961b[]{C19586v.m1984e(), C19586v.m1983f()});

    static {
        List<EnumC19343a> b = C18282n.m4167b((Object[]) new EnumC19343a[]{EnumC19343a.FIELD, EnumC19343a.METHOD_RETURN_TYPE, EnumC19343a.VALUE_PARAMETER, EnumC19343a.TYPE_PARAMETER_BOUNDS, EnumC19343a.TYPE_USE});
        f65277e = b;
        Map<C18961b, C19514p> map = C18247ai.m4258a(C20126t.m1103a(C19586v.m1986c(), new C19514p(new C19532h(EnumC19531g.NOT_NULL, false, 2, null), b, false)));
        f65278f = map;
        Map plus = C18247ai.m4251a(C20126t.m1103a(new C18961b("javax.annotation.ParametersAreNullableByDefault"), new C19514p(new C19532h(EnumC19531g.NULLABLE, false, 2, null), C18282n.m4176a(EnumC19343a.VALUE_PARAMETER), false, 4, null)), C20126t.m1103a(new C18961b("javax.annotation.ParametersAreNonnullByDefault"), new C19514p(new C19532h(EnumC19531g.NOT_NULL, false, 2, null), C18282n.m4176a(EnumC19343a.VALUE_PARAMETER), false, 4, null)));
        C18524p.m3840d(plus, "$this$plus");
        C18524p.m3840d(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(plus);
        linkedHashMap.putAll(map);
        f65279g = linkedHashMap;
    }

    /* renamed from: a */
    public static final C18961b m2264a() {
        return f65273a;
    }

    /* renamed from: b */
    public static final C18961b m2263b() {
        return f65274b;
    }

    /* renamed from: c */
    public static final C18961b m2262c() {
        return f65275c;
    }

    /* renamed from: d */
    public static final C18961b m2261d() {
        return f65276d;
    }

    /* renamed from: e */
    public static final Map<C18961b, C19514p> m2260e() {
        return f65278f;
    }

    /* renamed from: f */
    public static final Map<C18961b, C19514p> m2259f() {
        return f65279g;
    }

    /* renamed from: g */
    public static final Set<C18961b> m2258g() {
        return f65280h;
    }
}
