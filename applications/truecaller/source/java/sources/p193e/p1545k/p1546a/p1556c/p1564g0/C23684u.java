package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/u.class */
public class C23684u {

    /* renamed from: b */
    public static final C23678p[] f65664b = new C23678p[0];

    /* renamed from: c */
    public static final Annotation[] f65665c = new Annotation[0];

    /* renamed from: a */
    public final AbstractC23426b f65666a;

    public C23684u(AbstractC23426b abstractC23426b) {
        this.f65666a = abstractC23426b;
    }

    /* renamed from: a */
    public static C23678p[] m6336a(int i) {
        if (i == 0) {
            return f65664b;
        }
        C23678p[] c23678pArr = new C23678p[i];
        for (int i2 = 0; i2 < i; i2++) {
            c23678pArr[i2] = new C23678p();
        }
        return c23678pArr;
    }

    /* renamed from: b */
    public final AbstractC23671o m6335b(AbstractC23671o abstractC23671o, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            AbstractC23671o mo6365a = abstractC23671o.mo6365a(annotation);
            abstractC23671o = mo6365a;
            if (this.f65666a.mo6270n0(annotation)) {
                abstractC23671o = m6332e(mo6365a, annotation);
            }
        }
        return abstractC23671o;
    }

    /* renamed from: c */
    public final AbstractC23671o m6334c(Annotation[] annotationArr) {
        AbstractC23671o.C23672a c23672a = AbstractC23671o.C23672a.f65637c;
        for (Annotation annotation : annotationArr) {
            AbstractC23671o mo6365a = c23672a.mo6365a(annotation);
            c23672a = mo6365a;
            if (this.f65666a.mo6270n0(annotation)) {
                c23672a = m6332e(mo6365a, annotation);
            }
        }
        return c23672a;
    }

    /* renamed from: d */
    public final AbstractC23671o m6333d(AbstractC23671o abstractC23671o, Annotation[] annotationArr) {
        AbstractC23671o abstractC23671o2;
        int length = annotationArr.length;
        int i = 0;
        while (true) {
            AbstractC23671o abstractC23671o3 = abstractC23671o;
            if (i < length) {
                Annotation annotation = annotationArr[i];
                abstractC23671o = abstractC23671o3;
                if (!abstractC23671o3.mo6362d(annotation)) {
                    AbstractC23671o mo6365a = abstractC23671o3.mo6365a(annotation);
                    abstractC23671o = mo6365a;
                    if (this.f65666a.mo6270n0(annotation)) {
                        Annotation[] m5756k = C23914g.m5756k(annotation.annotationType());
                        int length2 = m5756k.length;
                        int i2 = 0;
                        while (true) {
                            abstractC23671o = mo6365a;
                            if (i2 < length2) {
                                Annotation annotation2 = m5756k[i2];
                                if ((annotation2 instanceof Target) || (annotation2 instanceof Retention)) {
                                    abstractC23671o2 = mo6365a;
                                } else {
                                    abstractC23671o2 = mo6365a;
                                    if (!mo6365a.mo6362d(annotation2)) {
                                        AbstractC23671o mo6365a2 = mo6365a.mo6365a(annotation2);
                                        abstractC23671o2 = mo6365a2;
                                        if (this.f65666a.mo6270n0(annotation2)) {
                                            abstractC23671o2 = m6332e(mo6365a2, annotation2);
                                        }
                                    }
                                }
                                i2++;
                                mo6365a = abstractC23671o2;
                            }
                        }
                    }
                }
                i++;
            } else {
                return abstractC23671o3;
            }
        }
    }

    /* renamed from: e */
    public final AbstractC23671o m6332e(AbstractC23671o abstractC23671o, Annotation annotation) {
        Annotation[] m5756k = C23914g.m5756k(annotation.annotationType());
        int length = m5756k.length;
        int i = 0;
        while (true) {
            AbstractC23671o abstractC23671o2 = abstractC23671o;
            if (i < length) {
                Annotation annotation2 = m5756k[i];
                if ((annotation2 instanceof Target) || (annotation2 instanceof Retention)) {
                    abstractC23671o = abstractC23671o2;
                } else if (this.f65666a.mo6270n0(annotation2)) {
                    abstractC23671o = abstractC23671o2;
                    if (!abstractC23671o2.mo6362d(annotation2)) {
                        abstractC23671o = m6332e(abstractC23671o2.mo6365a(annotation2), annotation2);
                    }
                } else {
                    abstractC23671o = abstractC23671o2.mo6365a(annotation2);
                }
                i++;
            } else {
                return abstractC23671o2;
            }
        }
    }
}
