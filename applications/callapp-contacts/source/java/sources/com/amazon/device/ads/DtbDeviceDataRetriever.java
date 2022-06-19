package com.amazon.device.ads;

import android.content.Context;
import android.view.WindowManager;
import com.verizon.ads.EnvironmentInfo;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceDataRetriever.class */
public class DtbDeviceDataRetriever {

    /* renamed from: a */
    private static int[][] f11871a = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DtbDeviceDataRetriever() {
    }

    /* renamed from: a */
    public static String m38855a(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m38854a(android.util.DisplayMetrics r3, java.lang.String r4) {
        /*
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.m39071d()     // Catch: java.lang.Exception -> L7c
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
            int r0 = com.amazon.device.ads.DTBAdUtil.m38955b(r0)     // Catch: java.lang.Exception -> L7c
            r5 = r0
            r0 = r6
            int r0 = com.amazon.device.ads.DTBAdUtil.m38955b(r0)     // Catch: java.lang.Exception -> L7c
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
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceDataRetriever.m38854a(android.util.DisplayMetrics, java.lang.String):java.lang.String");
    }
}
