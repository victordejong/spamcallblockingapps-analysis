package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.load.java.C19592y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e.class */
public final class C19418e extends C19592y {

    /* renamed from: a */
    public static final C19418e f65301a = new C19418e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e$a.class */
    public static final class C19419a extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19419a() {
            super(1);
            C19418e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(C19418e.m2170b(it2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e$b.class */
    public static final class C19420b extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19420b() {
            super(1);
            C19418e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf((it2 instanceof AbstractC19219w) && C19418e.m2170b(it2));
        }
    }

    private C19418e() {
    }

    /* renamed from: a */
    public static final AbstractC19219w m2171a(AbstractC19219w functionDescriptor) {
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        C18966e name = functionDescriptor.getName();
        C18524p.m3843b(name, "functionDescriptor.name");
        if (!m2173a(name)) {
            return null;
        }
        return (AbstractC19219w) C19756a.m1535a(functionDescriptor, new C19419a());
    }

    /* renamed from: a */
    public static final C19592y.EnumC19595b m2172a(AbstractC19039b abstractC19039b) {
        Set set;
        List list;
        Map map;
        C18524p.m3840d(abstractC19039b, "<this>");
        set = C19592y.f65651g;
        if (!set.contains(abstractC19039b.getName())) {
            return null;
        }
        AbstractC19039b m1535a = C19756a.m1535a(abstractC19039b, new C19420b());
        String m1846b = m1535a == null ? null : C19657t.m1846b(m1535a);
        if (m1846b == null) {
            return null;
        }
        String builtinSignature = m1846b;
        C18524p.m3840d(builtinSignature, "builtinSignature");
        list = C19592y.f65647c;
        if (list.contains(m1846b)) {
            return C19592y.EnumC19595b.ONE_COLLECTION_PARAMETER;
        }
        map = C19592y.f65650f;
        return ((C19592y.EnumC19596c) C18247ai.m4253a(map, m1846b)) == C19592y.EnumC19596c.NULL ? C19592y.EnumC19595b.OBJECT_PARAMETER_GENERIC : C19592y.EnumC19595b.OBJECT_PARAMETER_NON_GENERIC;
    }

    /* renamed from: a */
    public static boolean m2173a(C18966e c18966e) {
        Set set;
        C18524p.m3840d(c18966e, "<this>");
        set = C19592y.f65651g;
        return set.contains(c18966e);
    }

    /* renamed from: b */
    public static final /* synthetic */ boolean m2170b(AbstractC19039b abstractC19039b) {
        Set set;
        set = C19592y.f65652h;
        return C18282n.m4147a((Iterable<? extends String>) set, C19657t.m1846b(abstractC19039b));
    }
}
