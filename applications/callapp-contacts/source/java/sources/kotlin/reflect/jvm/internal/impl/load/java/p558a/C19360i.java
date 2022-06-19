package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Map;
import kotlin.C20126t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19396e;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/i.class */
public final class C19360i extends C19347b {

    /* renamed from: d */
    static final /* synthetic */ KProperty<Object>[] f65263d = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19360i.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: e */
    private final AbstractC19296i f65264e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/i$a.class */
    public static final class C19361a extends AbstractC18526r implements Function0<Map<C18966e, ? extends AbstractC19781g<? extends Object>>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19361a() {
            super(0);
            C19360i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<C18966e, ? extends AbstractC19781g<? extends Object>> invoke() {
            AbstractC19781g<?> abstractC19781g;
            Map<C18966e, ? extends AbstractC19781g<? extends Object>> map;
            AbstractC19393b abstractC19393b = C19360i.this.f65239c;
            if (abstractC19393b instanceof AbstractC19396e) {
                C19350d c19350d = C19350d.f65251a;
                abstractC19781g = C19350d.m2277a(((AbstractC19396e) C19360i.this.f65239c).mo2218b());
            } else if (abstractC19393b instanceof AbstractC19404m) {
                C19350d c19350d2 = C19350d.f65251a;
                abstractC19781g = C19350d.m2277a(C18282n.m4176a(C19360i.this.f65239c));
            } else {
                abstractC19781g = null;
            }
            if (abstractC19781g == null) {
                map = null;
            } else {
                C19349c c19349c = C19349c.f65245a;
                map = C18247ai.m4258a(C20126t.m1103a(C19349c.m2279b(), abstractC19781g));
            }
            Map<C18966e, ? extends AbstractC19781g<? extends Object>> map2 = map;
            if (map == null) {
                map2 = C18247ai.m4257a();
            }
            return map2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19360i(AbstractC19389a annotation, C19501g c) {
        super(c, annotation, C18954j.C18955a.f64594F);
        C18524p.m3840d(annotation, "annotation");
        C18524p.m3840d(c, "c");
        this.f65264e = c.f65480a.f65318a.mo2313a(new C19361a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.C19347b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<Object>> mo2041c() {
        return (Map) C19301m.m2316a(this.f65264e, f65263d[0]);
    }
}
