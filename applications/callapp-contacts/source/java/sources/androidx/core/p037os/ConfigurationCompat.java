package androidx.core.p037os;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: androidx.core.os.ConfigurationCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/ConfigurationCompat.class */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static C0859c getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? C0859c.m44296a(configuration.getLocales()) : C0859c.m44294a(configuration.locale);
    }
}
