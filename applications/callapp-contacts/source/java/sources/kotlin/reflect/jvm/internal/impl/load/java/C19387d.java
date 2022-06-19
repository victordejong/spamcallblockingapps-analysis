package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.load.java.C19592y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/d.class */
public final class C19387d extends C19592y {

    /* renamed from: a */
    public static final C19387d f65299a = new C19387d();

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/d$a.class */
    public static final class C19388a extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {

        /* renamed from: a */
        final /* synthetic */ AbstractC19025as f65300a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19388a(AbstractC19025as abstractC19025as) {
            super(1);
            this.f65300a = abstractC19025as;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            Map map;
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            C19592y.C19593a c19593a = C19592y.f65646b;
            map = C19592y.f65655k;
            String m1846b = C19657t.m1846b(this.f65300a);
            Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
            return Boolean.valueOf(map.containsKey(m1846b));
        }
    }

    private C19387d() {
    }

    /* renamed from: a */
    public static C18966e m2234a(AbstractC19025as functionDescriptor) {
        Map map;
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        map = C19592y.f65655k;
        String m1846b = C19657t.m1846b(functionDescriptor);
        if (m1846b == null) {
            return null;
        }
        return (C18966e) map.get(m1846b);
    }

    /* renamed from: a */
    public static boolean m2235a(C18966e c18966e) {
        List list;
        C18524p.m3840d(c18966e, "<this>");
        list = C19592y.f65656l;
        return list.contains(c18966e);
    }

    /* renamed from: b */
    public static List<C18966e> m2233b(C18966e name) {
        Map map;
        C18524p.m3840d(name, "name");
        map = C19592y.f65657m;
        List<C18966e> list = (List) map.get(name);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        return c18297z;
    }

    /* renamed from: b */
    public static boolean m2232b(AbstractC19025as functionDescriptor) {
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        return AbstractC18940g.m2827a(functionDescriptor) && C19756a.m1535a(functionDescriptor, new C19388a(functionDescriptor)) != null;
    }

    /* renamed from: c */
    public static boolean m2231c(AbstractC19025as abstractC19025as) {
        C19592y.C19593a.C19594a c19594a;
        C18524p.m3840d(abstractC19025as, "<this>");
        if (C18524p.m3850a((Object) abstractC19025as.getName().m2721a(), (Object) "removeAt")) {
            String m1846b = C19657t.m1846b(abstractC19025as);
            c19594a = C19592y.f65653i;
            return C18524p.m3850a((Object) m1846b, (Object) c19594a.f65659b);
        }
        return false;
    }
}
