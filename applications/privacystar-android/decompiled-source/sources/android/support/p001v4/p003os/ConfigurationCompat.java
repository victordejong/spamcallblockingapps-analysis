package android.support.p001v4.p003os;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: android.support.v4.os.ConfigurationCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ConfigurationCompat.class */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? LocaleListCompat.wrap(configuration.getLocales()) : LocaleListCompat.create(configuration.locale);
    }
}
