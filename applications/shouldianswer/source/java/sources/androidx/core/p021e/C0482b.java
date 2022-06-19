package androidx.core.p021e;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: androidx.core.e.b */
/* loaded from: classes-dex2jar.jar:androidx/core/e/b.class */
public final class C0482b {

    /* renamed from: a */
    private static Method f1773a;

    /* renamed from: b */
    private static Method f1774b;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            try {
                f1774b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
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
            f1773a = cls.getMethod("getScript", String.class);
            f1774b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            f1773a = null;
            f1774b = null;
            Log.w("ICUCompat", e2);
        }
    }

    /* renamed from: a */
    private static String m6491a(String str) {
        try {
            if (f1773a == null) {
                return null;
            }
            return (String) f1773a.invoke(null, str);
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static String m6490a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT < 21) {
            String m6489b = m6489b(locale);
            if (m6489b == null) {
                return null;
            }
            return m6491a(m6489b);
        }
        try {
            return ((Locale) f1774b.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return locale.getScript();
        }
    }

    /* renamed from: b */
    private static String m6489b(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f1774b != null) {
                return (String) f1774b.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return locale2;
    }
}
