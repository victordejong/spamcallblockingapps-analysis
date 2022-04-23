package p012b.p076s.p112c.p114g;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* renamed from: b.s.c.g.g */
/* loaded from: classes-dex2jar.jar:b/s/c/g/g.class */
public final class C1770g {

    /* renamed from: a */
    public static final Object f7137a = new Object();

    /* renamed from: b */
    public static Object f7138b;

    /* renamed from: c */
    public static Method f7139c;

    /* renamed from: a */
    public static void m32141a() throws Exception {
        synchronized (f7137a) {
            if (f7138b == null) {
                Class<?> cls = Class.forName("libcore.io.Posix");
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                f7139c = cls.getMethod("lseek", FileDescriptor.class, Long.TYPE, Integer.TYPE);
                cls.getMethod("dup", FileDescriptor.class);
                cls.getMethod("close", FileDescriptor.class);
                f7138b = declaredConstructor.newInstance(new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m32140a(FileDescriptor fileDescriptor, long j) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            m32138c(fileDescriptor, j);
        } else {
            m32139b(fileDescriptor, j);
        }
    }

    /* renamed from: b */
    public static void m32139b(FileDescriptor fileDescriptor, long j) throws IOException {
        Object obj;
        Method method;
        try {
            synchronized (f7137a) {
                m32141a();
                obj = f7138b;
                method = f7139c;
            }
            method.invoke(obj, fileDescriptor, Long.valueOf(j), 0);
        } catch (Exception e) {
            throw new IOException("Failed to seek the file descriptor", e);
        }
    }

    /* renamed from: c */
    public static void m32138c(FileDescriptor fileDescriptor, long j) throws IOException {
        try {
            Os.lseek(fileDescriptor, j, OsConstants.SEEK_SET);
        } catch (Exception e) {
            throw new IOException("Failed to seek the file descriptor", e);
        }
    }
}
