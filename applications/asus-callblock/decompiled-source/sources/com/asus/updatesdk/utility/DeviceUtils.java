package com.asus.updatesdk.utility;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/DeviceUtils.class */
public class DeviceUtils {
    public static final String SYSPROP_ASUS_SKU = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.BUILD_ASUS_SKU);
    public static final String SYSPROP_ASUS_VERSION = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.BUILD_ASUS_VERSION);
    public static final String SYSPROP_BUILD_PRODUCT = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.BUILD_PRODUCT);
    public static final String SYSPROP_PRODUCT_DEVICE = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.PRODUCT_DEVICE);
    public static final String SYSPROP_CPU_ABILIST = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.CPU_ABILIST);
    public static final String SYSPROP_CPU_ABI = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.CPU_ABI);
    public static final String SYSPROP_CPU_ABI2 = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.CPU_ABI2);

    private static boolean a(String... strArr) {
        boolean z;
        String str = SystemPropertiesReflection.get(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, null);
        if (str != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                }
                if (str.toLowerCase(Locale.US).startsWith(strArr[i].toLowerCase(Locale.US))) {
                    z = true;
                    break;
                }
                i++;
            }
        } else {
            z = false;
        }
        return z;
    }

    public static boolean checkATTSku() {
        return a("ATT");
    }

    public static boolean checkAsusDevice() {
        return Build.BRAND.equalsIgnoreCase("asus") || (Build.MANUFACTURER.equalsIgnoreCase("asus") && !Build.BRAND.equalsIgnoreCase("google"));
    }

    public static boolean checkCnSku() {
        return a("CN", "CTA", "CUCC", "CMCC");
    }

    public static boolean isVoiceCapable(Context context) {
        boolean z = false;
        try {
            z = context.getResources().getBoolean(Resources.getSystem().getIdentifier("config_voice_capable", "bool", "android"));
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
        return z;
    }
}
