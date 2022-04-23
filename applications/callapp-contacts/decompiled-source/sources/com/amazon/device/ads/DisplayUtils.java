package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DisplayUtils.class */
class DisplayUtils {

    /* renamed from: a  reason: collision with root package name */
    private static int[][] f6456a = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DisplayUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        int i = AdRegistration.d().getResources().getConfiguration().orientation;
        if (i == 1) {
            return 1;
        }
        return i == 2 ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0020 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b() {
        /*
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.d()
            r3 = r0
            r0 = r3
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: SettingNotFoundException -> 0x0022
            java.lang.String r1 = "accelerometer_rotation"
            int r0 = android.provider.Settings.System.getInt(r0, r1)     // Catch: SettingNotFoundException -> 0x0022
            r4 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x0018
            r0 = 1
            r4 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            if (r0 != 0) goto L_0x0020
            r0 = 1
            return r0
        L_0x0020:
            r0 = 0
            return r0
        L_0x0022:
            r3 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DisplayUtils.b():boolean");
    }
}
