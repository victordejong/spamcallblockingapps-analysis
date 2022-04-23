package com.esotericsoftware.c;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.ProtectionDomain;
import java.util.HashSet;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/c/a.class */
class a extends ClassLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final WeakHashMap<ClassLoader, WeakReference<a>> f18947a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final ClassLoader f18948b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f18949c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Method f18950d;
    private final HashSet<String> e = new HashSet<>();

    static {
        ClassLoader b2 = b(a.class);
        f18948b = b2;
        f18949c = new a(b2);
    }

    private a(ClassLoader classLoader) {
        super(classLoader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Class cls) {
        ClassLoader b2 = b(cls);
        ClassLoader classLoader = f18948b;
        if (classLoader.equals(b2)) {
            if (f18949c == null) {
                synchronized (f18947a) {
                    if (f18949c == null) {
                        f18949c = new a(classLoader);
                    }
                }
            }
            return f18949c;
        }
        WeakHashMap<ClassLoader, WeakReference<a>> weakHashMap = f18947a;
        synchronized (weakHashMap) {
            WeakReference<a> weakReference = weakHashMap.get(b2);
            if (weakReference != null) {
                a aVar = weakReference.get();
                if (aVar != null) {
                    return aVar;
                }
                weakHashMap.remove(b2);
            }
            a aVar2 = new a(b2);
            weakHashMap.put(b2, new WeakReference<>(aVar2));
            return aVar2;
        }
    }

    private static Method a() throws Exception {
        if (f18950d == null) {
            synchronized (f18947a) {
                if (f18950d == null) {
                    f18950d = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, Integer.TYPE, Integer.TYPE, ProtectionDomain.class);
                    try {
                        f18950d.setAccessible(true);
                    } catch (Exception e) {
                    }
                }
            }
        }
        return f18950d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Class cls, Class cls2) {
        if (cls.getPackage() != cls2.getPackage()) {
            return false;
        }
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = cls2.getClassLoader();
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        return classLoader == null ? classLoader2 == null || classLoader2 == systemClassLoader : classLoader2 == null ? classLoader == systemClassLoader : classLoader == classLoader2;
    }

    private Class<?> b(String str, byte[] bArr) throws ClassFormatError {
        try {
            return (Class) a().invoke(getParent(), str, bArr, 0, Integer.valueOf(bArr.length), getClass().getProtectionDomain());
        } catch (Exception e) {
            return defineClass(str, bArr, 0, bArr.length, getClass().getProtectionDomain());
        }
    }

    private static ClassLoader b(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = ClassLoader.getSystemClassLoader();
        }
        return classLoader2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class a(String str) {
        if (!this.e.contains(str)) {
            return null;
        }
        try {
            return loadClass(str, false);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class a(String str, byte[] bArr) throws ClassFormatError {
        this.e.add(str);
        return b(str, bArr);
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        return str.equals(c.class.getName()) ? c.class : str.equals(d.class.getName()) ? d.class : str.equals(b.class.getName()) ? b.class : str.equals(e.class.getName()) ? e.class : super.loadClass(str, z);
    }
}
