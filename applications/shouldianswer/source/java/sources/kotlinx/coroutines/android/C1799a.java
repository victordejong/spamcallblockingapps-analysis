package kotlinx.coroutines.android;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.android.a */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/a.class */
public final class C1799a {

    /* renamed from: a */
    private static final Method f4480a;

    static {
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            C1694h.m3122a((Object) declaredMethod, "it");
            boolean z = false;
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                z = false;
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    z = true;
                }
            }
            if (z) {
                method = declaredMethod;
            }
        } catch (Throwable th) {
        }
        f4480a = method;
    }
}
