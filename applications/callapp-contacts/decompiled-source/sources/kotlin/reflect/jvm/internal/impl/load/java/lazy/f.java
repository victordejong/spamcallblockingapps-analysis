package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.e;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.ai;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/f.class */
public final class f implements ai {

    /* renamed from: a  reason: collision with root package name */
    final g f37878a;

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.a<b, g> f37879b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/f$a.class */
    public static final class a extends r implements Function0<g> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t f37881b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(t tVar) {
            super(0);
            this.f37881b = tVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g invoke() {
            return new g(f.this.f37878a, this.f37881b);
        }
    }

    public f(b components) {
        p.d(components, "components");
        g gVar = new g(components, k.a.f37892a, new e(null));
        this.f37878a = gVar;
        this.f37879b = gVar.f37882a.f37782a.b();
    }

    private final g a(b bVar) {
        return this.f37879b.a(bVar, new a(this.f37878a.f37882a.f37783b.a(bVar)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final /* synthetic */ Collection a(b fqName, Function1 nameFilter) {
        p.d(fqName, "fqName");
        p.d(nameFilter, "nameFilter");
        g a2 = a(fqName);
        List<b> invoke = a2 == null ? null : a2.f37834c.invoke();
        z zVar = invoke;
        if (invoke == null) {
            zVar = z.f36608a;
        }
        return zVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ai
    public final void a(b fqName, Collection<ae> packageFragments) {
        p.d(fqName, "fqName");
        p.d(packageFragments, "packageFragments");
        kotlin.reflect.jvm.internal.impl.utils.a.a(packageFragments, a(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final List<g> b(b fqName) {
        p.d(fqName, "fqName");
        return n.b(a(fqName));
    }
}
