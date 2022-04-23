package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Map;
import kotlin.a.ai;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/h.class */
public final class h extends b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37736d = {ac.a(new aa(ac.b(h.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    private final i e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/h$a.class */
    static final class a extends r implements Function0<Map<e, ? extends g<?>>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<e, ? extends g<?>> invoke() {
            Map<e, ? extends g<?>> map;
            d dVar = d.f37728a;
            g<?> a2 = d.a(h.this.f37720c);
            if (a2 == null) {
                map = null;
            } else {
                c cVar = c.f37724a;
                map = ai.a(t.a(c.c(), a2));
            }
            Map<e, ? extends g<?>> map2 = map;
            if (map == null) {
                map2 = ai.a();
            }
            return map2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(kotlin.reflect.jvm.internal.impl.load.java.d.a annotation, kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2) {
        super(c2, annotation, j.a.I);
        p.d(annotation, "annotation");
        p.d(c2, "c");
        this.e = c2.f37882a.f37782a.a(new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<e, g<?>> c() {
        return (Map) m.a(this.e, f37736d[0]);
    }
}
