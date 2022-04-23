package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.d.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b.class */
public interface b {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b$a.class */
    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37806a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final /* synthetic */ Collection a(e name) {
            p.d(name, "name");
            return z.f36608a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final Set<e> a() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final Set<e> b() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final n b(e name) {
            p.d(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final Set<e> c() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b
        public final v c(e name) {
            p.d(name, "name");
            return null;
        }
    }

    Collection<q> a(e eVar);

    Set<e> a();

    Set<e> b();

    n b(e eVar);

    Set<e> c();

    v c(e eVar);
}
