package p655o;

import java.lang.annotation.Annotation;
/* renamed from: o.v */
/* loaded from: classes3-dex2jar.jar:o/v.class */
public final class C15305v implements AbstractC15304u {

    /* renamed from: a */
    public static final AbstractC15304u f33421a = new C15305v();

    /* renamed from: a */
    public static Annotation[] m69a(Annotation[] annotationArr) {
        if (C15306w.m52a(annotationArr, (Class<? extends Annotation>) AbstractC15304u.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f33421a;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends Annotation> annotationType() {
        return AbstractC15304u.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        return obj instanceof AbstractC15304u;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        return "@" + AbstractC15304u.class.getName() + "()";
    }
}
