package com.p269e.p272b;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
/* renamed from: com.e.b.c */
/* loaded from: classes2-dex2jar.jar:com/e/b/c.class */
final class C9343c {

    /* renamed from: a */
    static final Object[] f31971a = new Object[0];

    /* renamed from: b */
    static final Class<?>[] f31972b = new Class[0];

    C9343c() {
    }

    /* renamed from: a */
    public static List<Class<?>> m24670a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m24669a(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    /* renamed from: a */
    private static void m24669a(Class<?> cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces;
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    m24669a(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: a */
    public static void m24668a(Throwable th) {
        th.printStackTrace();
    }

    /* renamed from: a */
    public static boolean m24671a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
