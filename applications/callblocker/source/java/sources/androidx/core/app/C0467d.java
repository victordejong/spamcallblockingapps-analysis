package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.d */
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public final class C0467d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/d$a.class */
    public static class C0468a {

        /* renamed from: a */
        private static Method f1778a;

        /* renamed from: b */
        private static boolean f1779b;

        /* renamed from: c */
        private static Method f1780c;

        /* renamed from: d */
        private static boolean f1781d;

        /* renamed from: a */
        public static IBinder m20803a(Bundle bundle, String str) {
            IBinder iBinder;
            if (!f1779b) {
                try {
                    f1778a = Bundle.class.getMethod("getIBinder", String.class);
                    f1778a.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f1779b = true;
            }
            if (f1778a != null) {
                try {
                    iBinder = (IBinder) f1778a.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    f1778a = null;
                }
                return iBinder;
            }
            iBinder = null;
            return iBinder;
        }

        /* renamed from: a */
        public static void m20802a(Bundle bundle, String str, IBinder iBinder) {
            if (!f1781d) {
                try {
                    f1780c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1780c.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f1781d = true;
            }
            if (f1780c != null) {
                try {
                    f1780c.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f1780c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m20805a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0468a.m20803a(bundle, str);
    }

    /* renamed from: a */
    public static void m20804a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0468a.m20802a(bundle, str, iBinder);
        }
    }
}
