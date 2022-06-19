package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/v.class */
public final class C19971v implements AbstractC19940g {

    /* renamed from: a */
    final Map<C18960a, C18702a.C18715b> f66316a;

    /* renamed from: b */
    private final AbstractC18813c f66317b;

    /* renamed from: c */
    private final AbstractC18806a f66318c;

    /* renamed from: d */
    private final Function1<C18960a, AbstractC19026at> f66319d;

    /* JADX WARN: Multi-variable type inference failed */
    public C19971v(C18702a.C18751l proto, AbstractC18813c nameResolver, AbstractC18806a metadataVersion, Function1<? super C18960a, ? extends AbstractC19026at> classSource) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        C18524p.m3840d(classSource, "classSource");
        this.f66317b = nameResolver;
        this.f66318c = metadataVersion;
        this.f66319d = classSource;
        List<C18702a.C18715b> list = proto.f64023e;
        C18524p.m3843b(list, "proto.class_List");
        List<C18702a.C18715b> list2 = list;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) list2, 10)), 16));
        for (Object obj : list2) {
            linkedHashMap.put(C19970u.m1229a(this.f66317b, ((C18702a.C18715b) obj).f63865c), obj);
        }
        this.f66316a = linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19940g
    /* renamed from: a */
    public final C19939f mo1227a(C18960a classId) {
        C18524p.m3840d(classId, "classId");
        C18702a.C18715b c18715b = this.f66316a.get(classId);
        if (c18715b == null) {
            return null;
        }
        return new C19939f(this.f66317b, c18715b, this.f66318c, this.f66319d.invoke(classId));
    }
}
