package com.mopub.common.util;

import android.graphics.Bitmap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/ImageUtils.class */
public class ImageUtils {
    public static Bitmap applyFastGaussianBlurToBitmap(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        while (i >= 1) {
            for (int i2 = i; i2 < height - i; i2++) {
                for (int i3 = i; i3 < width - i; i3++) {
                    int m8548y1 = C22128a.m8548y1(i2, i, width, i3);
                    int i4 = iArr[m8548y1 - i];
                    int i5 = iArr[m8548y1 + i];
                    int i6 = iArr[m8548y1];
                    int i7 = ((i2 + i) * width) + i3;
                    int i8 = iArr[i7 - i];
                    int i9 = iArr[i7 + i];
                    int i10 = iArr[i7];
                    int i11 = (i2 * width) + i3;
                    int i12 = iArr[i11 - i];
                    int i13 = iArr[i11 + i];
                    iArr[i11] = ((((((((((i4 & 16711680) + (i5 & 16711680)) + (i6 & 16711680)) + (i8 & 16711680)) + (i9 & 16711680)) + (i10 & 16711680)) + (i12 & 16711680)) + (i13 & 16711680)) >> 3) & 16711680) | ((((((((((i4 & 255) + (i5 & 255)) + (i6 & 255)) + (i8 & 255)) + (i9 & 255)) + (i10 & 255)) + (i12 & 255)) + (i13 & 255)) >> 3) & 255) | (-16777216) | ((((((((((i4 & 65280) + (i5 & 65280)) + (i6 & 65280)) + (i8 & 65280)) + (i9 & 65280)) + (i10 & 65280)) + (i12 & 65280)) + (i13 & 65280)) >> 3) & 65280);
                }
            }
            i /= 2;
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }
}
