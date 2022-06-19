package p000;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: ke1 */
/* loaded from: classes3-dex2jar.jar:ke1.class */
public class ke1 {
    /* renamed from: a */
    public static String m1404a(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("callcontrol.language_key", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            str = Resources.getSystem().getConfiguration().locale.getLanguage();
        }
        return str;
    }

    /* renamed from: b */
    public static Locale m1403b(Resources resources) {
        Configuration configuration = resources.getConfiguration();
        return Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
    }

    @SuppressLint({"ApplySharedPref"})
    /* renamed from: c */
    public static void m1402c(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString("callcontrol.language_key", str).commit();
    }

    /* renamed from: d */
    public static Context m1401d(Context context) {
        return m1399f(context, m1404a(context));
    }

    /* renamed from: e */
    public static Context m1400e(Context context, String str) {
        m1402c(context, str);
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = Resources.getSystem().getConfiguration().locale.getLanguage();
        }
        return m1399f(context, str2);
    }

    /* renamed from: f */
    public static Context m1399f(Context context, String str) {
        String[] split = TextUtils.split(str, "_");
        Locale locale = new Locale(split[0], split.length > 1 ? split[1] : Locale.getDefault().getCountry().toUpperCase());
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration);
    }
}
