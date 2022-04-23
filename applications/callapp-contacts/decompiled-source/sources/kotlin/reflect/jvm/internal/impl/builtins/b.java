package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f37282a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<a> f37283b;

    static {
        Set<h> set = h.NUMBER_TYPES;
        j jVar = j.f37316a;
        ArrayList arrayList = new ArrayList(n.a(set, 10));
        for (h hVar : set) {
            arrayList.add(j.a(hVar));
        }
        ArrayList arrayList2 = arrayList;
        kotlin.reflect.jvm.internal.impl.c.b c2 = j.a.h.c();
        p.b(c2, "string.toSafe()");
        List a2 = n.a((Collection<? extends kotlin.reflect.jvm.internal.impl.c.b>) arrayList2, c2);
        kotlin.reflect.jvm.internal.impl.c.b c3 = j.a.j.c();
        p.b(c3, "_boolean.toSafe()");
        List a3 = n.a((Collection<? extends kotlin.reflect.jvm.internal.impl.c.b>) a2, c3);
        kotlin.reflect.jvm.internal.impl.c.b c4 = j.a.s.c();
        p.b(c4, "_enum.toSafe()");
        List<kotlin.reflect.jvm.internal.impl.c.b> a4 = n.a((Collection<? extends kotlin.reflect.jvm.internal.impl.c.b>) a3, c4);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (kotlin.reflect.jvm.internal.impl.c.b bVar : a4) {
            linkedHashSet.add(a.a(bVar));
        }
        f37283b = linkedHashSet;
    }

    private b() {
    }

    public static Set<a> a() {
        return f37283b;
    }

    public static Set<a> b() {
        return f37283b;
    }
}
