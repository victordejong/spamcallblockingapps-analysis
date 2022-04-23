package com.amazon.device.ads;

import android.content.Context;
import android.view.WindowManager;
import com.verizon.ads.EnvironmentInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceDataRetriever.class */
public class DtbDeviceDataRetriever {

    /* renamed from: a  reason: collision with root package name */
    private static int[][] f6475a = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DtbDeviceDataRetriever() {
    }

    public static String a(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007b, code lost:
        return java.lang.String.valueOf(r8) + "x" + java.lang.String.valueOf(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x003b, code lost:
        if (r0 < r0) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
        if (r0 > r0) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004d, code lost:
        r8 = r0;
        r6 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.util.DisplayMetrics r3, java.lang.String r4) {
        /*
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.d()     // Catch: Exception -> 0x007c
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: Exception -> 0x007c
            android.view.WindowManager r0 = (android.view.WindowManager) r0     // Catch: Exception -> 0x007c
            android.view.Display r0 = r0.getDefaultDisplay()     // Catch: Exception -> 0x007c
            r1 = r3
            r0.getRealMetrics(r1)     // Catch: Exception -> 0x007c
            r0 = r3
            int r0 = r0.widthPixels     // Catch: Exception -> 0x007c
            r5 = r0
            r0 = r3
            int r0 = r0.heightPixels     // Catch: Exception -> 0x007c
            r6 = r0
            r0 = r5
            int r0 = com.amazon.device.ads.DTBAdUtil.b(r0)     // Catch: Exception -> 0x007c
            r5 = r0
            r0 = r6
            int r0 = com.amazon.device.ads.DTBAdUtil.b(r0)     // Catch: Exception -> 0x007c
            r7 = r0
            r0 = r4
            java.lang.String r1 = "landscape"
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x007c
            if (r0 == 0) goto L_0x0041
            r0 = r5
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            if (r0 >= r1) goto L_0x0053
            goto L_0x004d
        L_0x0041:
            r0 = r5
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            r1 = r7
            if (r0 <= r1) goto L_0x0053
        L_0x004d:
            r0 = r7
            r8 = r0
            r0 = r5
            r6 = r0
        L_0x0053:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x007c
            r3 = r0
            r0 = r3
            r0.<init>()     // Catch: Exception -> 0x007c
            r0 = r3
            r1 = r8
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: Exception -> 0x007c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x007c
            r0 = r3
            java.lang.String r1 = "x"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x007c
            r0 = r3
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: Exception -> 0x007c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x007c
            r0 = r3
            java.lang.String r0 = r0.toString()     // Catch: Exception -> 0x007c
            r3 = r0
            r0 = r3
            return r0
        L_0x007c:
            r3 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceDataRetriever.a(android.util.DisplayMetrics, java.lang.String):java.lang.String");
    }
}
