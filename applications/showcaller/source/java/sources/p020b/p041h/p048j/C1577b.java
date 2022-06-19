package p020b.p041h.p048j;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: b.h.j.b */
/* loaded from: classes-dex2jar.jar:b/h/j/b.class */
public final class C1577b {

    /* renamed from: a */
    private static Method f6159a;

    /* renamed from: b */
    private static Method f6160b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i >= 24) {
                return;
            }
            try {
                f6160b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                return;
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            f6159a = cls.getMethod("getScript", String.class);
            f6160b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            f6159a = null;
            f6160b = null;
            Log.w("ICUCompat", e2);
        }
    }

    /* renamed from: a */
    private static String m29692a(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f6160b;
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

    /* renamed from: b */
    private static String m29691b(String str) {
        try {
            Method method = f6159a;
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

    /* renamed from: c */
    public static String m29690c(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i < 21) {
            String m29692a = m29692a(locale);
            if (m29692a == null) {
                return null;
            }
            return m29691b(m29692a);
        }
        try {
            return ((Locale) f6160b.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return locale.getScript();
        }
    }
}
