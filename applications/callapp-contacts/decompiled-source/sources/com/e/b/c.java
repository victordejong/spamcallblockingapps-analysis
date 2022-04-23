package com.e.b;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/e/b/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Object[] f18878a = new Object[0];

    /* renamed from: b  reason: collision with root package name */
    static final Class<?>[] f18879b = new Class[0];

    c() {
    }

    public static List<Class<?>> a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    private static void a(Class<?> cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces;
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    a(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static void a(Throwable th) {
        th.printStackTrace();
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
