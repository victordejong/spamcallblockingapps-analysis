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
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/e.class */
public final class C19352e extends C19347b {

    /* renamed from: d */
    static final /* synthetic */ KProperty<Object>[] f65255d = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19352e.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: e */
    private final AbstractC19296i f65256e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/e$a.class */
    public static final class C19353a extends AbstractC18526r implements Function0<Map<C18966e, ? extends C19801s>> {

        /* renamed from: a */
        public static final C19353a f65257a = new C19353a();

        C19353a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<C18966e, ? extends C19801s> invoke() {
            C19349c c19349c = C19349c.f65245a;
            return C18247ai.m4258a(C20126t.m1103a(C19349c.m2282a(), new C19801s("Deprecated in Java")));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19352e(AbstractC19389a abstractC19389a, C19501g c) {
        super(c, abstractC19389a, C18954j.C18955a.f64670y);
        C18524p.m3840d(c, "c");
        this.f65256e = c.f65480a.f65318a.mo2313a(C19353a.f65257a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.C19347b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<?>> mo2041c() {
        return (Map) C19301m.m2316a(this.f65256e, f65255d[0]);
    }
}
