package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DisplayUtils.class */
class DisplayUtils {

    /* renamed from: a */
    private static int[][] f11841a = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DisplayUtils() {
    }

    /* renamed from: a */
    public static int m38903a() {
        int i = AdRegistration.m39071d().getResources().getConfiguration().orientation;
        if (i == 1) {
            return 1;
        }
        return i == 2 ? 2 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0020 A[RETURN] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m38902b() {
        /*
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.m39071d()
            r3 = r0
            r0 = r3
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: android.provider.Settings.SettingNotFoundException -> L22
            java.lang.String r1 = "accelerometer_rotation"
            int r0 = android.provider.Settings.System.getInt(r0, r1)     // Catch: android.provider.Settings.SettingNotFoundException -> L22
            r4 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L18
            r0 = 1
            r4 = r0
            goto L1a
        L18:
            r0 = 0
            r4 = r0
        L1a:
            r0 = r4
            if (r0 != 0) goto L20
            r0 = 1
            return r0
        L20:
            r0 = 0
            return r0
        L22:
            r3 = move-exception
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DisplayUtils.m38902b():boolean");
    }
}
