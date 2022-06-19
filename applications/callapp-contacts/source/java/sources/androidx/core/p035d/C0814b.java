package androidx.core.p035d;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: androidx.core.d.b */
/* loaded from: classes-dex2jar.jar:androidx/core/d/b.class */
public final class C0814b {

    /* renamed from: a */
    private static Method f3526a;

    /* renamed from: b */
    private static Method f3527b;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            try {
                f3527b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                return;
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls == null) {
                return;
            }
            f3526a = cls.getMethod("getScript", String.class);
            f3527b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            f3526a = null;
            f3527b = null;
            Log.w("ICUCompat", e2);
        }
    }

    private C0814b() {
    }

    /* renamed from: a */
    private static String m44425a(String str) {
        try {
            Method method = f3526a;
            if (method == null) {
                return null;
            }
            return (String) method.invoke(null, str);
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static String m44424a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT < 21) {
            String m44423b = m44423b(locale);
            if (m44423b == null) {
                return null;
            }
            return m44425a(m44423b);
        }
        try {
            return ((Locale) f3527b.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return locale.getScript();
        }
    }

    /* renamed from: b */
    private static String m44423b(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f3527b;
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
