package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;
/* renamed from: com.google.android.gms.dynamite.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/a.class */
final class C12141a extends PathClassLoader {
    public C12141a(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.loadClass(str, z);
    }
}
