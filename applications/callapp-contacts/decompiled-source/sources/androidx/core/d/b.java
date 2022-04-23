package androidx.core.d;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/d/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static Method f1864a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f1865b;

    static {
        if (Build.VERSION.SDK_INT < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    f1864a = cls.getMethod("getScript", String.class);
                    f1865b = cls.getMethod("addLikelySubtags", String.class);
                }
            } catch (Exception e) {
                f1864a = null;
                f1865b = null;
                Log.w("ICUCompat", e);
            }
        } else if (Build.VERSION.SDK_INT < 24) {
            try {
                f1865b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    private b() {
    }

    private static String a(String str) {
        try {
            Method method = f1864a;
            if (method != null) {
                return (String) method.invoke(null, str);
            }
            return null;
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return null;
        }
    }

    public static String a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((Locale) f1865b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException e) {
                Log.w("ICUCompat", e);
                return locale.getScript();
            } catch (InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                return locale.getScript();
            }
        } else {
            String b2 = b(locale);
            if (b2 != null) {
                return a(b2);
            }
            return null;
        }
    }

    private static String b(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f1865b;
            if (method != null) {
                return (String) method.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return locale2;
    }
}
