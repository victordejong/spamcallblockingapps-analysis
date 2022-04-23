package com.apptentive.android.sdk.util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Constants.class */
public class Constants {
    private static final String[] networkTypeLookup = {"UNKNOWN", "GPRS", "EDGE", "UMTS", "CDMA", "EVDO_0", "EVDO_A", "1xRTT", "HSDPA", "HSUPA", "HSPA", "IDEN", "EVDO_B", "LTE", "EHRPD", "HSPAP", "GSM", "TD_SCDMA", "IWLAN"};
    private static String overriddenSdkVersion;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Constants$FragmentConfigKeys.class */
    public interface FragmentConfigKeys {
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/Constants$FragmentTypes.class */
    public interface FragmentTypes {
    }

    public static String getApptentiveSdkVersion() {
        String str = overriddenSdkVersion;
        return str != null ? str : "5.5.3";
    }

    public static String networkTypeAsString(int i) {
        try {
            return networkTypeLookup[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            return networkTypeLookup[0];
        }
    }
}
