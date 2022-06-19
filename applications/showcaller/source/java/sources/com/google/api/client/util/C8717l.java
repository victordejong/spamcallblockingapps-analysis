package com.google.api.client.util;

import com.google.common.base.C8738a;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.api.client.util.l */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/l.class */
public class C8717l {

    /* renamed from: a */
    private static final Map<Field, C8717l> f38543a = new WeakHashMap();

    /* renamed from: b */
    private final boolean f38544b;

    /* renamed from: c */
    private final Field f38545c;

    /* renamed from: d */
    private final Method[] f38546d;

    /* renamed from: e */
    private final String f38547e;

    C8717l(Field field, String str) {
        this.f38545c = field;
        this.f38547e = str == null ? null : str.intern();
        this.f38544b = C8712j.m2879e(m2861f());
        this.f38546d = m2853n(field);
    }

    /* renamed from: c */
    public static Object m2864c(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: j */
    public static C8717l m2857j(Enum<?> r7) {
        try {
            C8717l m2856k = m2856k(r7.getClass().getField(r7.name()));
            C8731w.m2837c(m2856k != null, "enum constant missing @Value or @NullValue annotation: %s", r7);
            return m2856k;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if (java.lang.reflect.Modifier.isStatic(r4.getModifiers()) == false) goto L15;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.util.C8717l m2856k(java.lang.reflect.Field r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.l> r0 = com.google.api.client.util.C8717l.f38543a
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.util.l r0 = (com.google.api.client.util.C8717l) r0     // Catch: java.lang.Throwable -> Lbe
            r7 = r0
            r0 = r4
            boolean r0 = r0.isEnumConstant()     // Catch: java.lang.Throwable -> Lbe
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            if (r0 != 0) goto Lb9
            r0 = r8
            if (r0 != 0) goto L38
            r0 = r7
            r9 = r0
            r0 = r4
            int r0 = r0.getModifiers()     // Catch: java.lang.Throwable -> Lbe
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)     // Catch: java.lang.Throwable -> Lbe
            if (r0 != 0) goto Lb9
        L38:
            r0 = r8
            if (r0 == 0) goto L6f
            r0 = r4
            java.lang.Class<com.google.api.client.util.e0> r1 = com.google.api.client.util.AbstractC8699e0.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.util.e0 r0 = (com.google.api.client.util.AbstractC8699e0) r0     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L59
            r0 = r9
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            goto L91
        L59:
            r0 = r4
            java.lang.Class<com.google.api.client.util.t> r1 = com.google.api.client.util.AbstractC8725t.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.util.t r0 = (com.google.api.client.util.AbstractC8725t) r0     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L6b
            r0 = r5
            r9 = r0
            goto L91
        L6b:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbe
            r0 = 0
            return r0
        L6f:
            r0 = r4
            java.lang.Class<com.google.api.client.util.o> r1 = com.google.api.client.util.AbstractC8720o.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.util.o r0 = (com.google.api.client.util.AbstractC8720o) r0     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L83
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbe
            r0 = 0
            return r0
        L83:
            r0 = r9
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r4
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> Lbe
        L91:
            r0 = r9
            r5 = r0
            java.lang.String r0 = "##default"
            r1 = r9
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto La3
            r0 = r4
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Throwable -> Lbe
            r5 = r0
        La3:
            com.google.api.client.util.l r0 = new com.google.api.client.util.l     // Catch: java.lang.Throwable -> Lbe java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r9
            r1 = r4
            r2 = r5
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> Lbe
            r0 = r6
            r1 = r4
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> Lbe
        Lb9:
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbe
            r0 = r9
            return r0
        Lbe:
            r4 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbe
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.util.C8717l.m2856k(java.lang.reflect.Field):com.google.api.client.util.l");
    }

    /* renamed from: l */
    public static void m2855l(Field field, Object obj, Object obj2) {
        if (!Modifier.isFinal(field.getModifiers())) {
            try {
                field.set(obj, obj2);
                return;
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException(e);
            } catch (SecurityException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        Object m2864c = m2864c(field, obj);
        if (obj2 == null) {
            if (m2864c == null) {
                return;
            }
        } else if (obj2.equals(m2864c)) {
            return;
        }
        throw new IllegalArgumentException("expected final value <" + m2864c + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
    }

    /* renamed from: n */
    private Method[] m2853n(Field field) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (C8738a.m2826b(method.getName()).equals("set" + C8738a.m2826b(field.getName())) && method.getParameterTypes().length == 1) {
                arrayList.add(method);
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    /* renamed from: a */
    public <T extends Enum<T>> T m2866a() {
        return (T) Enum.valueOf(this.f38545c.getDeclaringClass(), this.f38545c.getName());
    }

    /* renamed from: b */
    public Field m2865b() {
        return this.f38545c;
    }

    /* renamed from: d */
    public Type m2863d() {
        return this.f38545c.getGenericType();
    }

    /* renamed from: e */
    public String m2862e() {
        return this.f38547e;
    }

    /* renamed from: f */
    public Class<?> m2861f() {
        return this.f38545c.getType();
    }

    /* renamed from: g */
    public Object m2860g(Object obj) {
        return m2864c(this.f38545c, obj);
    }

    /* renamed from: h */
    public boolean m2859h() {
        return Modifier.isFinal(this.f38545c.getModifiers());
    }

    /* renamed from: i */
    public boolean m2858i() {
        return this.f38544b;
    }

    /* renamed from: m */
    public void m2854m(Object obj, Object obj2) {
        Method[] methodArr = this.f38546d;
        if (methodArr.length > 0) {
            for (Method method : methodArr) {
                if (obj2 == null || method.getParameterTypes()[0].isAssignableFrom(obj2.getClass())) {
                    try {
                        method.invoke(obj, obj2);
                        return;
                    } catch (IllegalAccessException | InvocationTargetException e) {
                    }
                }
            }
        }
        m2855l(this.f38545c, obj, obj2);
    }
}
