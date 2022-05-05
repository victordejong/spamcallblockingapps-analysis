package android.support.p001v4.content.res;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.content.res.ConfigurationHelper */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/res/ConfigurationHelper.class */
public final class ConfigurationHelper {
    private ConfigurationHelper() {
    }

    public static int getDensityDpi(@NonNull Resources resources) {
        return Build.VERSION.SDK_INT >= 17 ? resources.getConfiguration().densityDpi : resources.getDisplayMetrics().densityDpi;
    }
}
