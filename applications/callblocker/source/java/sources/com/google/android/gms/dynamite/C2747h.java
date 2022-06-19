package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;
/* renamed from: com.google.android.gms.dynamite.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/h.class */
final class C2747h extends PathClassLoader {
    public C2747h(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected final Class<?> loadClass(String str, boolean z) {
        Class<?> loadClass;
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                loadClass = findClass(str);
            } catch (ClassNotFoundException e) {
            }
            return loadClass;
        }
        loadClass = super.loadClass(str, z);
        return loadClass;
    }
}
