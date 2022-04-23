package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/f.class */
public interface f extends d {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a.class */
    public static final class a {
        public static List<c> a(f fVar) {
            p.d(fVar, "this");
            AnnotatedElement a2 = fVar.a();
            Annotation[] declaredAnnotations = a2 == null ? null : a2.getDeclaredAnnotations();
            return declaredAnnotations == null ? z.f36608a : g.a(declaredAnnotations);
        }

        public static c a(f fVar, b fqName) {
            Annotation[] declaredAnnotations;
            p.d(fVar, "this");
            p.d(fqName, "fqName");
            AnnotatedElement a2 = fVar.a();
            if (a2 == null || (declaredAnnotations = a2.getDeclaredAnnotations()) == null) {
                return null;
            }
            return g.a(declaredAnnotations, fqName);
        }
    }

    AnnotatedElement a();
}
