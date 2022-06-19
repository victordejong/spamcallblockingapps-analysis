package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g.class */
public interface AbstractC18983g extends Iterable<AbstractC18977c>, AbstractC18481a {

    /* renamed from: a */
    public static final C18984a f64717a = C18984a.f64718a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$a.class */
    public static final class C18984a {

        /* renamed from: a */
        static final /* synthetic */ C18984a f64718a = new C18984a();

        /* renamed from: b */
        private static final AbstractC18983g f64719b = new C18985a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.g$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$a$a.class */
        public static final class C18985a implements AbstractC18983g {
            C18985a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
            /* renamed from: a */
            public final /* synthetic */ AbstractC18977c mo1340a(C18961b fqName) {
                C18524p.m3840d(fqName, "fqName");
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
            /* renamed from: a */
            public final boolean mo1275a() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
            /* renamed from: b */
            public final boolean mo1338b(C18961b c18961b) {
                return C18986b.m2702b(this, c18961b);
            }

            @Override // java.lang.Iterable
            public final Iterator<AbstractC18977c> iterator() {
                return C18297z.f63400a.iterator();
            }

            public final String toString() {
                return "EMPTY";
            }
        }

        private C18984a() {
        }

        /* renamed from: a */
        public static AbstractC18983g m2705a() {
            return f64719b;
        }

        /* renamed from: a */
        public static AbstractC18983g m2704a(List<? extends AbstractC18977c> annotations) {
            C18524p.m3840d(annotations, "annotations");
            return annotations.isEmpty() ? f64719b : new C18987h(annotations);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$b.class */
    public static final class C18986b {
        /* renamed from: a */
        public static AbstractC18977c m2703a(AbstractC18983g abstractC18983g, C18961b fqName) {
            AbstractC18977c abstractC18977c;
            C18524p.m3840d(abstractC18983g, "this");
            C18524p.m3840d(fqName, "fqName");
            Iterator<AbstractC18977c> it2 = abstractC18983g.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    abstractC18977c = null;
                    break;
                }
                abstractC18977c = it2.next();
                if (C18524p.m3850a(abstractC18977c.mo2042b(), fqName)) {
                    break;
                }
            }
            return abstractC18977c;
        }

        /* renamed from: b */
        public static boolean m2702b(AbstractC18983g abstractC18983g, C18961b fqName) {
            C18524p.m3840d(abstractC18983g, "this");
            C18524p.m3840d(fqName, "fqName");
            return abstractC18983g.mo1340a(fqName) != null;
        }
    }

    /* renamed from: a */
    AbstractC18977c mo1340a(C18961b c18961b);

    /* renamed from: a */
    boolean mo1275a();

    /* renamed from: b */
    boolean mo1338b(C18961b c18961b);
}
