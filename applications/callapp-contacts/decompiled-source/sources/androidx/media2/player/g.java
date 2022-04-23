package androidx.media2.player;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/g.class */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4449a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Object f4450b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f4451c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f4452d;
    private static Method e;

    private g() {
    }

    public static void a(FileDescriptor fileDescriptor, long j) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, j, OsConstants.SEEK_SET);
            } catch (Exception e2) {
                throw new IOException("Failed to seek the file descriptor", e2);
            }
        } else {
            try {
                Object obj = f4449a;
                synchronized (obj) {
                    synchronized (obj) {
                        if (f4450b == null) {
                            Class<?> cls = Class.forName("libcore.io.Posix");
                            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                            declaredConstructor.setAccessible(true);
                            f4451c = cls.getMethod("lseek", FileDescriptor.class, Long.TYPE, Integer.TYPE);
                            f4452d = cls.getMethod("dup", FileDescriptor.class);
                            e = cls.getMethod(EventConstants.CLOSE, FileDescriptor.class);
                            f4450b = declaredConstructor.newInstance(new Object[0]);
                        }
                    }
                    f4451c.invoke(r0, fileDescriptor, Long.valueOf(j), 0);
                }
                Object obj2 = f4450b;
                f4451c.invoke(obj2, fileDescriptor, Long.valueOf(j), 0);
            } catch (Exception e3) {
                throw new IOException("Failed to seek the file descriptor", e3);
            }
        }
    }
}
