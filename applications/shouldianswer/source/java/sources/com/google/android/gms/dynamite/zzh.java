package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzh.class */
final class zzh extends PathClassLoader {
    public zzh(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected final Class<?> loadClass(String str, boolean z) {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.loadClass(str, z);
    }
}
