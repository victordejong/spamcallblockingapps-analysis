package kotlin.reflect.jvm.internal.impl.e;

import java.util.ArrayList;
import kotlin.a.an;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b.class */
public interface b {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$a.class */
    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37596a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.e.b
        public final String a(g classifier, kotlin.reflect.jvm.internal.impl.e.c renderer) {
            p.d(classifier, "classifier");
            p.d(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                e name = ((TypeParameterDescriptor) classifier).getName();
                p.b(name, "classifier.name");
                return renderer.a(name, false);
            }
            kotlin.reflect.jvm.internal.impl.c.c c2 = d.c(classifier);
            p.b(c2, "getFqName(classifier)");
            return renderer.a(c2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$b.class */
    public static final class C0675b implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final C0675b f37597a = new C0675b();

        private C0675b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.e.b
        public final String a(g classifier, kotlin.reflect.jvm.internal.impl.e.c renderer) {
            k containingDeclaration;
            p.d(classifier, "classifier");
            p.d(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                e name = ((TypeParameterDescriptor) classifier).getName();
                p.b(name, "classifier.name");
                return renderer.a(name, false);
            }
            ArrayList arrayList = new ArrayList();
            g gVar = classifier;
            do {
                arrayList.add(gVar.getName());
                containingDeclaration = gVar.getContainingDeclaration();
                gVar = containingDeclaration;
            } while (containingDeclaration instanceof kotlin.reflect.jvm.internal.impl.descriptors.d);
            ArrayList asReversed = arrayList;
            p.d(asReversed, "$this$asReversed");
            return n.a(new an(asReversed));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$c.class */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37598a = new c();

        private c() {
        }

        private final String a(g gVar) {
            e name = gVar.getName();
            p.b(name, "descriptor.name");
            String a2 = n.a(name);
            if (gVar instanceof TypeParameterDescriptor) {
                return a2;
            }
            k containingDeclaration = gVar.getContainingDeclaration();
            p.b(containingDeclaration, "descriptor.containingDeclaration");
            String a3 = a(containingDeclaration);
            if (a3 == null || p.a((Object) a3, (Object) "")) {
                return a2;
            }
            return ((Object) a3) + '.' + a2;
        }

        private final String a(k kVar) {
            if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return a((g) kVar);
            }
            if (!(kVar instanceof ae)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.c.c b2 = ((ae) kVar).c().b();
            p.b(b2, "descriptor.fqName.toUnsafe()");
            return n.a(b2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.e.b
        public final String a(g classifier, kotlin.reflect.jvm.internal.impl.e.c renderer) {
            p.d(classifier, "classifier");
            p.d(renderer, "renderer");
            return a(classifier);
        }
    }

    String a(g gVar, kotlin.reflect.jvm.internal.impl.e.c cVar);
}
