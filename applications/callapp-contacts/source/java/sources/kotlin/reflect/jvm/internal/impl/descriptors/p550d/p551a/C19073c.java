package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19780f;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/c.class */
public final class C19073c {

    /* renamed from: a */
    public static final C19073c f64792a = new C19073c();

    private C19073c() {
    }

    /* renamed from: a */
    private static C19780f m2673a(Class<?> cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            C18524p.m3843b(cls, "currentClass.componentType");
        }
        if (!cls.isPrimitive()) {
            C18960a m2654e = C19088b.m2654e(cls);
            C18894c c18894c = C18894c.f64450a;
            C18961b m2748f = m2654e.m2748f();
            C18524p.m3843b(m2748f, "javaClassId.asSingleFqName()");
            C18960a m2905a = C18894c.m2905a(m2748f);
            if (m2905a != null) {
                m2654e = m2905a;
            }
            return new C19780f(m2654e, i);
        } else if (C18524p.m3850a(cls, Void.TYPE)) {
            C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64651f.m2730c());
            C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.unit.toSafe())");
            return new C19780f(m2754a, i);
        } else {
            EnumC18946h primitiveType = EnumC19767d.get(cls.getName()).getPrimitiveType();
            C18524p.m3843b(primitiveType, "get(currentClass.name).primitiveType");
            if (i > 0) {
                C18960a m2754a2 = C18960a.m2754a(primitiveType.getArrayTypeFqName());
                C18524p.m3843b(m2754a2, "topLevel(primitiveType.arrayTypeFqName)");
                return new C19780f(m2754a2, i - 1);
            }
            C18960a m2754a3 = C18960a.m2754a(primitiveType.getTypeFqName());
            C18524p.m3843b(m2754a3, "topLevel(primitiveType.typeFqName)");
            return new C19780f(m2754a3, i);
        }
    }

    /* renamed from: a */
    private final void m2670a(AbstractC19646o.AbstractC19647a abstractC19647a, C18966e c18966e, Object obj) {
        Set set;
        Class<?> cls = obj.getClass();
        if (C18524p.m3850a(cls, Class.class)) {
            abstractC19647a.mo1869a(c18966e, m2673a((Class) obj));
            return;
        }
        set = C19079h.f64799a;
        if (set.contains(cls)) {
            abstractC19647a.mo1872a(c18966e, obj);
        } else if (C19088b.m2657b(cls)) {
            if (!cls.isEnum()) {
                cls = cls.getEnclosingClass();
            }
            C18524p.m3843b(cls, "if (clazz.isEnum) clazz else clazz.enclosingClass");
            C18960a m2654e = C19088b.m2654e(cls);
            C18966e m2719a = C18966e.m2719a(((Enum) obj).name());
            C18524p.m3843b(m2719a, "identifier((value as Enum<*>).name)");
            abstractC19647a.mo1870a(c18966e, m2654e, m2719a);
        } else if (Annotation.class.isAssignableFrom(cls)) {
            Class<?>[] interfaces = cls.getInterfaces();
            C18524p.m3843b(interfaces, "clazz.interfaces");
            Class<?> annotationClass = (Class) C18273i.m4186f(interfaces);
            C18524p.m3843b(annotationClass, "annotationClass");
            AbstractC19646o.AbstractC19647a mo1871a = abstractC19647a.mo1871a(c18966e, C19088b.m2654e(annotationClass));
            if (mo1871a == null) {
                return;
            }
            m2671a(mo1871a, (Annotation) obj, annotationClass);
        } else if (!cls.isArray()) {
            throw new UnsupportedOperationException("Unsupported annotation argument value (" + cls + "): " + obj);
        } else {
            AbstractC19646o.AbstractC19648b mo1873a = abstractC19647a.mo1873a(c18966e);
            if (mo1873a == null) {
                return;
            }
            Class<?> componentType = cls.getComponentType();
            int i = 0;
            if (componentType.isEnum()) {
                C18524p.m3843b(componentType, "componentType");
                C18960a m2654e2 = C19088b.m2654e(componentType);
                Object[] objArr = (Object[]) obj;
                int length = objArr.length;
                while (i < length) {
                    Object obj2 = objArr[i];
                    i++;
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Enum<*>");
                    C18966e m2719a2 = C18966e.m2719a(((Enum) obj2).name());
                    C18524p.m3843b(m2719a2, "identifier((element as Enum<*>).name)");
                    mo1873a.mo1866a(m2654e2, m2719a2);
                }
            } else if (C18524p.m3850a(componentType, Class.class)) {
                Object[] objArr2 = (Object[]) obj;
                int length2 = objArr2.length;
                int i2 = 0;
                while (i2 < length2) {
                    Object obj3 = objArr2[i2];
                    i2++;
                    Objects.requireNonNull(obj3, "null cannot be cast to non-null type java.lang.Class<*>");
                    mo1873a.mo1865a(m2673a((Class) obj3));
                }
            } else {
                Object[] objArr3 = (Object[]) obj;
                int length3 = objArr3.length;
                int i3 = 0;
                while (i3 < length3) {
                    i3++;
                    mo1873a.mo1867a(objArr3[i3]);
                }
            }
            mo1873a.mo1868a();
        }
    }

    /* renamed from: a */
    public final void m2672a(Class<?> klass, AbstractC19646o.AbstractC19649c visitor) {
        C18524p.m3840d(klass, "klass");
        C18524p.m3840d(visitor, "visitor");
        Annotation[] declaredAnnotations = klass.getDeclaredAnnotations();
        C18524p.m3843b(declaredAnnotations, "klass.declaredAnnotations");
        int length = declaredAnnotations.length;
        int i = 0;
        while (i < length) {
            Annotation annotation = declaredAnnotations[i];
            i++;
            C18524p.m3843b(annotation, "annotation");
            m2669a(visitor, annotation);
        }
        visitor.mo1863b();
    }

    /* renamed from: a */
    public final void m2671a(AbstractC19646o.AbstractC19647a abstractC19647a, Annotation annotation, Class<?> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        C18524p.m3843b(declaredMethods, "annotationType.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            i++;
            try {
                Object invoke = method.invoke(annotation, new Object[0]);
                C18524p.m3851a(invoke);
                C18966e m2719a = C18966e.m2719a(method.getName());
                C18524p.m3843b(m2719a, "identifier(method.name)");
                m2670a(abstractC19647a, m2719a, invoke);
            } catch (IllegalAccessException e) {
            }
        }
        abstractC19647a.mo1874a();
    }

    /* renamed from: a */
    public final void m2669a(AbstractC19646o.AbstractC19649c abstractC19649c, Annotation annotation) {
        Class<?> m3893a = C18458a.m3893a(C18458a.m3894a(annotation));
        AbstractC19646o.AbstractC19647a mo1864a = abstractC19649c.mo1864a(C19088b.m2654e(m3893a), new C19072b(annotation));
        if (mo1864a != null) {
            m2671a(mo1864a, annotation, m3893a);
        }
    }
}
