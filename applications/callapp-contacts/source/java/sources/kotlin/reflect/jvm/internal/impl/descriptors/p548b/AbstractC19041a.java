package kotlin.reflect.jvm.internal.impl.descriptors.p548b;

import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/a.class */
public interface AbstractC19041a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/a$a.class */
    public static final class C19042a implements AbstractC19041a {

        /* renamed from: a */
        public static final C19042a f64765a = new C19042a();

        private C19042a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
        /* renamed from: a */
        public final Collection<AbstractC19025as> mo2688a(C18966e name, AbstractC19070d classDescriptor) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(classDescriptor, "classDescriptor");
            return C18297z.f63400a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
        /* renamed from: a */
        public final Collection<KotlinType> mo2687a(AbstractC19070d classDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            return C18297z.f63400a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
        /* renamed from: b */
        public final Collection<AbstractC19065c> mo2686b(AbstractC19070d classDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            return C18297z.f63400a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a
        /* renamed from: c */
        public final Collection<C18966e> mo2685c(AbstractC19070d classDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            return C18297z.f63400a;
        }
    }

    /* renamed from: a */
    Collection<AbstractC19025as> mo2688a(C18966e c18966e, AbstractC19070d abstractC19070d);

    /* renamed from: a */
    Collection<KotlinType> mo2687a(AbstractC19070d abstractC19070d);

    /* renamed from: b */
    Collection<AbstractC19065c> mo2686b(AbstractC19070d abstractC19070d);

    /* renamed from: c */
    Collection<C18966e> mo2685c(AbstractC19070d abstractC19070d);
}
