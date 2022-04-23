package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.g.h;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k.class */
public final class k implements g {

    /* renamed from: b  reason: collision with root package name */
    private final List<g> f37370b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k$a.class */
    static final class a extends r implements Function1<g, c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b f37371a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.c.b bVar) {
            super(1);
            this.f37371a = bVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ c invoke(g gVar) {
            g it2 = gVar;
            p.d(it2, "it");
            return it2.a(this.f37371a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k$b.class */
    static final class b extends r implements Function1<g, h<? extends c>> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37372a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ h<? extends c> invoke(g gVar) {
            g it2 = gVar;
            p.d(it2, "it");
            return n.p(it2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(List<? extends g> delegates) {
        p.d(delegates, "delegates");
        this.f37370b = delegates;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(g... delegates) {
        this(i.i(delegates));
        p.d(delegates, "delegates");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final c a(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        p.d(fqName, "fqName");
        h firstOrNull = kotlin.g.k.e(n.p(this.f37370b), new a(fqName));
        p.d(firstOrNull, "$this$firstOrNull");
        Iterator a2 = firstOrNull.a();
        return (c) (!a2.hasNext() ? null : a2.next());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        List<g> list = this.f37370b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (g gVar : list) {
            if (!gVar.a()) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        p.d(fqName, "fqName");
        Iterator a2 = n.p(this.f37370b).a();
        while (a2.hasNext()) {
            if (((g) a2.next()).b(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return kotlin.g.k.c(n.p(this.f37370b), b.f37372a).a();
    }
}
