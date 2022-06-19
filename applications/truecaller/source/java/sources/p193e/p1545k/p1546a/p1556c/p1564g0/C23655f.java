package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/f.class */
public final class C23655f extends C23684u {

    /* renamed from: d */
    public final AbstractC23652e0 f65595d;

    /* renamed from: e */
    public final boolean f65596e;

    /* renamed from: f */
    public C23650e f65597f;

    public C23655f(AbstractC23426b abstractC23426b, AbstractC23652e0 abstractC23652e0, boolean z) {
        super(abstractC23426b);
        this.f65595d = abstractC23652e0;
        this.f65596e = z;
    }

    /* renamed from: f */
    public static boolean m6403f(Method method) {
        return Modifier.isStatic(method.getModifiers()) && !method.isSynthetic();
    }

    /* renamed from: g */
    public final C23678p m6402g(C23914g.C23915a c23915a, C23914g.C23915a c23915a2) {
        if (this.f65596e) {
            Annotation[] annotationArr = c23915a.f66160b;
            Annotation[] annotationArr2 = annotationArr;
            if (annotationArr == null) {
                annotationArr2 = c23915a.f66159a.getDeclaredAnnotations();
                c23915a.f66160b = annotationArr2;
            }
            AbstractC23671o m6334c = m6334c(annotationArr2);
            AbstractC23671o abstractC23671o = m6334c;
            if (c23915a2 != null) {
                Annotation[] annotationArr3 = c23915a2.f66160b;
                Annotation[] annotationArr4 = annotationArr3;
                if (annotationArr3 == null) {
                    annotationArr4 = c23915a2.f66159a.getDeclaredAnnotations();
                    c23915a2.f66160b = annotationArr4;
                }
                abstractC23671o = m6335b(m6334c, annotationArr4);
            }
            return abstractC23671o.mo6364b();
        }
        return new C23678p();
    }

    /* renamed from: h */
    public final C23678p m6401h(AnnotatedElement annotatedElement, AnnotatedElement annotatedElement2) {
        AbstractC23671o m6334c = m6334c(annotatedElement.getDeclaredAnnotations());
        AbstractC23671o abstractC23671o = m6334c;
        if (annotatedElement2 != null) {
            abstractC23671o = m6335b(m6334c, annotatedElement2.getDeclaredAnnotations());
        }
        return abstractC23671o.mo6364b();
    }

    /* renamed from: i */
    public final C23678p[] m6400i(Annotation[][] annotationArr, Annotation[][] annotationArr2) {
        if (this.f65596e) {
            int length = annotationArr.length;
            C23678p[] c23678pArr = new C23678p[length];
            for (int i = 0; i < length; i++) {
                AbstractC23671o m6335b = m6335b(AbstractC23671o.C23672a.f65637c, annotationArr[i]);
                AbstractC23671o abstractC23671o = m6335b;
                if (annotationArr2 != null) {
                    abstractC23671o = m6335b(m6335b, annotationArr2[i]);
                }
                c23678pArr[i] = abstractC23671o.mo6364b();
            }
            return c23678pArr;
        }
        return C23684u.f65664b;
    }

    /* renamed from: j */
    public C23664j m6399j(Method method, AbstractC23652e0 abstractC23652e0, Method method2) {
        int length = method.getParameterTypes().length;
        if (this.f65666a == null) {
            return new C23664j(abstractC23652e0, method, new C23678p(), C23684u.m6336a(length));
        }
        if (length == 0) {
            return new C23664j(abstractC23652e0, method, m6401h(method, method2), C23684u.f65664b);
        }
        return new C23664j(abstractC23652e0, method, m6401h(method, method2), m6400i(method.getParameterAnnotations(), method2 == null ? null : method2.getParameterAnnotations()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0111  */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.annotation.Annotation[], java.lang.annotation.Annotation[][], java.lang.Object] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1564g0.C23650e m6398k(p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.C23915a r9, p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.C23915a r10) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23655f.m6398k(e.k.a.c.n0.g$a, e.k.a.c.n0.g$a):e.k.a.c.g0.e");
    }
}
