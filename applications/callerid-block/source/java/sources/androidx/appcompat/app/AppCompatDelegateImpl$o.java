package androidx.appcompat.app;

import android.content.res.Configuration;
import android.os.LocaleList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$o.class */
class AppCompatDelegateImpl$o {
    /* renamed from: a */
    static void m14940a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (!locales.equals(locales2)) {
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }
}
