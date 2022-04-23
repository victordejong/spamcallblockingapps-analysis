package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.h;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g.class */
public interface g extends t, x, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a.class */
    public enum a {
        COMPATIBLE,
        NEEDS_WRAPPER,
        INCOMPATIBLE
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b.class */
    public static final class b {
        public static List<h> a(g gVar) {
            p.d(gVar, "this");
            h.a aVar = h.f37153a;
            return h.a.a(gVar.k(), gVar.ao_(), gVar.h());
        }
    }

    c ao_();

    kotlin.reflect.jvm.internal.impl.b.b.g ap_();

    List<h> aq_();

    i h();

    f i();

    kotlin.reflect.jvm.internal.impl.protobuf.p k();
}
