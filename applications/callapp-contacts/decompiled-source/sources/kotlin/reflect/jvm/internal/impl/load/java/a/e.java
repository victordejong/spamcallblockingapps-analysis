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
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.s;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/e.class */
public final class e extends b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37732d = {ac.a(new aa(ac.b(e.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    private final i e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/e$a.class */
    static final class a extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends s>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37733a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends s> invoke() {
            c cVar = c.f37724a;
            return ai.a(t.a(c.a(), new s("Deprecated in Java")));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(kotlin.reflect.jvm.internal.impl.load.java.d.a aVar, g c2) {
        super(c2, aVar, j.a.y);
        p.d(c2, "c");
        this.e = c2.f37882a.f37782a.a(a.f37733a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c() {
        return (Map) m.a(this.e, f37732d[0]);
    }
}
