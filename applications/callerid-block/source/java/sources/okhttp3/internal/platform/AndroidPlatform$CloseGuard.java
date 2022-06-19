package okhttp3.internal.platform;

import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$CloseGuard.class */
final class AndroidPlatform$CloseGuard {
    private final Method getMethod;
    private final Method openMethod;
    private final Method warnIfOpenMethod;

    AndroidPlatform$CloseGuard(Method method, Method method2, Method method3) {
        this.getMethod = method;
        this.openMethod = method2;
        this.warnIfOpenMethod = method3;
    }

    static AndroidPlatform$CloseGuard get() {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls.getMethod("get", new Class[0]);
            Method method5 = cls.getMethod("open", String.class);
            method3 = method4;
            method = cls.getMethod("warnIfOpen", new Class[0]);
            method2 = method5;
        } catch (Exception e) {
            method = null;
            method2 = null;
        }
        return new AndroidPlatform$CloseGuard(method3, method2, method);
    }

    Object createAndOpen(String str) {
        Method method = this.getMethod;
        if (method != null) {
            try {
                Object invoke = method.invoke(null, new Object[0]);
                this.openMethod.invoke(invoke, str);
                return invoke;
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    boolean warnIfOpen(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                this.warnIfOpenMethod.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }
}
