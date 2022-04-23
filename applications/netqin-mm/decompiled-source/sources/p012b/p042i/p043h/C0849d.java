package p012b.p042i.p043h;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: b.i.h.d */
/* loaded from: classes-dex2jar.jar:b/i/h/d.class */
public final class C0849d {

    /* renamed from: b.i.h.d$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/d$a.class */
    public static class C0850a {

        /* renamed from: a */
        public static Method f3972a;

        /* renamed from: b */
        public static boolean f3973b;

        /* renamed from: c */
        public static Method f3974c;

        /* renamed from: d */
        public static boolean f3975d;

        /* renamed from: a */
        public static IBinder m35781a(Bundle bundle, String str) {
            if (!f3973b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f3972a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f3973b = true;
            }
            Method method2 = f3972a;
            if (method2 == null) {
                return null;
            }
            try {
                return (IBinder) method2.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                f3972a = null;
                return null;
            }
        }

        /* renamed from: a */
        public static void m35780a(Bundle bundle, String str, IBinder iBinder) {
            if (!f3975d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f3974c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f3975d = true;
            }
            Method method2 = f3974c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f3974c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m35783a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0850a.m35781a(bundle, str);
    }

    /* renamed from: a */
    public static void m35782a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0850a.m35780a(bundle, str, iBinder);
        }
    }
}
