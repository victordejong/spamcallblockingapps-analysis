package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Logger;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/PackageManagerHelper.class */
public class PackageManagerHelper {
    public static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    public static boolean isComponentExplicitlyEnabled(Context context, Class<?> cls) {
        return isComponentExplicitlyEnabled(context, cls.getName());
    }

    public static boolean isComponentExplicitlyEnabled(Context context, String str) {
        boolean z = true;
        if (context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, str)) != 1) {
            z = false;
        }
        return z;
    }

    public static void setComponentEnabled(@NonNull Context context, @NonNull Class<?> cls, boolean z) {
        String str = "enabled";
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            Logger.get().debug(TAG, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            Logger logger = Logger.get();
            String str2 = TAG;
            String name = cls.getName();
            if (!z) {
                str = "disabled";
            }
            logger.debug(str2, String.format("%s could not be %s", name, str), e);
        }
    }
}
