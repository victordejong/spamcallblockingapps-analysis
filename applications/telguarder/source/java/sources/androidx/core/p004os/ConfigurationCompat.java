package androidx.core.p004os;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: androidx.core.os.ConfigurationCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/ConfigurationCompat.class */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? LocaleListCompat.wrap(configuration.getLocales()) : LocaleListCompat.create(configuration.locale);
    }
}
