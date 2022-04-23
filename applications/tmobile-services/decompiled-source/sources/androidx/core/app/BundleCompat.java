package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/app/BundleCompat.class */
public final class BundleCompat {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/BundleCompat$BundleCompatBaseImpl.class */
    static class BundleCompatBaseImpl {

        /* renamed from: a */
        private static Method f2826a;

        /* renamed from: b */
        private static boolean f2827b;

        /* renamed from: c */
        private static Method f2828c;

        /* renamed from: d */
        private static boolean f2829d;

        private BundleCompatBaseImpl() {
        }

        /* renamed from: a */
        public static IBinder m19832a(Bundle bundle, String str) {
            if (!f2827b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f2826a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f2827b = true;
            }
            Method method2 = f2826a;
            if (method2 == null) {
                return null;
            }
            try {
                return (IBinder) method2.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                f2826a = null;
                return null;
            }
        }

        /* renamed from: b */
        public static void m19831b(Bundle bundle, String str, IBinder iBinder) {
            if (!f2829d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f2828c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f2829d = true;
            }
            Method method2 = f2828c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f2828c = null;
                }
            }
        }
    }

    private BundleCompat() {
    }

    @Nullable
    /* renamed from: a */
    public static IBinder m19834a(@NonNull Bundle bundle, @Nullable String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : BundleCompatBaseImpl.m19832a(bundle, str);
    }

    /* renamed from: b */
    public static void m19833b(@NonNull Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            BundleCompatBaseImpl.m19831b(bundle, str, iBinder);
        }
    }
}
