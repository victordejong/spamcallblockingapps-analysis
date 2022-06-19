package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/ICUCompat.class */
public final class ICUCompat {
    private static final String TAG = "ICUCompat";
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 24) {
                return;
            }
            try {
                sAddLikelySubtagsMethod = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
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
            sGetScriptMethod = cls.getMethod("getScript", String.class);
            sAddLikelySubtagsMethod = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e2) {
            sGetScriptMethod = null;
            sAddLikelySubtagsMethod = null;
            Log.w(TAG, e2);
        }
    }

    private ICUCompat() {
    }

    private static String addLikelySubtags(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = sAddLikelySubtagsMethod;
            if (method != null) {
                return (String) method.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
        }
        return locale2;
    }

    private static String getScript(String str) {
        try {
            Method method = sGetScriptMethod;
            if (method == null) {
                return null;
            }
            return (String) method.invoke(null, str);
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
            return null;
        }
    }

    public static String maximizeAndGetScript(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT < 21) {
            String addLikelySubtags = addLikelySubtags(locale);
            if (addLikelySubtags == null) {
                return null;
            }
            return getScript(addLikelySubtags);
        }
        try {
            return ((Locale) sAddLikelySubtagsMethod.invoke(null, locale)).getScript();
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return locale.getScript();
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
            return locale.getScript();
        }
    }
}
