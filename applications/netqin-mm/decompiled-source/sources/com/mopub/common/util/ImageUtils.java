package com.mopub.common.util;

import android.graphics.Bitmap;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/ImageUtils.class */
public class ImageUtils {
    public static Bitmap applyFastGaussianBlurToBitmap(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        while (i >= 1) {
            for (int i2 = i; i2 < height - i; i2++) {
                for (int i3 = i; i3 < width - i; i3++) {
                    int i4 = ((i2 - i) * width) + i3;
                    int i5 = iArr[i4 - i];
                    int i6 = iArr[i4 + i];
                    int i7 = iArr[i4];
                    int i8 = ((i2 + i) * width) + i3;
                    int i9 = iArr[i8 - i];
                    int i10 = iArr[i8 + i];
                    int i11 = iArr[i8];
                    int i12 = (i2 * width) + i3;
                    int i13 = iArr[i12 - i];
                    int i14 = iArr[i12 + i];
                    iArr[i12] = ((((((((((i5 & 16711680) + (i6 & 16711680)) + (i7 & 16711680)) + (i9 & 16711680)) + (i10 & 16711680)) + (i11 & 16711680)) + (i13 & 16711680)) + (i14 & 16711680)) >> 3) & 16711680) | ((((((((((i5 & 255) + (i6 & 255)) + (i7 & 255)) + (i9 & 255)) + (i10 & 255)) + (i11 & 255)) + (i13 & 255)) + (i14 & 255)) >> 3) & 255) | DrawableConstants.CtaButton.BACKGROUND_COLOR | ((((((((((i5 & 65280) + (i6 & 65280)) + (i7 & 65280)) + (i9 & 65280)) + (i10 & 65280)) + (i11 & 65280)) + (i13 & 65280)) + (i14 & 65280)) >> 3) & 65280);
                }
            }
            i /= 2;
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }
}
