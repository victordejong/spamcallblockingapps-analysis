package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public final class d {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/d$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static Method f1720a;

        /* renamed from: b  reason: collision with root package name */
        private static boolean f1721b;

        /* renamed from: c  reason: collision with root package name */
        private static Method f1722c;

        /* renamed from: d  reason: collision with root package name */
        private static boolean f1723d;

        private a() {
        }

        public static IBinder a(Bundle bundle, String str) {
            if (!f1721b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f1720a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f1721b = true;
            }
            Method method2 = f1720a;
            if (method2 == null) {
                return null;
            }
            try {
                return (IBinder) method2.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                f1720a = null;
                return null;
            }
        }

        public static void a(Bundle bundle, String str, IBinder iBinder) {
            if (!f1723d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1722c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f1723d = true;
            }
            Method method2 = f1722c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    f1722c = null;
                }
            }
        }
    }

    private d() {
    }

    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : a.a(bundle, str);
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.a(bundle, str, iBinder);
        }
    }
}
