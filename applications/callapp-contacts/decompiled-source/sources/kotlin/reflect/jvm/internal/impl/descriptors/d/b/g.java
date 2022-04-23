package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.a;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/g.class */
public final class g {
    public static final List<c> a(Annotation[] annotationArr) {
        p.d(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new c(annotation));
        }
        return arrayList;
    }

    public static final c a(Annotation[] annotationArr, b fqName) {
        Annotation annotation;
        p.d(annotationArr, "<this>");
        p.d(fqName, "fqName");
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                annotation = null;
                break;
            }
            Annotation annotation2 = annotationArr[i];
            if (p.a(b.e(a.a(a.a(annotation2))).f(), fqName)) {
                annotation = annotation2;
                break;
            }
            i++;
        }
        if (annotation == null) {
            return null;
        }
        return new c(annotation);
    }
}
