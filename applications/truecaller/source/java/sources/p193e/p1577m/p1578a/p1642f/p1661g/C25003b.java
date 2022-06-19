package p193e.p1577m.p1578a.p1642f.p1661g;

import dalvik.system.PathClassLoader;
/* renamed from: e.m.a.f.g.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/g/b.class */
public final class C25003b extends PathClassLoader {
    public C25003b(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.loadClass(str, z);
    }
}
