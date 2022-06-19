package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Modifier;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.C19054be;
import kotlin.reflect.jvm.internal.impl.descriptors.p549c.C19066a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/t.class */
public interface AbstractC19118t extends AbstractC19409r {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.t$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a.class */
    public static final class C19119a {
        /* renamed from: a */
        public static boolean m2643a(AbstractC19118t abstractC19118t) {
            C18524p.m3840d(abstractC19118t, "this");
            return Modifier.isAbstract(abstractC19118t.mo2644d());
        }

        /* renamed from: b */
        public static boolean m2642b(AbstractC19118t abstractC19118t) {
            C18524p.m3840d(abstractC19118t, "this");
            return Modifier.isStatic(abstractC19118t.mo2644d());
        }

        /* renamed from: c */
        public static boolean m2641c(AbstractC19118t abstractC19118t) {
            C18524p.m3840d(abstractC19118t, "this");
            return Modifier.isFinal(abstractC19118t.mo2644d());
        }

        /* renamed from: d */
        public static AbstractC19064bf m2640d(AbstractC19118t abstractC19118t) {
            C18524p.m3840d(abstractC19118t, "this");
            int mo2644d = abstractC19118t.mo2644d();
            return Modifier.isPublic(mo2644d) ? C19054be.C19062h.f64780a : Modifier.isPrivate(mo2644d) ? C19054be.C19059e.f64777a : Modifier.isProtected(mo2644d) ? Modifier.isStatic(mo2644d) ? C19066a.C19069c.f64787a : C19066a.C19068b.f64786a : C19066a.C19067a.f64785a;
        }
    }

    /* renamed from: d */
    int mo2644d();
}
