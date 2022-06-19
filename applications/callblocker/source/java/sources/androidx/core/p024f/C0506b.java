package androidx.core.p024f;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: androidx.core.f.b */
/* loaded from: classes-dex2jar.jar:androidx/core/f/b.class */
public final class C0506b {

    /* renamed from: a */
    private static Method f1924a;

    /* renamed from: b */
    private static Method f1925b;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            try {
                f1925b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
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
            f1924a = cls.getMethod("getScript", String.class);
            f1925b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            f1924a = null;
            f1925b = null;
            Log.w("ICUCompat", e2);
        }
    }

    /* renamed from: a */
    private static String m20671a(String str) {
        String str2;
        try {
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        if (f1924a != null) {
            str2 = (String) f1924a.invoke(null, str);
            return str2;
        }
        str2 = null;
        return str2;
    }

    /* renamed from: a */
    public static String m20670a(Locale locale) {
        String script;
        if (Build.VERSION.SDK_INT >= 24) {
            script = ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        } else if (Build.VERSION.SDK_INT >= 21) {
            try {
                script = ((Locale) f1925b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException e) {
                Log.w("ICUCompat", e);
                script = locale.getScript();
                return script;
            } catch (InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                script = locale.getScript();
                return script;
            }
        } else {
            String m20669b = m20669b(locale);
            script = null;
            if (m20669b != null) {
                script = m20671a(m20669b);
            }
        }
        return script;
    }

    /* renamed from: b */
    private static String m20669b(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f1925b != null) {
                locale2 = (String) f1925b.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return locale2;
    }
}
