package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/f.class */
public final class f implements o {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37436a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final Class<?> f37437b;

    /* renamed from: c  reason: collision with root package name */
    public final kotlin.reflect.jvm.internal.impl.load.kotlin.a.a f37438c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x009f, code lost:
            if (r0.f == null) goto L_0x00e6;
         */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ec A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ee  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static kotlin.reflect.jvm.internal.impl.descriptors.d.a.f a(java.lang.Class<?> r12) {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.d.a.f.a.a(java.lang.Class):kotlin.reflect.jvm.internal.impl.descriptors.d.a.f");
        }
    }

    private f(Class<?> cls, kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar) {
        this.f37437b = cls;
        this.f37438c = aVar;
    }

    public /* synthetic */ f(Class cls, kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
    public final kotlin.reflect.jvm.internal.impl.load.kotlin.a.a a() {
        return this.f37438c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
    public final void a(o.c visitor) {
        p.d(visitor, "visitor");
        c.f37434a.a(this.f37437b, visitor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
    public final void a(o.d memberVisitor) {
        String str;
        p.d(memberVisitor, "visitor");
        c cVar = c.f37434a;
        Class<?> klass = this.f37437b;
        p.d(klass, "klass");
        p.d(memberVisitor, "memberVisitor");
        Method[] declaredMethods = klass.getDeclaredMethods();
        p.b(declaredMethods, "klass.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (true) {
            str = "annotations";
            if (i >= length) {
                break;
            }
            Method method = declaredMethods[i];
            i++;
            e a2 = e.a(method.getName());
            p.b(a2, "identifier(method.name)");
            l lVar = l.f37448a;
            p.b(method, "method");
            o.e a3 = memberVisitor.a(a2, l.a(method));
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            p.b(declaredAnnotations, "method.declaredAnnotations");
            int length2 = declaredAnnotations.length;
            int i2 = 0;
            while (i2 < length2) {
                Annotation annotation = declaredAnnotations[i2];
                i2++;
                p.b(annotation, "annotation");
                cVar.a(a3, annotation);
            }
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            p.b(parameterAnnotations, "method.parameterAnnotations");
            Annotation[][] annotationArr = parameterAnnotations;
            int length3 = annotationArr.length;
            int i3 = 0;
            while (i3 < length3) {
                Annotation[] annotations = annotationArr[i3];
                p.b(annotations, "annotations");
                for (Annotation annotation2 : annotations) {
                    Class<?> a4 = kotlin.jvm.a.a(kotlin.jvm.a.a(annotation2));
                    kotlin.reflect.jvm.internal.impl.c.a e = b.e(a4);
                    p.b(annotation2, "annotation");
                    o.a a5 = a3.a(i3, e, new b(annotation2));
                    if (a5 != null) {
                        cVar.a(a5, annotation2, a4);
                    }
                }
                i3++;
                annotationArr = annotationArr;
            }
            a3.b();
            declaredMethods = declaredMethods;
        }
        Constructor<?>[] declaredConstructors = klass.getDeclaredConstructors();
        p.b(declaredConstructors, "klass.declaredConstructors");
        int length4 = declaredConstructors.length;
        int i4 = 0;
        while (i4 < length4) {
            Constructor<?> constructor = declaredConstructors[i4];
            int i5 = i4 + 1;
            e c2 = e.c("<init>");
            p.b(c2, "special(\"<init>\")");
            l lVar2 = l.f37448a;
            p.b(constructor, "constructor");
            o.e a6 = memberVisitor.a(c2, l.a(constructor));
            Annotation[] declaredAnnotations2 = constructor.getDeclaredAnnotations();
            p.b(declaredAnnotations2, "constructor.declaredAnnotations");
            int length5 = declaredAnnotations2.length;
            int i6 = 0;
            while (i6 < length5) {
                Annotation annotation3 = declaredAnnotations2[i6];
                i6++;
                p.b(annotation3, "annotation");
                cVar.a(a6, annotation3);
            }
            Annotation[][] parameterAnnotations2 = constructor.getParameterAnnotations();
            p.b(parameterAnnotations2, "parameterAnnotations");
            Annotation[][] annotationArr2 = parameterAnnotations2;
            declaredConstructors = declaredConstructors;
            length4 = length4;
            i4 = i5;
            str = str;
            if (!(annotationArr2.length == 0)) {
                int length6 = constructor.getParameterTypes().length - annotationArr2.length;
                int length7 = annotationArr2.length;
                int i7 = 0;
                while (true) {
                    declaredConstructors = declaredConstructors;
                    length4 = length4;
                    i4 = i5;
                    str = str;
                    if (i7 < length7) {
                        Annotation[] annotationArr3 = parameterAnnotations2[i7];
                        p.b(annotationArr3, str);
                        for (Annotation annotation4 : annotationArr3) {
                            Class<?> a7 = kotlin.jvm.a.a(kotlin.jvm.a.a(annotation4));
                            kotlin.reflect.jvm.internal.impl.c.a e2 = b.e(a7);
                            p.b(annotation4, "annotation");
                            o.a a8 = a6.a(i7 + length6, e2, new b(annotation4));
                            if (a8 != null) {
                                cVar.a(a8, annotation4, a7);
                            }
                        }
                        i7++;
                        length6 = length6;
                    }
                }
            }
            a6.b();
        }
        Field[] declaredFields = klass.getDeclaredFields();
        p.b(declaredFields, "klass.declaredFields");
        int length8 = declaredFields.length;
        int i8 = 0;
        while (i8 < length8) {
            Field field = declaredFields[i8];
            i8++;
            e a9 = e.a(field.getName());
            p.b(a9, "identifier(field.name)");
            l lVar3 = l.f37448a;
            p.b(field, "field");
            o.c b2 = memberVisitor.b(a9, l.a(field));
            Annotation[] declaredAnnotations3 = field.getDeclaredAnnotations();
            p.b(declaredAnnotations3, "field.declaredAnnotations");
            int length9 = declaredAnnotations3.length;
            int i9 = 0;
            while (i9 < length9) {
                Annotation annotation5 = declaredAnnotations3[i9];
                i9++;
                p.b(annotation5, "annotation");
                cVar.a(b2, annotation5);
            }
            b2.b();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
    public final String b() {
        String name = this.f37437b.getName();
        p.b(name, "klass.name");
        return p.a(kotlin.h.p.a(name, '.', '/', false), (Object) ".class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o
    public final kotlin.reflect.jvm.internal.impl.c.a c() {
        return b.e(this.f37437b);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof f) && p.a(this.f37437b, ((f) obj).f37437b);
    }

    public final int hashCode() {
        return this.f37437b.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f37437b;
    }
}
