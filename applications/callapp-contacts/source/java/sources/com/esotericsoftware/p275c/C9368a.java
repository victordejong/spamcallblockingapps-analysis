package com.esotericsoftware.p275c;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.ProtectionDomain;
import java.util.HashSet;
import java.util.WeakHashMap;
/* renamed from: com.esotericsoftware.c.a */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/c/a.class */
class C9368a extends ClassLoader {

    /* renamed from: a */
    private static final WeakHashMap<ClassLoader, WeakReference<C9368a>> f32194a = new WeakHashMap<>();

    /* renamed from: b */
    private static final ClassLoader f32195b;

    /* renamed from: c */
    private static volatile C9368a f32196c;

    /* renamed from: d */
    private static volatile Method f32197d;

    /* renamed from: e */
    private final HashSet<String> f32198e = new HashSet<>();

    static {
        ClassLoader m24486b = m24486b(C9368a.class);
        f32195b = m24486b;
        f32196c = new C9368a(m24486b);
    }

    private C9368a(ClassLoader classLoader) {
        super(classLoader);
    }

    /* renamed from: a */
    public static C9368a m24490a(Class cls) {
        ClassLoader m24486b = m24486b(cls);
        ClassLoader classLoader = f32195b;
        if (classLoader.equals(m24486b)) {
            if (f32196c == null) {
                synchronized (f32194a) {
                    if (f32196c == null) {
                        f32196c = new C9368a(classLoader);
                    }
                }
            }
            return f32196c;
        }
        WeakHashMap<ClassLoader, WeakReference<C9368a>> weakHashMap = f32194a;
        synchronized (weakHashMap) {
            WeakReference<C9368a> weakReference = weakHashMap.get(m24486b);
            if (weakReference != null) {
                C9368a c9368a = weakReference.get();
                if (c9368a != null) {
                    return c9368a;
                }
                weakHashMap.remove(m24486b);
            }
            C9368a c9368a2 = new C9368a(m24486b);
            weakHashMap.put(m24486b, new WeakReference<>(c9368a2));
            return c9368a2;
        }
    }

    /* renamed from: a */
    private static Method m24491a() throws Exception {
        if (f32197d == null) {
            synchronized (f32194a) {
                if (f32197d == null) {
                    f32197d = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, Integer.TYPE, Integer.TYPE, ProtectionDomain.class);
                    try {
                        f32197d.setAccessible(true);
                    } catch (Exception e) {
                    }
                }
            }
        }
        return f32197d;
    }

    /* renamed from: a */
    public static boolean m24489a(Class cls, Class cls2) {
        if (cls.getPackage() != cls2.getPackage()) {
            return false;
        }
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = cls2.getClassLoader();
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        return classLoader == null ? classLoader2 == null || classLoader2 == systemClassLoader : classLoader2 == null ? classLoader == systemClassLoader : classLoader == classLoader2;
    }

    /* renamed from: b */
    private Class<?> m24485b(String str, byte[] bArr) throws ClassFormatError {
        try {
            return (Class) m24491a().invoke(getParent(), str, bArr, 0, Integer.valueOf(bArr.length), getClass().getProtectionDomain());
        } catch (Exception e) {
            return defineClass(str, bArr, 0, bArr.length, getClass().getProtectionDomain());
        }
    }

    /* renamed from: b */
    private static ClassLoader m24486b(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = ClassLoader.getSystemClassLoader();
        }
        return classLoader2;
    }

    /* renamed from: a */
    public final Class m24488a(String str) {
        if (this.f32198e.contains(str)) {
            try {
                return loadClass(str, false);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    /* renamed from: a */
    public final Class m24487a(String str, byte[] bArr) throws ClassFormatError {
        this.f32198e.add(str);
        return m24485b(str, bArr);
    }

    @Override // java.lang.ClassLoader
    protected Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        return str.equals(AbstractC9370c.class.getName()) ? AbstractC9370c.class : str.equals(AbstractC9371d.class.getName()) ? AbstractC9371d.class : str.equals(AbstractC9369b.class.getName()) ? AbstractC9369b.class : str.equals(AbstractC9372e.class.getName()) ? AbstractC9372e.class : super.loadClass(str, z);
    }
}
