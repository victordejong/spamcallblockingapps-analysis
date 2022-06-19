package kotlin.reflect.jvm.internal.impl.descriptors.p548b;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c.class */
public interface AbstractC19044c {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c$a.class */
    public static final class C19045a implements AbstractC19044c {

        /* renamed from: a */
        public static final C19045a f64766a = new C19045a();

        private C19045a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c
        /* renamed from: a */
        public final boolean mo2681a(AbstractC19070d classDescriptor, AbstractC19025as functionDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return true;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c$b.class */
    public static final class C19046b implements AbstractC19044c {

        /* renamed from: a */
        public static final C19046b f64767a = new C19046b();

        private C19046b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c
        /* renamed from: a */
        public final boolean mo2681a(AbstractC19070d classDescriptor, AbstractC19025as functionDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            C18524p.m3840d(functionDescriptor, "functionDescriptor");
            return !functionDescriptor.getAnnotations().mo1338b(C19047d.m2680a());
        }
    }

    /* renamed from: a */
    boolean mo2681a(AbstractC19070d abstractC19070d, AbstractC19025as abstractC19025as);
}
