package retrofit2;

import java.lang.annotation.Annotation;
/* renamed from: retrofit2.r */
/* loaded from: classes5-dex2jar.jar:retrofit2/r.class */
public final class C21128r implements AbstractC21127q {

    /* renamed from: a */
    private static final AbstractC21127q f67827a = new C21128r();

    C21128r() {
    }

    /* renamed from: a */
    public static Annotation[] m17a(Annotation[] annotationArr) {
        if (C21129s.m4a(annotationArr, AbstractC21127q.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f67827a;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return AbstractC21127q.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        return obj instanceof AbstractC21127q;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@" + AbstractC21127q.class.getName() + "()";
    }
}
