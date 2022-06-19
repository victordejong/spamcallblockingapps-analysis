package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public final class C0561e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/e$a.class */
    public static class C0562a {

        /* renamed from: a */
        private static Method f2848a;

        /* renamed from: b */
        private static boolean f2849b;

        /* renamed from: c */
        private static Method f2850c;

        /* renamed from: d */
        private static boolean f2851d;

        /* renamed from: a */
        public static IBinder m33459a(Bundle bundle, String str) {
            if (!f2849b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f2848a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f2849b = true;
            }
            Method method2 = f2848a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    f2848a = null;
                    return null;
                }
            }
            return null;
        }

        /* renamed from: b */
        public static void m33458b(Bundle bundle, String str, IBinder iBinder) {
            if (!f2851d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f2850c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f2851d = true;
            }
            Method method2 = f2850c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f2850c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m33461a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0562a.m33459a(bundle, str);
    }

    /* renamed from: b */
    public static void m33460b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0562a.m33458b(bundle, str, iBinder);
        }
    }
}
