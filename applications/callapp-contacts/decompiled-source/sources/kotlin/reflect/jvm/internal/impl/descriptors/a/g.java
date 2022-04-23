package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Iterator;
import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g.class */
public interface g extends Iterable<c>, kotlin.jvm.internal.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37361a = a.f37362a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f37362a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final g f37363b = new C0669a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$a$a.class */
        public static final class C0669a implements g {
            C0669a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
            public final /* synthetic */ c a(kotlin.reflect.jvm.internal.impl.c.b fqName) {
                p.d(fqName, "fqName");
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
            public final boolean a() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
            public final boolean b(kotlin.reflect.jvm.internal.impl.c.b bVar) {
                return b.b(this, bVar);
            }

            @Override // java.lang.Iterable
            public final Iterator<c> iterator() {
                return z.f36608a.iterator();
            }

            public final String toString() {
                return "EMPTY";
            }
        }

        private a() {
        }

        public static g a() {
            return f37363b;
        }

        public static g a(List<? extends c> annotations) {
            p.d(annotations, "annotations");
            return annotations.isEmpty() ? f37363b : new h(annotations);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/g$b.class */
    public static final class b {
        public static c a(g gVar, kotlin.reflect.jvm.internal.impl.c.b fqName) {
            c cVar;
            p.d(gVar, "this");
            p.d(fqName, "fqName");
            Iterator<c> it2 = gVar.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    cVar = null;
                    break;
                }
                cVar = it2.next();
                if (p.a(cVar.b(), fqName)) {
                    break;
                }
            }
            return cVar;
        }

        public static boolean b(g gVar, kotlin.reflect.jvm.internal.impl.c.b fqName) {
            p.d(gVar, "this");
            p.d(fqName, "fqName");
            return gVar.a(fqName) != null;
        }
    }

    c a(kotlin.reflect.jvm.internal.impl.c.b bVar);

    boolean a();

    boolean b(kotlin.reflect.jvm.internal.impl.c.b bVar);
}
