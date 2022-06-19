package kotlin.reflect.jvm.internal.impl.p553e;

import java.util.ArrayList;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18252an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b.class */
public interface AbstractC19226b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$a.class */
    public static final class C19227a implements AbstractC19226b {

        /* renamed from: a */
        public static final C19227a f65021a = new C19227a();

        private C19227a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19226b
        /* renamed from: a */
        public final String mo2493a(AbstractC19129g classifier, AbstractC19230c renderer) {
            C18524p.m3840d(classifier, "classifier");
            C18524p.m3840d(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                C18966e name = ((TypeParameterDescriptor) classifier).getName();
                C18524p.m3843b(name, "classifier.name");
                return renderer.mo2460a(name, false);
            }
            C18962c m1463c = C19807d.m1463c(classifier);
            C18524p.m3843b(m1463c, "getFqName(classifier)");
            return renderer.mo2461a(m1463c);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$b.class */
    public static final class C19228b implements AbstractC19226b {

        /* renamed from: a */
        public static final C19228b f65022a = new C19228b();

        private C19228b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19226b
        /* renamed from: a */
        public final String mo2493a(AbstractC19129g classifier, AbstractC19230c renderer) {
            AbstractC19193k containingDeclaration;
            C18524p.m3840d(classifier, "classifier");
            C18524p.m3840d(renderer, "renderer");
            if (classifier instanceof TypeParameterDescriptor) {
                C18966e name = ((TypeParameterDescriptor) classifier).getName();
                C18524p.m3843b(name, "classifier.name");
                return renderer.mo2460a(name, false);
            }
            ArrayList arrayList = new ArrayList();
            AbstractC19129g abstractC19129g = classifier;
            do {
                arrayList.add(abstractC19129g.getName());
                containingDeclaration = abstractC19129g.getContainingDeclaration();
                abstractC19129g = containingDeclaration;
            } while (containingDeclaration instanceof AbstractC19070d);
            ArrayList asReversed = arrayList;
            C18524p.m3840d(asReversed, "$this$asReversed");
            return C19270n.m2353a(new C18252an(asReversed));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/b$c.class */
    public static final class C19229c implements AbstractC19226b {

        /* renamed from: a */
        public static final C19229c f65023a = new C19229c();

        private C19229c() {
        }

        /* renamed from: a */
        private final String m2494a(AbstractC19129g abstractC19129g) {
            C18966e name = abstractC19129g.getName();
            C18524p.m3843b(name, "descriptor.name");
            String m2351a = C19270n.m2351a(name);
            if (abstractC19129g instanceof TypeParameterDescriptor) {
                return m2351a;
            }
            AbstractC19193k containingDeclaration = abstractC19129g.getContainingDeclaration();
            C18524p.m3843b(containingDeclaration, "descriptor.containingDeclaration");
            String m2492a = m2492a(containingDeclaration);
            if (m2492a == null || C18524p.m3850a((Object) m2492a, (Object) "")) {
                return m2351a;
            }
            return ((Object) m2492a) + '.' + m2351a;
        }

        /* renamed from: a */
        private final String m2492a(AbstractC19193k abstractC19193k) {
            if (abstractC19193k instanceof AbstractC19070d) {
                return m2494a((AbstractC19129g) abstractC19193k);
            }
            if (!(abstractC19193k instanceof AbstractC19006ae)) {
                return null;
            }
            C18962c m2743b = ((AbstractC19006ae) abstractC19193k).mo2542c().m2743b();
            C18524p.m3843b(m2743b, "descriptor.fqName.toUnsafe()");
            return C19270n.m2352a(m2743b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19226b
        /* renamed from: a */
        public final String mo2493a(AbstractC19129g classifier, AbstractC19230c renderer) {
            C18524p.m3840d(classifier, "classifier");
            C18524p.m3840d(renderer, "renderer");
            return m2494a(classifier);
        }
    }

    /* renamed from: a */
    String mo2493a(AbstractC19129g abstractC19129g, AbstractC19230c abstractC19230c);
}
