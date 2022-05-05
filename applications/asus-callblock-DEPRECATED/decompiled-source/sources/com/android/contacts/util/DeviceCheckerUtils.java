package com.android.contacts.util;

import android.content.Context;
import android.os.Build;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/DeviceCheckerUtils.class */
public class DeviceCheckerUtils {
    private static final String TAG = "DeviceCheckerUtils";
    public static DEVICE mDevice = DEVICE.D_NULL;
    private static final boolean isUserBuildImage = Build.TYPE.equals("user");
    public static String[] sFactoryName = {"intel", "asus", "garmin-asus", "ASUSTeK COMPUTER INC."};

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/DeviceCheckerUtils$DEVICE.class */
    public enum DEVICE {
        D_NULL,
        D_PHONE_SERIES_START,
        D_A500CG,
        D_A500CG2,
        D_A501CG,
        D_A501CG2,
        D_A502CG,
        D_A500KL,
        D_A600CG,
        D_A601CG,
        D_ZE500CL,
        D_ZE550ML,
        D_ZE551ML,
        D_NEXUS7,
        D_A400CG,
        D_FE375CL,
        D_PAD_SERIES_END
    }

    public static boolean isGATrackerEnableDevice() {
        boolean z;
        DEVICE device = DEVICE.D_NULL;
        String str = Build.DEVICE;
        String str2 = Build.MODEL;
        if (!isUserBuildImage) {
            Log.d(TAG, "device=" + Build.DEVICE);
        }
        if (!isUserBuildImage) {
            Log.d(TAG, "model=" + Build.MODEL);
        }
        DEVICE device2 = device;
        if (device == DEVICE.D_NULL) {
            device2 = device;
            if (matchKeyWords(str, "Z008")) {
                device2 = DEVICE.D_ZE550ML;
            }
        }
        if (!isUserBuildImage) {
            Log.d(TAG, "DEVICE=" + device2);
        }
        if (!isUserBuildImage) {
            Log.d(TAG, String.format("ManuFacturer=%s", Build.MANUFACTURER));
        }
        if (device2 != DEVICE.D_NULL) {
            int length = sFactoryName.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (Build.MANUFACTURER.equalsIgnoreCase(sFactoryName[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    public static boolean isSupportedDevice(Context context) {
        boolean z = context.getResources().getBoolean(2130968601);
        Log.d(TAG, "is Device Supported By Target Resolution = " + z);
        return z;
    }

    public static boolean isTouchPalSdkEnable() {
        boolean z;
        String str = Build.DEVICE;
        String str2 = Build.MODEL;
        Log.d(TAG, "device=" + Build.DEVICE);
        Log.d(TAG, "model=" + Build.MODEL);
        if (mDevice == DEVICE.D_NULL) {
            if (str.equalsIgnoreCase("ASUS_T00F")) {
                mDevice = DEVICE.D_A500CG;
            } else if (str.equalsIgnoreCase("ASUS_T00F1")) {
                mDevice = DEVICE.D_A500CG2;
            } else if (str.equalsIgnoreCase("ASUS_T00J")) {
                mDevice = DEVICE.D_A501CG;
            } else if (str.equalsIgnoreCase("ASUS_T00J1")) {
                mDevice = DEVICE.D_A501CG2;
            } else if (str2.equalsIgnoreCase("T00G") || str2.equalsIgnoreCase("ASUS_T00G")) {
                mDevice = DEVICE.D_A600CG;
            } else if (matchKeyWords(str, "T00K", "ASUS") > 0 || matchKeyWords(str2, "T00K", "ASUS") > 0) {
                mDevice = DEVICE.D_A502CG;
            } else if (str.equalsIgnoreCase("ASUS_Z002") || str2.equalsIgnoreCase("ASUS_Z002")) {
                mDevice = DEVICE.D_A601CG;
            }
        }
        Log.d(TAG, "DEVICE=" + mDevice);
        Log.d(TAG, String.format("ManuFacturer=%s", Build.MANUFACTURER));
        if (mDevice == DEVICE.D_NULL) {
            z = false;
        } else {
            int length = sFactoryName.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (Build.MANUFACTURER.equalsIgnoreCase(sFactoryName[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    public static boolean isValidDevice() {
        boolean z;
        String str = Build.DEVICE;
        String str2 = Build.MODEL;
        Log.d(TAG, "device=" + Build.DEVICE);
        Log.d(TAG, "model=" + Build.MODEL);
        if (mDevice == DEVICE.D_NULL) {
            if (str2.equalsIgnoreCase("Nexus 7")) {
                mDevice = DEVICE.D_NEXUS7;
            } else if (str2.equalsIgnoreCase("AMAX") && str.equalsIgnoreCase("grouper")) {
                mDevice = DEVICE.D_NEXUS7;
            } else if (str2.equalsIgnoreCase("ASUS_T00I")) {
                mDevice = DEVICE.D_A400CG;
            } else if (str.equalsIgnoreCase("ASUS_T00F")) {
                mDevice = DEVICE.D_A500CG;
            } else if (str.equalsIgnoreCase("ASUS_T00F1")) {
                mDevice = DEVICE.D_A500CG2;
            } else if (str.equalsIgnoreCase("ASUS_T00J")) {
                mDevice = DEVICE.D_A501CG;
            } else if (str.equalsIgnoreCase("ASUS_T00J1")) {
                mDevice = DEVICE.D_A501CG2;
            } else if (str2.equalsIgnoreCase("T00G") || str2.equalsIgnoreCase("ASUS_T00G")) {
                mDevice = DEVICE.D_A600CG;
            } else if (str.equalsIgnoreCase("ASUS_T00P") || str2.equalsIgnoreCase("ASUS_T00P")) {
                mDevice = DEVICE.D_A500KL;
            } else if (matchKeyWords(str, "T00K", "ASUS") > 0 || matchKeyWords(str2, "T00K", "ASUS") > 0) {
                mDevice = DEVICE.D_A502CG;
            } else if (str.equalsIgnoreCase("ASUS_Z002") || str2.equalsIgnoreCase("ASUS_Z002")) {
                mDevice = DEVICE.D_A601CG;
            } else if (str.equalsIgnoreCase("ASUS_Z00D")) {
                mDevice = DEVICE.D_ZE500CL;
            } else if (str.equalsIgnoreCase("K01Q") || str2.equalsIgnoreCase("K01Q")) {
                mDevice = DEVICE.D_FE375CL;
            } else if (matchKeyWords(str, "Z008")) {
                mDevice = DEVICE.D_ZE550ML;
            } else if (matchKeyWords(str, "Z00A")) {
                mDevice = DEVICE.D_ZE551ML;
            }
        }
        Log.d(TAG, "DEVICE=" + mDevice);
        Log.d(TAG, String.format("ManuFacturer=%s", Build.MANUFACTURER));
        if (mDevice == DEVICE.D_NULL) {
            z = false;
        } else {
            int length = sFactoryName.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (Build.MANUFACTURER.equalsIgnoreCase(sFactoryName[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    static int matchKeyWords(String str, String str2, String... strArr) {
        int i = 0;
        if (str != null) {
            i = 0;
            if (strArr != null) {
                i = 0;
                if (strArr.length > 0) {
                    String upperCase = str.toUpperCase();
                    if (str2 == null) {
                        i = 0;
                    } else if (!upperCase.contains(str2.toUpperCase())) {
                        i = 0;
                    } else {
                        i = 1;
                    }
                    for (String str3 : strArr) {
                        i = i;
                        if (str3 != null) {
                            i = i;
                            if (upperCase.contains(str3.toUpperCase())) {
                                i++;
                            }
                        }
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean matchKeyWords(String str, String str2) {
        boolean z;
        if (str != null) {
            String upperCase = str.toUpperCase();
            if (str2 != null && upperCase.contains(str2.toUpperCase())) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public static boolean needForegroundService() {
        String str = Build.DEVICE;
        String str2 = Build.MODEL;
        Log.d(TAG, "device=" + Build.DEVICE);
        Log.d(TAG, "model=" + Build.MODEL);
        if (mDevice == DEVICE.D_NULL && str.equalsIgnoreCase("ASUS_Z00D")) {
            mDevice = DEVICE.D_ZE500CL;
        }
        Log.d(TAG, "DEVICE=" + mDevice);
        return mDevice != DEVICE.D_ZE500CL;
    }
}
