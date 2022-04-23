package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/core/os/ConfigurationCompat.class */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static c getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? c.a(configuration.getLocales()) : c.a(configuration.locale);
    }
}
