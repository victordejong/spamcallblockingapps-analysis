package androidx.core.content.res;

import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/ConfigurationHelper.class */
public final class ConfigurationHelper {
    public static int getDensityDpi(@NonNull Resources resources) {
        return Build.VERSION.SDK_INT >= 17 ? resources.getConfiguration().densityDpi : resources.getDisplayMetrics().densityDpi;
    }
}
