package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Closeable;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1557b0.C23443j;
/* renamed from: e.k.a.c.n0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/g.class */
public final class C23914g {

    /* renamed from: a */
    public static final Annotation[] f66156a = new Annotation[0];

    /* renamed from: b */
    public static final C23915a[] f66157b = new C23915a[0];

    /* renamed from: c */
    public static final Iterator<?> f66158c = Collections.emptyIterator();

    /* renamed from: e.k.a.c.n0.g$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/g$a.class */
    public static final class C23915a {

        /* renamed from: a */
        public final Constructor<?> f66159a;

        /* renamed from: b */
        public transient Annotation[] f66160b;

        /* renamed from: c */
        public transient Annotation[][] f66161c;

        /* renamed from: d */
        public int f66162d = -1;

        public C23915a(Constructor<?> constructor) {
            this.f66159a = constructor;
        }

        /* renamed from: a */
        public int m5740a() {
            int i = this.f66162d;
            int i2 = i;
            if (i < 0) {
                i2 = this.f66159a.getParameterTypes().length;
                this.f66162d = i2;
            }
            return i2;
        }
    }

    /* renamed from: e.k.a.c.n0.g$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/g$b.class */
    public static class C23916b {

        /* renamed from: c */
        public static final C23916b f66163c = new C23916b();

        /* renamed from: a */
        public final Field f66164a = m5739a(EnumSet.class, "elementType", Class.class);

        /* renamed from: b */
        public final Field f66165b = m5739a(EnumMap.class, "elementType", Class.class);

        /* renamed from: a */
        public static Field m5739a(Class<?> cls, String str, Class<?> cls2) {
            Field field;
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    field = null;
                    break;
                }
                field = declaredFields[i];
                if (str.equals(field.getName()) && field.getType() == cls2) {
                    break;
                }
                i++;
            }
            Field field2 = field;
            if (field == null) {
                int length2 = declaredFields.length;
                int i2 = 0;
                while (true) {
                    field2 = field;
                    if (i2 >= length2) {
                        break;
                    }
                    Field field3 = declaredFields[i2];
                    Field field4 = field;
                    if (field3.getType() == cls2) {
                        if (field != null) {
                            return null;
                        }
                        field4 = field3;
                    }
                    i2++;
                    field = field4;
                }
            }
            if (field2 != null) {
                try {
                    field2.setAccessible(true);
                } catch (Throwable th) {
                }
            }
            return field2;
        }
    }

    /* renamed from: A */
    public static boolean m5780A(Class<?> cls) {
        return cls == Object.class || cls.isPrimitive();
    }

    /* renamed from: B */
    public static boolean m5779B(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("net.sf.cglib.proxy.") || name.startsWith("org.hibernate.proxy.");
    }

    /* renamed from: C */
    public static String m5778C(C23951v c23951v) {
        return c23951v == null ? "[null]" : m5764c(c23951v.f66304a);
    }

    /* renamed from: D */
    public static String m5777D(String str) {
        return str == null ? "[null]" : m5764c(str);
    }

    /* renamed from: E */
    public static String m5776E(Class<?> cls) {
        String str;
        int i;
        if (cls == null) {
            return "[null]";
        }
        int i2 = 0;
        while (cls.isArray()) {
            i2++;
            cls = cls.getComponentType();
        }
        String simpleName = cls.isPrimitive() ? cls.getSimpleName() : cls.getName();
        String str2 = simpleName;
        if (i2 > 0) {
            StringBuilder sb = new StringBuilder(simpleName);
            do {
                sb.append("[]");
                i = i2 - 1;
                i2 = i;
            } while (i > 0);
            str2 = sb.toString();
        }
        if (str2 == null) {
            str = "[null]";
        } else {
            StringBuilder sb2 = new StringBuilder(str2.length() + 2);
            sb2.append('`');
            sb2.append(str2);
            sb2.append('`');
            str = sb2.toString();
        }
        return str;
    }

    /* renamed from: F */
    public static Class<?> m5775F(Class<?> cls) {
        if (cls.isPrimitive()) {
            return cls;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls != Character.class) {
            return null;
        }
        return Character.TYPE;
    }

    /* renamed from: G */
    public static Class<?> m5774G(AbstractC23698i abstractC23698i) {
        if (abstractC23698i == null) {
            return null;
        }
        return abstractC23698i.f65728a;
    }

    /* renamed from: H */
    public static <T> T m5773H(AbstractC23632g abstractC23632g, IOException iOException) throws C23733k {
        if (iOException instanceof C23733k) {
            throw ((C23733k) iOException);
        }
        C23733k c23733k = new C23733k(abstractC23632g.f65505g, iOException.getMessage());
        c23733k.initCause(iOException);
        throw c23733k;
    }

    /* renamed from: I */
    public static Throwable m5772I(Throwable th) {
        if (!(th instanceof Error)) {
            return th;
        }
        throw ((Error) th);
    }

    /* renamed from: J */
    public static Throwable m5771J(Throwable th) throws IOException {
        if (!(th instanceof IOException)) {
            return th;
        }
        throw ((IOException) th);
    }

    /* renamed from: K */
    public static Throwable m5770K(Throwable th) {
        if (!(th instanceof RuntimeException)) {
            return th;
        }
        throw ((RuntimeException) th);
    }

    /* renamed from: L */
    public static void m5769L(Throwable th, String str) {
        Throwable m5748s = m5748s(th);
        m5770K(m5748s);
        m5772I(m5748s);
        throw new IllegalArgumentException(str, m5748s);
    }

    /* renamed from: M */
    public static void m5768M(Class<?> cls, Object obj, String str) {
        if (obj.getClass() == cls) {
            return;
        }
        throw new IllegalStateException(String.format("Sub-class %s (of class %s) must override method '%s'", obj.getClass().getName(), cls.getName(), str));
    }

    /* renamed from: N */
    public static Class<?> m5767N(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls != Character.TYPE) {
            throw new IllegalArgumentException(C22128a.m8639b2(cls, C22128a.m8728C("Class "), " is not a primitive type"));
        }
        return Character.class;
    }

    /* renamed from: a */
    public static void m5766a(Class<?> cls, Class<?> cls2, Collection<Class<?>> collection, boolean z) {
        if (cls == cls2 || cls == null || cls == Object.class) {
            return;
        }
        if (z) {
            if (collection.contains(cls)) {
                return;
            }
            collection.add(cls);
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            m5766a(cls3, cls2, collection, true);
        }
        m5766a(cls.getSuperclass(), cls2, collection, true);
    }

    /* renamed from: b */
    public static Method[] m5765b(Class<?> cls, Throwable th) throws IllegalArgumentException {
        throw new IllegalArgumentException(String.format("Failed on call to `getDeclaredMethods()` on class `%s`, problem: (%s) %s", cls.getName(), th.getClass().getName(), th.getMessage()), th);
    }

    /* renamed from: c */
    public static String m5764c(String str) {
        if (str == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\'');
        sb.append(str);
        sb.append('\'');
        return sb.toString();
    }

    /* renamed from: d */
    public static String m5763d(Class<?> cls) {
        if (cls.isAnnotation()) {
            return "annotation";
        }
        if (cls.isArray()) {
            return "array";
        }
        if (Enum.class.isAssignableFrom(cls)) {
            return "enum";
        }
        if (!cls.isPrimitive()) {
            return null;
        }
        return "primitive";
    }

    /* renamed from: e */
    public static void m5762e(Member member, boolean z) {
        AccessibleObject accessibleObject = (AccessibleObject) member;
        if (!z) {
            try {
                if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(member.getDeclaringClass().getModifiers())) {
                    return;
                }
            } catch (SecurityException e) {
                if (accessibleObject.isAccessible()) {
                    return;
                }
                Class<?> declaringClass = member.getDeclaringClass();
                throw new IllegalArgumentException("Cannot access " + member + " (from class " + declaringClass.getName() + "; failed to set access: " + e.getMessage());
            }
        }
        accessibleObject.setAccessible(true);
    }

    /* renamed from: f */
    public static String m5761f(Object obj) {
        if (obj == null) {
            return "[null]";
        }
        return m5776E(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    /* renamed from: g */
    public static void m5760g(AbstractC23372g abstractC23372g, Closeable closeable, Exception exc) throws IOException {
        if (abstractC23372g != null) {
            abstractC23372g.mo5854l(AbstractC23372g.EnumC23373a.AUTO_CLOSE_JSON_CONTENT);
            try {
                abstractC23372g.close();
            } catch (Exception e) {
                exc.addSuppressed(e);
            }
        }
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e2) {
                exc.addSuppressed(e2);
            }
        }
        m5771J(exc);
        m5770K(exc);
        throw new RuntimeException(exc);
    }

    /* renamed from: h */
    public static void m5759h(AbstractC23372g abstractC23372g, Exception exc) throws IOException {
        abstractC23372g.mo5854l(AbstractC23372g.EnumC23373a.AUTO_CLOSE_JSON_CONTENT);
        try {
            abstractC23372g.close();
        } catch (Exception e) {
            exc.addSuppressed(e);
        }
        m5771J(exc);
        m5770K(exc);
        throw new RuntimeException(exc);
    }

    /* renamed from: i */
    public static <T> T m5758i(Class<T> cls, boolean z) throws IllegalArgumentException {
        Constructor m5755l = m5755l(cls, z);
        if (m5755l != null) {
            try {
                return (T) m5755l.newInstance(new Object[0]);
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("Failed to instantiate class ");
                m8728C.append(cls.getName());
                m8728C.append(", problem: ");
                m8728C.append(e.getMessage());
                m5769L(e, m8728C.toString());
                throw null;
            }
        }
        throw new IllegalArgumentException(C22128a.m8639b2(cls, C22128a.m8728C("Class "), " has no default (no arg) constructor"));
    }

    /* renamed from: j */
    public static String m5757j(Throwable th) {
        return th instanceof C23379k ? ((C23379k) th).m7198b() : th.getMessage();
    }

    /* renamed from: k */
    public static Annotation[] m5756k(Class<?> cls) {
        return m5780A(cls) ? f66156a : cls.getDeclaredAnnotations();
    }

    /* renamed from: l */
    public static <T> Constructor<T> m5755l(Class<T> cls, boolean z) throws IllegalArgumentException {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (z) {
                m5762e(declaredConstructor, z);
            } else if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + cls.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: cannot instantiate type");
            }
            return declaredConstructor;
        } catch (NoSuchMethodException e) {
            return null;
        } catch (Exception e2) {
            StringBuilder m8728C = C22128a.m8728C("Failed to find default constructor of class ");
            m8728C.append(cls.getName());
            m8728C.append(", problem: ");
            m8728C.append(e2.getMessage());
            m5769L(e2, m8728C.toString());
            throw null;
        }
    }

    /* renamed from: m */
    public static List<Class<?>> m5754m(Class<?> cls, Class<?> cls2, boolean z) {
        ArrayList arrayList = new ArrayList(8);
        if (cls != null && cls != cls2) {
            Class<? super Object> cls3 = cls;
            if (z) {
                arrayList.add(cls);
                cls3 = cls;
            }
            while (true) {
                cls3 = cls3.getSuperclass();
                if (cls3 == null || cls3 == cls2) {
                    break;
                }
                arrayList.add(cls3);
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public static String m5753n(Object obj) {
        return m5776E(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    /* renamed from: o */
    public static Method[] m5752o(Class<?> cls) {
        Throwable th;
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError th2) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                throw null;
            }
            try {
                try {
                    return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
                } finally {
                }
            } catch (ClassNotFoundException e) {
                th2.addSuppressed(e);
                throw null;
            }
        } finally {
        }
    }

    /* renamed from: p */
    public static C23915a[] m5751p(Class<?> cls) {
        if (cls.isInterface() || m5780A(cls)) {
            return f66157b;
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        C23915a[] c23915aArr = new C23915a[length];
        for (int i = 0; i < length; i++) {
            c23915aArr[i] = new C23915a(declaredConstructors[i]);
        }
        return c23915aArr;
    }

    /* renamed from: q */
    public static Class<?> m5750q(Class<?> cls) {
        return m5780A(cls) ? null : cls.getEnclosingClass();
    }

    /* renamed from: r */
    public static Class<?> m5749r(Class<?> cls) {
        if (!Modifier.isStatic(cls.getModifiers())) {
            try {
                if (!(!m5780A(cls) && cls.getEnclosingMethod() != null)) {
                    return m5750q(cls);
                }
                return null;
            } catch (SecurityException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: s */
    public static Throwable m5748s(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    /* renamed from: t */
    public static String m5747t(AbstractC23698i abstractC23698i) {
        if (abstractC23698i == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(80);
        sb.append('`');
        sb.append(abstractC23698i.mo5928e());
        sb.append('`');
        return sb.toString();
    }

    /* renamed from: u */
    public static boolean m5746u(Object obj, Class<?> cls) {
        return obj != null && obj.getClass() == cls;
    }

    /* renamed from: v */
    public static boolean m5745v(Class<?> cls) {
        return cls == Void.class || cls == Void.TYPE || cls == C23443j.class;
    }

    /* renamed from: w */
    public static boolean m5744w(Class<?> cls) {
        return Enum.class.isAssignableFrom(cls);
    }

    /* renamed from: x */
    public static boolean m5743x(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("java.") || name.startsWith("javax.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if ((r3.getClass().getAnnotation(p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a.class) != null) != false) goto L10;
     */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5742y(java.lang.Object r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L1e
            r0 = r3
            java.lang.Class r0 = r0.getClass()
            java.lang.Class<e.k.a.c.b0.a> r1 = p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)
            if (r0 == 0) goto L18
            r0 = 1
            r5 = r0
            goto L1a
        L18:
            r0 = 0
            r5 = r0
        L1a:
            r0 = r5
            if (r0 == 0) goto L20
        L1e:
            r0 = 1
            r4 = r0
        L20:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5742y(java.lang.Object):boolean");
    }

    /* renamed from: z */
    public static boolean m5741z(Class<?> cls) {
        return !Modifier.isStatic(cls.getModifiers()) && m5750q(cls) != null;
    }
}
