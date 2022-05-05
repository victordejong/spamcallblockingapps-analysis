package com.mixpanel.android.util;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.p001v4.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/ActivityImageUtils.class */
public class ActivityImageUtils {
    private static final String LOGTAG = "MixpanelAPI.ActImgUtils";

    public static int getHighlightColor(int i) {
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, 0.3f};
        return Color.HSVToColor(242, fArr);
    }

    public static int getHighlightColorFromBackground(Activity activity) {
        Bitmap scaledScreenshot = getScaledScreenshot(activity, 1, 1, false);
        return getHighlightColor(scaledScreenshot != null ? scaledScreenshot.getPixel(0, 0) : ViewCompat.MEASURED_STATE_MASK);
    }

    public static int getHighlightColorFromBitmap(Bitmap bitmap) {
        return getHighlightColor(bitmap != null ? Bitmap.createScaledBitmap(bitmap, 1, 1, false).getPixel(0, 0) : ViewCompat.MEASURED_STATE_MASK);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getScaledScreenshot(android.app.Activity r5, int r6, int r7, boolean r8) {
        /*
            r0 = r5
            r1 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r0 = r0.findViewById(r1)
            android.view.View r0 = r0.getRootView()
            r9 = r0
            r0 = r9
            boolean r0 = r0.isDrawingCacheEnabled()
            r10 = r0
            r0 = r9
            r1 = 1
            r0.setDrawingCacheEnabled(r1)
            r0 = r9
            r1 = 1
            r0.buildDrawingCache(r1)
            r0 = r9
            android.graphics.Bitmap r0 = r0.getDrawingCache()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x006f
            r0 = r5
            int r0 = r0.getWidth()
            if (r0 <= 0) goto L_0x006f
            r0 = r5
            int r0 = r0.getHeight()
            if (r0 <= 0) goto L_0x006f
            r0 = r6
            r11 = r0
            r0 = r7
            r12 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0050
            r0 = r5
            int r0 = r0.getWidth()
            r1 = r6
            int r0 = r0 / r1
            r11 = r0
            r0 = r5
            int r0 = r0.getHeight()
            r1 = r7
            int r0 = r0 / r1
            r12 = r0
        L_0x0050:
            r0 = r11
            if (r0 <= 0) goto L_0x006f
            r0 = r12
            if (r0 <= 0) goto L_0x006f
            r0 = r5
            r1 = r11
            r2 = r12
            r3 = 0
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)     // Catch: OutOfMemoryError -> 0x0067
            r5 = r0
            goto L_0x0071
        L_0x0067:
            r5 = move-exception
            java.lang.String r0 = "MixpanelAPI.ActImgUtils"
            java.lang.String r1 = "Not enough memory to produce scaled image, returning a null screenshot"
            com.mixpanel.android.util.MPLog.m309i(r0, r1)
        L_0x006f:
            r0 = 0
            r5 = r0
        L_0x0071:
            r0 = r10
            if (r0 != 0) goto L_0x007c
            r0 = r9
            r1 = 0
            r0.setDrawingCacheEnabled(r1)
        L_0x007c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.util.ActivityImageUtils.getScaledScreenshot(android.app.Activity, int, int, boolean):android.graphics.Bitmap");
    }
}
