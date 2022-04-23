package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;
/* renamed from: com.google.android.gms.dynamite.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/a.class */
final class C1634a extends PathClassLoader {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1634a(String str, ClassLoader classLoader) {
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
