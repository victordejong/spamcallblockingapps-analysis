package com.google.api.client.p379a;

import com.google.common.base.C15368b;
import com.google.common.base.C15391m;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.api.client.a.m */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/m.class */
public final class C15240m {

    /* renamed from: d */
    private static final Map<Field, C15240m> f55113d = new WeakHashMap();

    /* renamed from: a */
    public final boolean f55114a;

    /* renamed from: b */
    public final Field f55115b;

    /* renamed from: c */
    public final String f55116c;

    /* renamed from: e */
    private final Method[] f55117e;

    C15240m(Field field, String str) {
        this.f55115b = field;
        this.f55116c = str == null ? null : str.intern();
        this.f55114a = C15232j.m9239a((Type) field.getType());
        this.f55117e = m9215b(field);
    }

    /* renamed from: a */
    public static C15240m m9222a(Enum<?> r7) {
        try {
            C15240m m9219a = m9219a(r7.getClass().getField(r7.name()));
            C15391m.m8936a(m9219a != null, "enum constant missing @Value or @NullValue annotation: %s", r7);
            return m9219a;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if (java.lang.reflect.Modifier.isStatic(r4.getModifiers()) == false) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.p379a.C15240m m9219a(java.lang.reflect.Field r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            java.util.Map<java.lang.reflect.Field, com.google.api.client.a.m> r0 = com.google.api.client.p379a.C15240m.f55113d
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.a.m r0 = (com.google.api.client.p379a.C15240m) r0     // Catch: java.lang.Throwable -> Lbe
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
            java.lang.Class<com.google.api.client.a.ah> r1 = com.google.api.client.p379a.AbstractC15217ah.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.a.ah r0 = (com.google.api.client.p379a.AbstractC15217ah) r0     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L59
            r0 = r9
            java.lang.String r0 = r0.m9257a()     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            goto L91
        L59:
            r0 = r4
            java.lang.Class<com.google.api.client.a.w> r1 = com.google.api.client.p379a.AbstractC15253w.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.a.w r0 = (com.google.api.client.p379a.AbstractC15253w) r0     // Catch: java.lang.Throwable -> Lbe
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
            java.lang.Class<com.google.api.client.a.q> r1 = com.google.api.client.p379a.AbstractC15247q.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: java.lang.Throwable -> Lbe
            com.google.api.client.a.q r0 = (com.google.api.client.p379a.AbstractC15247q) r0     // Catch: java.lang.Throwable -> Lbe
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L83
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbe
            r0 = 0
            return r0
        L83:
            r0 = r9
            java.lang.String r0 = r0.m9209a()     // Catch: java.lang.Throwable -> Lbe
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
            com.google.api.client.a.m r0 = new com.google.api.client.a.m     // Catch: java.lang.Throwable -> Lbe java.lang.Throwable -> Lbe
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.p379a.C15240m.m9219a(java.lang.reflect.Field):com.google.api.client.a.m");
    }

    /* renamed from: a */
    private static Object m9218a(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public static void m9217a(Field field, Object obj, Object obj2) {
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
        Object m9218a = m9218a(field, obj);
        if (obj2 == null) {
            if (m9218a == null) {
                return;
            }
        } else if (obj2.equals(m9218a)) {
            return;
        }
        throw new IllegalArgumentException("expected final value <" + m9218a + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
    }

    /* renamed from: b */
    private static Method[] m9215b(Field field) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (C15368b.m8972a(method.getName()).equals("set" + C15368b.m8972a(field.getName())) && method.getParameterTypes().length == 1) {
                arrayList.add(method);
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    /* renamed from: a */
    public final Object m9221a(Object obj) {
        return m9218a(this.f55115b, obj);
    }

    /* renamed from: a */
    public final void m9220a(Object obj, Object obj2) {
        Method[] methodArr = this.f55117e;
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
        m9217a(this.f55115b, obj, obj2);
    }

    /* renamed from: a */
    public final boolean m9223a() {
        return Modifier.isFinal(this.f55115b.getModifiers());
    }

    /* renamed from: b */
    public final <T extends Enum<T>> T m9216b() {
        return (T) Enum.valueOf(this.f55115b.getDeclaringClass(), this.f55115b.getName());
    }
}
