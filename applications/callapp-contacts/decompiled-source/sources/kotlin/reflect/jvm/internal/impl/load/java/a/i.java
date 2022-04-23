package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/i.class */
public final class i extends b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37738d = {ac.a(new aa(ac.b(i.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    private final kotlin.reflect.jvm.internal.impl.f.i e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/i$a.class */
    static final class a extends r implements Function0<Map<e, ? extends g<? extends Object>>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<e, ? extends g<? extends Object>> invoke() {
            g<?> gVar;
            b bVar = i.this.f37720c;
            Map<e, ? extends g<? extends Object>> map = null;
            if (bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.d.e) {
                d dVar = d.f37728a;
                gVar = d.a(((kotlin.reflect.jvm.internal.impl.load.java.d.e) i.this.f37720c).b());
            } else if (bVar instanceof m) {
                d dVar2 = d.f37728a;
                gVar = d.a(n.a(i.this.f37720c));
            } else {
                gVar = null;
            }
            if (gVar != null) {
                c cVar = c.f37724a;
                map = ai.a(t.a(c.b(), gVar));
            }
            Map<e, ? extends g<? extends Object>> map2 = map;
            if (map == null) {
                map2 = ai.a();
            }
            return map2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(kotlin.reflect.jvm.internal.impl.load.java.d.a annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2) {
        super(c2, annotation, j.a.F);
        p.d(annotation, "annotation");
        p.d(c2, "c");
        this.e = c2.f37882a.f37782a.a(new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<e, g<Object>> c() {
        return (Map) kotlin.reflect.jvm.internal.impl.f.m.a(this.e, f37738d[0]);
    }
}
