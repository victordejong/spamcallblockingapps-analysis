package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/c.class */
public interface c<A, C> {
    C a(w wVar, a.m mVar, KotlinType kotlinType);

    List<A> a(a.p pVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar);

    List<A> a(a.r rVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar);

    List<A> a(w.a aVar);

    List<A> a(w wVar, a.f fVar);

    List<A> a(w wVar, a.m mVar);

    List<A> a(w wVar, p pVar, b bVar);

    List<A> a(w wVar, p pVar, b bVar, int i, a.t tVar);

    List<A> b(w wVar, a.m mVar);

    List<A> b(w wVar, p pVar, b bVar);
}
