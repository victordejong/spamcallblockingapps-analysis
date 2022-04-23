package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.Set;
import kotlin.a.i;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f37434a = new c();

    private c() {
    }

    private static f a(Class<?> cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            p.b(cls, "currentClass.componentType");
        }
        if (!cls.isPrimitive()) {
            a e = b.e(cls);
            kotlin.reflect.jvm.internal.impl.builtins.a.c cVar = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
            kotlin.reflect.jvm.internal.impl.c.b f = e.f();
            p.b(f, "javaClassId.asSingleFqName()");
            a a2 = kotlin.reflect.jvm.internal.impl.builtins.a.c.a(f);
            if (a2 != null) {
                e = a2;
            }
            return new f(e, i);
        } else if (p.a(cls, Void.TYPE)) {
            a a3 = a.a(j.a.f.c());
            p.b(a3, "topLevel(StandardNames.FqNames.unit.toSafe())");
            return new f(a3, i);
        } else {
            h primitiveType = d.get(cls.getName()).getPrimitiveType();
            p.b(primitiveType, "get(currentClass.name).primitiveType");
            if (i > 0) {
                a a4 = a.a(primitiveType.getArrayTypeFqName());
                p.b(a4, "topLevel(primitiveType.arrayTypeFqName)");
                return new f(a4, i - 1);
            }
            a a5 = a.a(primitiveType.getTypeFqName());
            p.b(a5, "topLevel(primitiveType.typeFqName)");
            return new f(a5, i);
        }
    }

    private final void a(o.a aVar, e eVar, Object obj) {
        Set set;
        Class<?> cls = obj.getClass();
        if (p.a(cls, Class.class)) {
            aVar.a(eVar, a((Class) obj));
            return;
        }
        set = h.f37441a;
        if (set.contains(cls)) {
            aVar.a(eVar, obj);
        } else if (b.b(cls)) {
            if (!cls.isEnum()) {
                cls = cls.getEnclosingClass();
            }
            p.b(cls, "if (clazz.isEnum) clazz else clazz.enclosingClass");
            a e = b.e(cls);
            e a2 = e.a(((Enum) obj).name());
            p.b(a2, "identifier((value as Enum<*>).name)");
            aVar.a(eVar, e, a2);
        } else if (Annotation.class.isAssignableFrom(cls)) {
            Class<?>[] interfaces = cls.getInterfaces();
            p.b(interfaces, "clazz.interfaces");
            Class<?> annotationClass = (Class) i.f(interfaces);
            p.b(annotationClass, "annotationClass");
            o.a a3 = aVar.a(eVar, b.e(annotationClass));
            if (a3 != null) {
                a(a3, (Annotation) obj, annotationClass);
            }
        } else if (cls.isArray()) {
            o.b a4 = aVar.a(eVar);
            if (a4 != null) {
                Class<?> componentType = cls.getComponentType();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                if (componentType.isEnum()) {
                    p.b(componentType, "componentType");
                    a e2 = b.e(componentType);
                    Object[] objArr = (Object[]) obj;
                    int length = objArr.length;
                    while (i3 < length) {
                        Object obj2 = objArr[i3];
                        i3++;
                        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Enum<*>");
                        e a5 = e.a(((Enum) obj2).name());
                        p.b(a5, "identifier((element as Enum<*>).name)");
                        a4.a(e2, a5);
                    }
                } else if (p.a(componentType, Class.class)) {
                    Object[] objArr2 = (Object[]) obj;
                    int length2 = objArr2.length;
                    while (i < length2) {
                        Object obj3 = objArr2[i];
                        i++;
                        Objects.requireNonNull(obj3, "null cannot be cast to non-null type java.lang.Class<*>");
                        a4.a(a((Class) obj3));
                    }
                } else {
                    Object[] objArr3 = (Object[]) obj;
                    int length3 = objArr3.length;
                    while (i2 < length3) {
                        Object obj4 = objArr3[i2];
                        i2++;
                        a4.a(obj4);
                    }
                }
                a4.a();
            }
        } else {
            throw new UnsupportedOperationException("Unsupported annotation argument value (" + cls + "): " + obj);
        }
    }

    public final void a(Class<?> klass, o.c visitor) {
        p.d(klass, "klass");
        p.d(visitor, "visitor");
        Annotation[] declaredAnnotations = klass.getDeclaredAnnotations();
        p.b(declaredAnnotations, "klass.declaredAnnotations");
        int length = declaredAnnotations.length;
        int i = 0;
        while (i < length) {
            Annotation annotation = declaredAnnotations[i];
            i++;
            p.b(annotation, "annotation");
            a(visitor, annotation);
        }
        visitor.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(o.a aVar, Annotation annotation, Class<?> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        p.b(declaredMethods, "annotationType.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            i++;
            try {
                Object invoke = method.invoke(annotation, new Object[0]);
                p.a(invoke);
                e a2 = e.a(method.getName());
                p.b(a2, "identifier(method.name)");
                a(aVar, a2, invoke);
            } catch (IllegalAccessException e) {
            }
        }
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(o.c cVar, Annotation annotation) {
        Class<?> a2 = kotlin.jvm.a.a(kotlin.jvm.a.a(annotation));
        o.a a3 = cVar.a(b.e(a2), new b(annotation));
        if (a3 != null) {
            a(a3, annotation, a2);
        }
    }
}
