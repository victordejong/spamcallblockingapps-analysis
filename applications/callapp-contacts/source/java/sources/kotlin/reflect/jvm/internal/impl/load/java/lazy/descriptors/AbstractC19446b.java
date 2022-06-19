package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19413v;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b.class */
public interface AbstractC19446b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b$a.class */
    public static final class C19447a implements AbstractC19446b {

        /* renamed from: a */
        public static final C19447a f65376a = new C19447a();

        private C19447a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: a */
        public final /* synthetic */ Collection mo2147a(C18966e name) {
            C18524p.m3840d(name, "name");
            return C18297z.f63400a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: a */
        public final Set<C18966e> mo2148a() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: b */
        public final Set<C18966e> mo2146b() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: b */
        public final AbstractC19405n mo2145b(C18966e name) {
            C18524p.m3840d(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: c */
        public final Set<C18966e> mo2144c() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b
        /* renamed from: c */
        public final AbstractC19413v mo2143c(C18966e name) {
            C18524p.m3840d(name, "name");
            return null;
        }
    }

    /* renamed from: a */
    Collection<AbstractC19408q> mo2147a(C18966e c18966e);

    /* renamed from: a */
    Set<C18966e> mo2148a();

    /* renamed from: b */
    Set<C18966e> mo2146b();

    /* renamed from: b */
    AbstractC19405n mo2145b(C18966e c18966e);

    /* renamed from: c */
    Set<C18966e> mo2144c();

    /* renamed from: c */
    AbstractC19413v mo2143c(C18966e c18966e);
}
