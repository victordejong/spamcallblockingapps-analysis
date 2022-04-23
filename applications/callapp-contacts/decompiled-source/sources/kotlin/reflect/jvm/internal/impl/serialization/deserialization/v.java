package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/v.class */
public final class v implements g {

    /* renamed from: a  reason: collision with root package name */
    final Map<a, a.b> f38482a;

    /* renamed from: b  reason: collision with root package name */
    private final c f38483b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.b.b.a f38484c;

    /* renamed from: d  reason: collision with root package name */
    private final Function1<kotlin.reflect.jvm.internal.impl.c.a, at> f38485d;

    /* JADX WARN: Multi-variable type inference failed */
    public v(a.l proto, c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, Function1<? super kotlin.reflect.jvm.internal.impl.c.a, ? extends at> classSource) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(metadataVersion, "metadataVersion");
        p.d(classSource, "classSource");
        this.f38483b = nameResolver;
        this.f38484c = metadataVersion;
        this.f38485d = classSource;
        List<a.b> list = proto.e;
        p.b(list, "proto.class_List");
        List<a.b> list2 = list;
        LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(n.a((Iterable) list2, 10)), 16));
        for (Object obj : list2) {
            linkedHashMap.put(u.a(this.f38483b, ((a.b) obj).f36999c), obj);
        }
        this.f38482a = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.g
    public final f a(kotlin.reflect.jvm.internal.impl.c.a classId) {
        p.d(classId, "classId");
        a.b bVar = this.f38482a.get(classId);
        if (bVar == null) {
            return null;
        }
        return new f(this.f38483b, bVar, this.f38484c, this.f38485d.invoke(classId));
    }
}
