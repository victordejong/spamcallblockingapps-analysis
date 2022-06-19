package com.amazon.device.ads;

import android.content.Context;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceDataRetriever.class */
public class DtbDeviceDataRetriever {
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    public static final String ORIENTATION_UNKNOWN = "unknown";
    private static final int SMALLEST_TABLET_SCREEN_WIDTH = 600;
    private static int[][] rotationArray = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    private static int determineCanonicalScreenOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        int i2 = 0;
        if (i != 1 ? i != 2 || rotation == 1 || rotation == 3 : rotation == 0 || rotation == 2) {
            i2 = 1;
        }
        return rotationArray[i2 ^ 1][rotation];
    }

    public static String getCanonicalOrientation(Context context) {
        String str;
        int determineCanonicalScreenOrientation = determineCanonicalScreenOrientation(context);
        if (determineCanonicalScreenOrientation != 0) {
            if (determineCanonicalScreenOrientation != 1) {
                if (determineCanonicalScreenOrientation != 8) {
                    if (determineCanonicalScreenOrientation != 9) {
                        str = "unknown";
                        return str;
                    }
                }
            }
            str = "portrait";
            return str;
        }
        str = "landscape";
        return str;
    }

    public static String getOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? "portrait" : "landscape";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007b, code lost:
        return java.lang.String.valueOf(r8) + "x" + java.lang.String.valueOf(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x003b, code lost:
        if (r0 < r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
        if (r0 > r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004d, code lost:
        r8 = r0;
        r6 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getScreenSize(android.util.DisplayMetrics r3, java.lang.String r4) {
        /*
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.getContext()     // Catch: java.lang.Exception -> L7c
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Exception -> L7c
            android.view.WindowManager r0 = (android.view.WindowManager) r0     // Catch: java.lang.Exception -> L7c
            android.view.Display r0 = r0.getDefaultDisplay()     // Catch: java.lang.Exception -> L7c
            r1 = r3
            r0.getRealMetrics(r1)     // Catch: java.lang.Exception -> L7c
            r0 = r3
            int r0 = r0.widthPixels     // Catch: java.lang.Exception -> L7c
            r5 = r0
            r0 = r3
            int r0 = r0.heightPixels     // Catch: java.lang.Exception -> L7c
            r6 = r0
            r0 = r5
            int r0 = com.amazon.device.ads.DTBAdUtil.pixelsToDeviceIndependenPixels(r0)     // Catch: java.lang.Exception -> L7c
            r5 = r0
            r0 = r6
            int r0 = com.amazon.device.ads.DTBAdUtil.pixelsToDeviceIndependenPixels(r0)     // Catch: java.lang.Exception -> L7c
            r7 = r0
            r0 = r4
            java.lang.String r1 = "landscape"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L41
            r0 = r5
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            if (r0 >= r1) goto L53
            goto L4d
        L41:
            r0 = r5
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            if (r0 <= r1) goto L53
        L4d:
            r0 = r7
            r8 = r0
            r0 = r5
            r6 = r0
        L53:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7c
            r3 = r0
            r0 = r3
            r0.<init>()     // Catch: java.lang.Exception -> L7c
            r0 = r3
            r1 = r8
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> L7c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L7c
            r0 = r3
            java.lang.String r1 = "x"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L7c
            r0 = r3
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> L7c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L7c
            r0 = r3
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L7c
            r3 = r0
            r0 = r3
            return r0
        L7c:
            r3 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceDataRetriever.getScreenSize(android.util.DisplayMetrics, java.lang.String):java.lang.String");
    }

    public static boolean isTablet() {
        return AdRegistration.getContext().getResources().getConfiguration().smallestScreenWidthDp >= SMALLEST_TABLET_SCREEN_WIDTH;
    }
}
