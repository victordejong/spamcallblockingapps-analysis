package com.nll.nativelibs.callrecording;

import android.os.Build;
import com.truecaller.log.AssertionUtil;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/nll/nativelibs/callrecording/DeviceHelper.class */
public class DeviceHelper {
    private static String getDeviceManufacturer() {
        try {
            return Build.MANUFACTURER.toUpperCase(Locale.ENGLISH);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return "";
        }
    }

    private static String getDeviceModel() {
        try {
            return Build.MODEL.toUpperCase(Locale.ENGLISH);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return "";
        }
    }

    public static int getNativeCPUCommand() {
        String upperCase = Build.HARDWARE.toUpperCase(Locale.ENGLISH);
        String deviceManufacturer = getDeviceManufacturer();
        String deviceModel = getDeviceModel();
        if (Build.BOARD.equalsIgnoreCase("universal9810") || Build.BOARD.equalsIgnoreCase("universal8895") || Build.BOARD.equalsIgnoreCase("universal8890") || Build.BOARD.equalsIgnoreCase("universal7880") || upperCase.equals("KIRIN970") || upperCase.equals("HI6250")) {
            return 5;
        }
        if (upperCase.startsWith("MT67")) {
            return (deviceManufacturer.equals("LENOVO") || deviceManufacturer.equals("HMD GLOBAL")) ? 7 : 5;
        } else if (!upperCase.equalsIgnoreCase("qcom")) {
            return 7;
        } else {
            if (deviceManufacturer.equals("SAMSUNG")) {
                return Build.VERSION.SDK_INT == 25 ? 7 : 6;
            } else if (deviceManufacturer.equals("SONY") && (deviceModel.equalsIgnoreCase("G8441") || deviceModel.equalsIgnoreCase("G8341"))) {
                return 8;
            } else {
                if (!deviceManufacturer.equals("MOTOROLA") || !isNexus()) {
                }
                return 7;
            }
        }
    }

    public static boolean isAndroid71FixRequired() {
        String str = Build.VERSION.RELEASE;
        return str.equals("7.1.1") || str.equals("7.1.2");
    }

    public static boolean isBlackListedFromNativeAudioRecord() {
        return getDeviceManufacturer().equals("SAMSUNG") && getDeviceModel().startsWith("SM-T8");
    }

    private static boolean isHuaweiAndroid8AndAbove() {
        return getDeviceManufacturer().equals("HUAWEI") && Build.VERSION.SDK_INT >= 26;
    }

    private static boolean isHuaweiWithApi3() {
        boolean z = true;
        if (isHuaweiAndroid8AndAbove()) {
            return true;
        }
        if (!getDeviceManufacturer().equals("HUAWEI")) {
            return false;
        }
        if (PropManager.getInt("ro.build.hw_emui_api_level") < 10) {
            z = false;
        }
        return z;
    }

    private static boolean isMediaTekCPUAndAndroid8OrAbove() {
        return Build.VERSION.SDK_INT >= 26 && Build.HARDWARE.toUpperCase(Locale.ENGLISH).startsWith("MT");
    }

    private static boolean isMotorolaWithApi3() {
        return getDeviceManufacturer().equals("MOTOROLA") && Build.VERSION.SDK_INT >= 26 && !isNexus();
    }

    private static boolean isNexus() {
        return getDeviceModel().contains("NEXUS");
    }

    public static boolean mustUseApi3() {
        return isHuaweiWithApi3() || isMediaTekCPUAndAndroid8OrAbove() || isMotorolaWithApi3();
    }

    public static void sleepForAndroid71() {
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static boolean useNativeAudioRecord() {
        boolean z = false;
        if (isBlackListedFromNativeAudioRecord()) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        boolean z2 = i == 26 || i == 27;
        boolean z3 = i == 25;
        String str = Build.BOARD;
        String deviceManufacturer = getDeviceManufacturer();
        String upperCase = Build.HARDWARE.toUpperCase(Locale.ENGLISH);
        String deviceModel = getDeviceModel();
        boolean equals = deviceManufacturer.equals("SAMSUNG");
        boolean equalsIgnoreCase = str.equalsIgnoreCase("universal9810");
        boolean equalsIgnoreCase2 = str.equalsIgnoreCase("universal8895");
        boolean equalsIgnoreCase3 = str.equalsIgnoreCase("universal8890");
        boolean equalsIgnoreCase4 = str.equalsIgnoreCase("universal7880");
        boolean equalsIgnoreCase5 = upperCase.equalsIgnoreCase("qcom");
        boolean z4 = equalsIgnoreCase5 && equals && z3;
        boolean z5 = z2 && equals && (equalsIgnoreCase || equalsIgnoreCase2 || equalsIgnoreCase3 || equalsIgnoreCase4 || equalsIgnoreCase5);
        boolean z6 = deviceManufacturer.equals("MOTOROLA") && equalsIgnoreCase5 && z2 && !isNexus();
        boolean z7 = z2 && (deviceManufacturer.equals("HUAWEI") && !isNexus()) && (upperCase.equals("KIRIN970") || upperCase.equals("HI6250"));
        boolean z8 = upperCase.startsWith("MT67") && (z2 || z3);
        boolean z9 = deviceManufacturer.equals("SONY") && equalsIgnoreCase5 && z2 && (deviceModel.equalsIgnoreCase("G8441") || deviceModel.equalsIgnoreCase("G8341"));
        if (z5 || z4 || z7 || z8 || z6 || z9) {
            z = true;
        }
        return z;
    }
}
