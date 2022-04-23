package kotlin.reflect.jvm.internal.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.n;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.load.java.u;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36962a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.c.a> f36963b;

    static {
        List<b> b2 = n.b((Object[]) new b[]{u.f38001a, u.i, u.j, u.f38004d, u.e, u.g});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (b bVar : b2) {
            linkedHashSet.add(kotlin.reflect.jvm.internal.impl.c.a.a(bVar));
        }
        f36963b = linkedHashSet;
    }

    private a() {
    }

    public static Set<kotlin.reflect.jvm.internal.impl.c.a> a() {
        return f36963b;
    }
}
