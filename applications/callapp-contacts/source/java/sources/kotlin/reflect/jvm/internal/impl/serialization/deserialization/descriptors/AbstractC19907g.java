package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19214t;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g.class */
public interface AbstractC19907g extends AbstractC19214t, AbstractC19221x, AbstractC19901a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a.class */
    public enum EnumC19908a {
        COMPATIBLE,
        NEEDS_WRAPPER,
        INCOMPATIBLE
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b.class */
    public static final class C19909b {
        /* renamed from: a */
        public static List<C18819h> m1333a(AbstractC19907g abstractC19907g) {
            C18524p.m3840d(abstractC19907g, "this");
            C18819h.C18820a c18820a = C18819h.f64313a;
            return C18819h.C18820a.m3042a(abstractC19907g.mo1276k(), abstractC19907g.ao_(), abstractC19907g.mo1278h());
        }
    }

    AbstractC18813c ao_();

    C18818g ap_();

    List<C18819h> aq_();

    /* renamed from: h */
    C18824i mo1278h();

    /* renamed from: i */
    AbstractC19906f mo1277i();

    /* renamed from: k */
    AbstractC19705p mo1276k();
}
