package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/g.class */
public final class C19097g {
    /* renamed from: a */
    public static final List<C19091c> m2648a(Annotation[] annotationArr) {
        C18524p.m3840d(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new C19091c(annotation));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final C19091c m2647a(Annotation[] annotationArr, C18961b fqName) {
        Annotation annotation;
        C18524p.m3840d(annotationArr, "<this>");
        C18524p.m3840d(fqName, "fqName");
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                annotation = null;
                break;
            }
            Annotation annotation2 = annotationArr[i];
            if (C18524p.m3850a(C19088b.m2654e(C18458a.m3893a(C18458a.m3894a(annotation2))).m2748f(), fqName)) {
                annotation = annotation2;
                break;
            }
            i++;
        }
        if (annotation == null) {
            return null;
        }
        return new C19091c(annotation);
    }
}
