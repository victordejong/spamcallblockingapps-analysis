package net.pubnative.lite.sdk.utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/CheckUtils.class */
public class CheckUtils {
    private static final String TAG = "CheckUtils";

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/CheckUtils$NoThrow.class */
    public static class NoThrow {
        private static boolean sStrictMode = false;

        public static boolean checkArgument(boolean z, String str) {
            return CheckUtils.checkArgumentImpl(z, sStrictMode, str);
        }

        public static boolean checkNotNull(Object obj, String str) {
            return CheckUtils.checkNotNullImpl(obj, sStrictMode, str);
        }

        public static void setStrictMode(boolean z) {
            sStrictMode = z;
        }
    }

    public static void checkArgument(boolean z, String str) {
        checkArgumentImpl(z, true, str);
    }

    public static boolean checkArgumentImpl(boolean z, boolean z2, String str) {
        if (z) {
            return true;
        }
        if (z2) {
            throw new IllegalArgumentException(str);
        }
        Logger.m628e(TAG, str);
        return false;
    }

    public static boolean checkNotNullImpl(Object obj, boolean z, String str) {
        if (obj != null) {
            return true;
        }
        if (z) {
            throw new NullPointerException(str);
        }
        Logger.m628e(TAG, str);
        return false;
    }
}
