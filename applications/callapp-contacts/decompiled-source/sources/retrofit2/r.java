package retrofit2;

import java.lang.annotation.Annotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/r.class */
public final class r implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final q f39545a = new r();

    r() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Annotation[] a(Annotation[] annotationArr) {
        if (s.a(annotationArr, q.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f39545a;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return q.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        return obj instanceof q;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@" + q.class.getName() + "()";
    }
}
