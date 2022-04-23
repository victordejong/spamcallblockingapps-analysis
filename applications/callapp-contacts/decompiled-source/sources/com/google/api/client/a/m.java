package com.google.api.client.a;

import com.google.common.base.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/m.class */
public final class m {

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Field, m> f31648d = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f31649a;

    /* renamed from: b  reason: collision with root package name */
    public final Field f31650b;

    /* renamed from: c  reason: collision with root package name */
    public final String f31651c;
    private final Method[] e;

    m(Field field, String str) {
        this.f31650b = field;
        this.f31651c = str == null ? null : str.intern();
        this.f31649a = j.a((Type) field.getType());
        this.e = b(field);
    }

    public static m a(Enum<?> r7) {
        try {
            m a2 = a(r7.getClass().getField(r7.name()));
            com.google.common.base.m.a(a2 != null, "enum constant missing @Value or @NullValue annotation: %s", r7);
            return a2;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if (java.lang.reflect.Modifier.isStatic(r4.getModifiers()) == false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.api.client.a.m a(java.lang.reflect.Field r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            java.util.Map<java.lang.reflect.Field, com.google.api.client.a.m> r0 = com.google.api.client.a.m.f31648d
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00be
            com.google.api.client.a.m r0 = (com.google.api.client.a.m) r0     // Catch: all -> 0x00be
            r7 = r0
            r0 = r4
            boolean r0 = r0.isEnumConstant()     // Catch: all -> 0x00be
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L_0x00b9
            r0 = r8
            if (r0 != 0) goto L_0x0038
            r0 = r7
            r9 = r0
            r0 = r4
            int r0 = r0.getModifiers()     // Catch: all -> 0x00be
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)     // Catch: all -> 0x00be
            if (r0 != 0) goto L_0x00b9
        L_0x0038:
            r0 = r8
            if (r0 == 0) goto L_0x006f
            r0 = r4
            java.lang.Class<com.google.api.client.a.ah> r1 = com.google.api.client.a.ah.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: all -> 0x00be
            com.google.api.client.a.ah r0 = (com.google.api.client.a.ah) r0     // Catch: all -> 0x00be
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0059
            r0 = r9
            java.lang.String r0 = r0.a()     // Catch: all -> 0x00be
            r9 = r0
            goto L_0x0091
        L_0x0059:
            r0 = r4
            java.lang.Class<com.google.api.client.a.w> r1 = com.google.api.client.a.w.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: all -> 0x00be
            com.google.api.client.a.w r0 = (com.google.api.client.a.w) r0     // Catch: all -> 0x00be
            if (r0 == 0) goto L_0x006b
            r0 = r5
            r9 = r0
            goto L_0x0091
        L_0x006b:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00be
            r0 = 0
            return r0
        L_0x006f:
            r0 = r4
            java.lang.Class<com.google.api.client.a.q> r1 = com.google.api.client.a.q.class
            java.lang.annotation.Annotation r0 = r0.getAnnotation(r1)     // Catch: all -> 0x00be
            com.google.api.client.a.q r0 = (com.google.api.client.a.q) r0     // Catch: all -> 0x00be
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0083
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00be
            r0 = 0
            return r0
        L_0x0083:
            r0 = r9
            java.lang.String r0 = r0.a()     // Catch: all -> 0x00be
            r9 = r0
            r0 = r4
            r1 = 1
            r0.setAccessible(r1)     // Catch: all -> 0x00be
        L_0x0091:
            r0 = r9
            r5 = r0
            java.lang.String r0 = "##default"
            r1 = r9
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x00be
            if (r0 == 0) goto L_0x00a3
            r0 = r4
            java.lang.String r0 = r0.getName()     // Catch: all -> 0x00be
            r5 = r0
        L_0x00a3:
            com.google.api.client.a.m r0 = new com.google.api.client.a.m     // Catch: all -> 0x00be, all -> 0x00be
            r9 = r0
            r0 = r9
            r1 = r4
            r2 = r5
            r0.<init>(r1, r2)     // Catch: all -> 0x00be
            r0 = r6
            r1 = r4
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x00be
        L_0x00b9:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00be
            r0 = r9
            return r0
        L_0x00be:
            r4 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00be
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.a.m.a(java.lang.reflect.Field):com.google.api.client.a.m");
    }

    private static Object a(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void a(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object a2 = a(field, obj);
            if (obj2 == null) {
                if (a2 == null) {
                    return;
                }
            } else if (obj2.equals(a2)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + a2 + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (SecurityException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    private static Method[] b(Field field) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (b.a(method.getName()).equals("set" + b.a(field.getName())) && method.getParameterTypes().length == 1) {
                arrayList.add(method);
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    public final Object a(Object obj) {
        return a(this.f31650b, obj);
    }

    public final void a(Object obj, Object obj2) {
        Method[] methodArr = this.e;
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
        a(this.f31650b, obj, obj2);
    }

    public final boolean a() {
        return Modifier.isFinal(this.f31650b.getModifiers());
    }

    public final <T extends Enum<T>> T b() {
        return (T) Enum.valueOf(this.f31650b.getDeclaringClass(), this.f31650b.getName());
    }
}
