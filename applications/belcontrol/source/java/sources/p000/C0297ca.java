package p000;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: ca */
/* loaded from: classes-dex2jar.jar:ca.class */
public final class C0297ca {

    /* renamed from: a */
    public static Method f2213a;

    /* renamed from: b */
    public static Method f2214b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i >= 24) {
                return;
            }
            try {
                f2214b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
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
            f2213a = cls.getMethod("getScript", String.class);
            f2214b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            f2213a = null;
            f2214b = null;
            Log.w("ICUCompat", e2);
        }
    }

    /* renamed from: a */
    public static String m5405a(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f2214b;
            if (method != null) {
                return (String) method.invoke(null, locale2);
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            Log.w("ICUCompat", e);
        }
        return locale2;
    }

    /* renamed from: b */
    public static String m5404b(String str) {
        try {
            Method method = f2213a;
            if (method == null) {
                return null;
            }
            return (String) method.invoke(null, str);
        } catch (IllegalAccessException | InvocationTargetException e) {
            Log.w("ICUCompat", e);
            return null;
        }
    }

    /* renamed from: c */
    public static String m5403c(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i >= 21) {
            try {
                return ((Locale) f2214b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.w("ICUCompat", e);
                return locale.getScript();
            }
        }
        String m5405a = m5405a(locale);
        if (m5405a == null) {
            return null;
        }
        return m5404b(m5405a);
    }
}
