package kotlin.reflect.jvm.internal.impl.p555g;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b.class */
public interface AbstractC19305b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b$a.class */
    public static final class C19306a {
        /* renamed from: a */
        public static String m2298a(AbstractC19305b abstractC19305b, AbstractC19219w functionDescriptor) {
            C18524p.m3840d(abstractC19305b, "this");
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            if (!abstractC19305b.mo2292a(functionDescriptor)) {
                return abstractC19305b.mo2294a();
            }
            return null;
        }
    }

    /* renamed from: a */
    String mo2294a();

    /* renamed from: a */
    boolean mo2292a(AbstractC19219w abstractC19219w);

    /* renamed from: b */
    String mo2293b(AbstractC19219w abstractC19219w);
}
