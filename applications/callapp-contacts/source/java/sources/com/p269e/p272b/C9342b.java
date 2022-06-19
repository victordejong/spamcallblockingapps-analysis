package com.p269e.p272b;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.e.b.b */
/* loaded from: classes2-dex2jar.jar:com/e/b/b.class */
final class C9342b {

    /* renamed from: b */
    private static final Map<Class<?>, Class<?>> f31969b;

    /* renamed from: a */
    private static final Class<?>[] f31968a = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    /* renamed from: c */
    private static final Map<Class<?>, Class<?>> f31970c = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        f31969b = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        Class cls = Void.TYPE;
        hashMap.put(cls, cls);
        for (Class<?> cls2 : hashMap.keySet()) {
            Class<?> cls3 = f31969b.get(cls2);
            if (!cls2.equals(cls3)) {
                f31970c.put(cls3, cls2);
            }
        }
    }

    C9342b() {
    }

    /* renamed from: a */
    public static boolean m24673a(AccessibleObject accessibleObject) {
        if (accessibleObject == null || accessibleObject.isAccessible()) {
            return false;
        }
        Member member = (Member) accessibleObject;
        if (accessibleObject.isAccessible() || !Modifier.isPublic(member.getModifiers())) {
            return false;
        }
        if (!((member.getDeclaringClass().getModifiers() & 7) == 0)) {
            return false;
        }
        try {
            accessibleObject.setAccessible(true);
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m24672a(Member member) {
        return member != null && Modifier.isPublic(member.getModifiers()) && !member.isSynthetic();
    }
}
