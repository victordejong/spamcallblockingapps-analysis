package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.load.java.y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/d.class */
public final class d extends y {

    /* renamed from: a  reason: collision with root package name */
    public static final d f37764a = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/d$a.class */
    public static final class a extends r implements Function1<b, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ as f37765a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(as asVar) {
            super(1);
            this.f37765a = asVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(b bVar) {
            Map map;
            b it2 = bVar;
            p.d(it2, "it");
            y.a aVar = y.f38013b;
            map = y.k;
            String b2 = t.b(this.f37765a);
            Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
            return Boolean.valueOf(map.containsKey(b2));
        }
    }

    private d() {
    }

    public static e a(as functionDescriptor) {
        Map map;
        p.d(functionDescriptor, "functionDescriptor");
        map = y.k;
        String b2 = t.b(functionDescriptor);
        if (b2 == null) {
            return null;
        }
        return (e) map.get(b2);
    }

    public static boolean a(e eVar) {
        List list;
        p.d(eVar, "<this>");
        list = y.l;
        return list.contains(eVar);
    }

    public static List<e> b(e name) {
        Map map;
        p.d(name, "name");
        map = y.m;
        List<e> list = (List) map.get(name);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        return zVar;
    }

    public static boolean b(as functionDescriptor) {
        p.d(functionDescriptor, "functionDescriptor");
        return g.a(functionDescriptor) && kotlin.reflect.jvm.internal.impl.resolve.b.a.a(functionDescriptor, new a(functionDescriptor)) != null;
    }

    public static boolean c(as asVar) {
        y.a.C0692a aVar;
        p.d(asVar, "<this>");
        if (!p.a((Object) asVar.getName().a(), (Object) "removeAt")) {
            return false;
        }
        String b2 = t.b(asVar);
        aVar = y.i;
        return p.a((Object) b2, (Object) aVar.f38017b);
    }
}
