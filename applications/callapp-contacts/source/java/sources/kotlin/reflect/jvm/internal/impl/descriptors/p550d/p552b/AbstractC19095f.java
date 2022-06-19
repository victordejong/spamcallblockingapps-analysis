package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/f.class */
public interface AbstractC19095f extends AbstractC19395d {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a.class */
    public static final class C19096a {
        /* renamed from: a */
        public static List<C19091c> m2650a(AbstractC19095f abstractC19095f) {
            C18524p.m3840d(abstractC19095f, "this");
            AnnotatedElement mo2638a = abstractC19095f.mo2638a();
            Annotation[] declaredAnnotations = mo2638a == null ? null : mo2638a.getDeclaredAnnotations();
            return declaredAnnotations == null ? C18297z.f63400a : C19097g.m2648a(declaredAnnotations);
        }

        /* renamed from: a */
        public static C19091c m2649a(AbstractC19095f abstractC19095f, C18961b fqName) {
            Annotation[] declaredAnnotations;
            C18524p.m3840d(abstractC19095f, "this");
            C18524p.m3840d(fqName, "fqName");
            AnnotatedElement mo2638a = abstractC19095f.mo2638a();
            if (mo2638a == null || (declaredAnnotations = mo2638a.getDeclaredAnnotations()) == null) {
                return null;
            }
            return C19097g.m2647a(declaredAnnotations, fqName);
        }
    }

    /* renamed from: a */
    AnnotatedElement mo2638a();
}
