package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/f.class */
public final class C19076f implements AbstractC19646o {

    /* renamed from: a */
    public static final C19077a f64794a = new C19077a(null);

    /* renamed from: b */
    public final Class<?> f64795b;

    /* renamed from: c */
    public final C19608a f64796c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a.class */
    public static final class C19077a {
        private C19077a() {
        }

        public /* synthetic */ C19077a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x009f, code lost:
            if (r0.f65692f == null) goto L30;
         */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ec A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ee  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f m2667a(java.lang.Class<?> r12) {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f.C19077a.m2667a(java.lang.Class):kotlin.reflect.jvm.internal.impl.descriptors.d.a.f");
        }
    }

    private C19076f(Class<?> cls, C19608a c19608a) {
        this.f64795b = cls;
        this.f64796c = c19608a;
    }

    public /* synthetic */ C19076f(Class cls, C19608a c19608a, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, c19608a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o
    /* renamed from: a */
    public final C19608a mo1879a() {
        return this.f64796c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o
    /* renamed from: a */
    public final void mo1878a(AbstractC19646o.AbstractC19649c visitor) {
        C18524p.m3840d(visitor, "visitor");
        C19073c.f64792a.m2672a(this.f64795b, visitor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o
    /* renamed from: a */
    public final void mo1877a(AbstractC19646o.AbstractC19650d memberVisitor) {
        String str;
        C18524p.m3840d(memberVisitor, "visitor");
        C19073c c19073c = C19073c.f64792a;
        Class<?> klass = this.f64795b;
        C18524p.m3840d(klass, "klass");
        C18524p.m3840d(memberVisitor, "memberVisitor");
        Method[] declaredMethods = klass.getDeclaredMethods();
        C18524p.m3843b(declaredMethods, "klass.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (true) {
            int i2 = i;
            str = "annotations";
            if (i2 >= length) {
                break;
            }
            Method method = declaredMethods[i2];
            int i3 = i2 + 1;
            C18966e m2719a = C18966e.m2719a(method.getName());
            C18524p.m3843b(m2719a, "identifier(method.name)");
            C19085l c19085l = C19085l.f64806a;
            C18524p.m3843b(method, "method");
            AbstractC19646o.AbstractC19651e mo1862a = memberVisitor.mo1862a(m2719a, C19085l.m2662a(method));
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            C18524p.m3843b(declaredAnnotations, "method.declaredAnnotations");
            int length2 = declaredAnnotations.length;
            int i4 = 0;
            while (i4 < length2) {
                Annotation annotation = declaredAnnotations[i4];
                i4++;
                C18524p.m3843b(annotation, "annotation");
                c19073c.m2669a(mo1862a, annotation);
            }
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            C18524p.m3843b(parameterAnnotations, "method.parameterAnnotations");
            Annotation[][] annotationArr = parameterAnnotations;
            int length3 = annotationArr.length;
            int i5 = 0;
            Method[] methodArr = declaredMethods;
            while (i5 < length3) {
                Annotation[] annotations = annotationArr[i5];
                C18524p.m3843b(annotations, "annotations");
                Annotation[][] annotationArr2 = annotationArr;
                for (Annotation annotation2 : annotations) {
                    Class<?> m3893a = C18458a.m3893a(C18458a.m3894a(annotation2));
                    C18960a m2654e = C19088b.m2654e(m3893a);
                    C18524p.m3843b(annotation2, "annotation");
                    AbstractC19646o.AbstractC19647a mo1860a = mo1862a.mo1860a(i5, m2654e, new C19072b(annotation2));
                    if (mo1860a != null) {
                        c19073c.m2671a(mo1860a, annotation2, m3893a);
                    }
                }
                i5++;
                annotationArr = annotationArr2;
            }
            mo1862a.mo1863b();
            declaredMethods = methodArr;
            i = i3;
        }
        Constructor<?>[] declaredConstructors = klass.getDeclaredConstructors();
        C18524p.m3843b(declaredConstructors, "klass.declaredConstructors");
        int length4 = declaredConstructors.length;
        int i6 = 0;
        while (i6 < length4) {
            Constructor<?> constructor = declaredConstructors[i6];
            int i7 = i6 + 1;
            C18966e m2715c = C18966e.m2715c("<init>");
            C18524p.m3843b(m2715c, "special(\"<init>\")");
            C19085l c19085l2 = C19085l.f64806a;
            C18524p.m3843b(constructor, "constructor");
            AbstractC19646o.AbstractC19651e mo1862a2 = memberVisitor.mo1862a(m2715c, C19085l.m2664a(constructor));
            Annotation[] declaredAnnotations2 = constructor.getDeclaredAnnotations();
            C18524p.m3843b(declaredAnnotations2, "constructor.declaredAnnotations");
            int length5 = declaredAnnotations2.length;
            int i8 = 0;
            while (i8 < length5) {
                Annotation annotation3 = declaredAnnotations2[i8];
                i8++;
                C18524p.m3843b(annotation3, "annotation");
                c19073c.m2669a(mo1862a2, annotation3);
            }
            Annotation[][] parameterAnnotations2 = constructor.getParameterAnnotations();
            C18524p.m3843b(parameterAnnotations2, "parameterAnnotations");
            Annotation[][] annotationArr3 = parameterAnnotations2;
            Constructor<?>[] constructorArr = declaredConstructors;
            int i9 = length4;
            i6 = i7;
            String str2 = str;
            if (!(annotationArr3.length == 0)) {
                int length6 = constructor.getParameterTypes().length - annotationArr3.length;
                int length7 = annotationArr3.length;
                int i10 = 0;
                while (true) {
                    constructorArr = declaredConstructors;
                    i9 = length4;
                    i6 = i7;
                    str2 = str;
                    if (i10 < length7) {
                        Annotation[] annotationArr4 = parameterAnnotations2[i10];
                        C18524p.m3843b(annotationArr4, str);
                        int i11 = length6;
                        for (Annotation annotation4 : annotationArr4) {
                            Class<?> m3893a2 = C18458a.m3893a(C18458a.m3894a(annotation4));
                            C18960a m2654e2 = C19088b.m2654e(m3893a2);
                            C18524p.m3843b(annotation4, "annotation");
                            AbstractC19646o.AbstractC19647a mo1860a2 = mo1862a2.mo1860a(i10 + i11, m2654e2, new C19072b(annotation4));
                            if (mo1860a2 != null) {
                                c19073c.m2671a(mo1860a2, annotation4, m3893a2);
                            }
                        }
                        i10++;
                        length6 = i11;
                    }
                }
            }
            mo1862a2.mo1863b();
            declaredConstructors = constructorArr;
            length4 = i9;
            str = str2;
        }
        Field[] declaredFields = klass.getDeclaredFields();
        C18524p.m3843b(declaredFields, "klass.declaredFields");
        int length8 = declaredFields.length;
        int i12 = 0;
        while (true) {
            int i13 = i12;
            if (i13 < length8) {
                Field field = declaredFields[i13];
                int i14 = i13 + 1;
                C18966e m2719a2 = C18966e.m2719a(field.getName());
                C18524p.m3843b(m2719a2, "identifier(field.name)");
                C19085l c19085l3 = C19085l.f64806a;
                C18524p.m3843b(field, "field");
                AbstractC19646o.AbstractC19649c mo1861b = memberVisitor.mo1861b(m2719a2, C19085l.m2663a(field));
                Annotation[] declaredAnnotations3 = field.getDeclaredAnnotations();
                C18524p.m3843b(declaredAnnotations3, "field.declaredAnnotations");
                int length9 = declaredAnnotations3.length;
                int i15 = 0;
                while (i15 < length9) {
                    Annotation annotation5 = declaredAnnotations3[i15];
                    i15++;
                    C18524p.m3843b(annotation5, "annotation");
                    c19073c.m2669a(mo1861b, annotation5);
                }
                mo1861b.mo1863b();
                i12 = i14;
            } else {
                return;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o
    /* renamed from: b */
    public final String mo1876b() {
        String name = this.f64795b.getName();
        C18524p.m3843b(name, "klass.name");
        return C18524p.m3847a(C18425p.m3964a(name, '.', '/', false), (Object) ".class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o
    /* renamed from: c */
    public final C18960a mo1875c() {
        return C19088b.m2654e(this.f64795b);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C19076f) && C18524p.m3850a(this.f64795b, ((C19076f) obj).f64795b);
    }

    public final int hashCode() {
        return this.f64795b.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f64795b;
    }
}
