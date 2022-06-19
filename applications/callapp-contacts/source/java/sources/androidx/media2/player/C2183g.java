package androidx.media2.player;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.media2.player.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/g.class */
final class C2183g {

    /* renamed from: a */
    private static final Object f8600a = new Object();

    /* renamed from: b */
    private static Object f8601b;

    /* renamed from: c */
    private static Method f8602c;

    /* renamed from: d */
    private static Method f8603d;

    /* renamed from: e */
    private static Method f8604e;

    private C2183g() {
    }

    /* renamed from: a */
    public static void m41194a(FileDescriptor fileDescriptor, long j) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, j, OsConstants.SEEK_SET);
                return;
            } catch (Exception e) {
                throw new IOException("Failed to seek the file descriptor", e);
            }
        }
        try {
            Object obj = f8600a;
            synchronized (obj) {
                synchronized (obj) {
                    if (f8601b == null) {
                        Class<?> cls = Class.forName("libcore.io.Posix");
                        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        f8602c = cls.getMethod("lseek", FileDescriptor.class, Long.TYPE, Integer.TYPE);
                        f8603d = cls.getMethod("dup", FileDescriptor.class);
                        f8604e = cls.getMethod(EventConstants.CLOSE, FileDescriptor.class);
                        f8601b = declaredConstructor.newInstance(new Object[0]);
                    }
                }
                f8602c.invoke(r0, fileDescriptor, Long.valueOf(j), 0);
            }
            Object obj2 = f8601b;
            f8602c.invoke(obj2, fileDescriptor, Long.valueOf(j), 0);
        } catch (Exception e2) {
            throw new IOException("Failed to seek the file descriptor", e2);
        }
    }
}
