package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public final class C0247e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/e$a.class */
    public static class C0248a {

        /* renamed from: a */
        private static Method f1592a;

        /* renamed from: b */
        private static boolean f1593b;

        /* renamed from: c */
        private static Method f1594c;

        /* renamed from: d */
        private static boolean f1595d;

        /* renamed from: a */
        public static IBinder m13651a(Bundle bundle, String str) {
            if (!f1593b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f1592a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f1593b = true;
            }
            Method method2 = f1592a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    f1592a = null;
                    return null;
                }
            }
            return null;
        }

        /* renamed from: b */
        public static void m13650b(Bundle bundle, String str, IBinder iBinder) {
            if (!f1595d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1594c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f1595d = true;
            }
            Method method2 = f1594c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f1594c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m13653a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0248a.m13651a(bundle, str);
    }

    /* renamed from: b */
    public static void m13652b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0248a.m13650b(bundle, str, iBinder);
        }
    }
}
