package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.d */
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public final class C0741d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/d$a.class */
    public static final class C0742a {

        /* renamed from: a */
        private static Method f3287a;

        /* renamed from: b */
        private static boolean f3288b;

        /* renamed from: c */
        private static Method f3289c;

        /* renamed from: d */
        private static boolean f3290d;

        private C0742a() {
        }

        /* renamed from: a */
        public static IBinder m44593a(Bundle bundle, String str) {
            if (!f3288b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f3287a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f3288b = true;
            }
            Method method2 = f3287a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    f3287a = null;
                    return null;
                }
            }
            return null;
        }

        /* renamed from: a */
        public static void m44592a(Bundle bundle, String str, IBinder iBinder) {
            if (!f3290d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f3289c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f3290d = true;
            }
            Method method2 = f3289c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    f3289c = null;
                }
            }
        }
    }

    private C0741d() {
    }

    /* renamed from: a */
    public static IBinder m44595a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0742a.m44593a(bundle, str);
    }

    /* renamed from: a */
    public static void m44594a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0742a.m44592a(bundle, str, iBinder);
        }
    }
}
