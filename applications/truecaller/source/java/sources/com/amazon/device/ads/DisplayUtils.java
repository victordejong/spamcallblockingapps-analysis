package com.amazon.device.ads;

import android.content.Context;
import android.provider.Settings;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DisplayUtils.class */
public class DisplayUtils {
    private static int[][] rotationArray = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    public static int determineCanonicalScreenOrientation() {
        Context context = AdRegistration.getContext();
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        int i2 = 0;
        if (i != 1 ? i != 2 || rotation == 1 || rotation == 3 : rotation == 0 || rotation == 2) {
            i2 = 1;
        }
        return rotationArray[i2 ^ 1][rotation];
    }

    public static int determineSimpleOrientation() {
        int i = AdRegistration.getContext().getResources().getConfiguration().orientation;
        if (i == 1) {
            return 1;
        }
        return i == 2 ? 2 : 0;
    }

    public static boolean isRotationLocked() {
        boolean z = false;
        try {
            if (Settings.System.getInt(AdRegistration.getContext().getContentResolver(), "accelerometer_rotation") == 1) {
                z = true;
            }
        } catch (Settings.SettingNotFoundException e) {
        }
        return !z;
    }
}
