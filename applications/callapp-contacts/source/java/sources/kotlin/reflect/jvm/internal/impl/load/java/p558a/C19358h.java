package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Map;
import kotlin.C20126t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/h.class */
public final class C19358h extends C19347b {

    /* renamed from: d */
    static final /* synthetic */ KProperty<Object>[] f65260d = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19358h.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: e */
    private final AbstractC19296i f65261e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/h$a.class */
    public static final class C19359a extends AbstractC18526r implements Function0<Map<C18966e, ? extends AbstractC19781g<?>>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19359a() {
            super(0);
            C19358h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<C18966e, ? extends AbstractC19781g<?>> invoke() {
            Map<C18966e, ? extends AbstractC19781g<?>> map;
            C19350d c19350d = C19350d.f65251a;
            AbstractC19781g<?> m2276a = C19350d.m2276a(C19358h.this.f65239c);
            if (m2276a == null) {
                map = null;
            } else {
                C19349c c19349c = C19349c.f65245a;
                map = C18247ai.m4258a(C20126t.m1103a(C19349c.m2278c(), m2276a));
            }
            Map<C18966e, ? extends AbstractC19781g<?>> map2 = map;
            if (map == null) {
                map2 = C18247ai.m4257a();
            }
            return map2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19358h(AbstractC19389a annotation, C19501g c) {
        super(c, annotation, C18954j.C18955a.f64597I);
        C18524p.m3840d(annotation, "annotation");
        C18524p.m3840d(c, "c");
        this.f65261e = c.f65480a.f65318a.mo2313a(new C19359a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.C19347b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<?>> mo2041c() {
        return (Map) C19301m.m2316a(this.f65261e, f65260d[0]);
    }
}
