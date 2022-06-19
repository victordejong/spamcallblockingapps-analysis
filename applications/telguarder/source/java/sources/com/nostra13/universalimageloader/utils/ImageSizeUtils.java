package com.nostra13.universalimageloader.utils;

import android.opengl.GLES10;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/ImageSizeUtils.class */
public final class ImageSizeUtils {
    private static final int DEFAULT_MAX_BITMAP_DIMENSION = 2048;
    private static ImageSize maxBitmapSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.nostra13.universalimageloader.utils.ImageSizeUtils$1 */
    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/ImageSizeUtils$1.class */
    public static /* synthetic */ class C18351 {

        /* renamed from: $SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType */
        static final /* synthetic */ int[] f336x841fdc36;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ViewScaleType.values().length];
            f336x841fdc36 = iArr;
            try {
                iArr[ViewScaleType.FIT_INSIDE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f336x841fdc36[ViewScaleType.CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int max = Math.max(iArr[0], 2048);
        maxBitmapSize = new ImageSize(max, max);
    }

    private ImageSizeUtils() {
    }

    public static int computeImageSampleSize(ImageSize imageSize, ImageSize imageSize2, ViewScaleType viewScaleType, boolean z) {
        int i;
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        int width2 = imageSize2.getWidth();
        int height2 = imageSize2.getHeight();
        int i2 = C18351.f336x841fdc36[viewScaleType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                i = 1;
            } else if (z) {
                int i3 = width / 2;
                int i4 = height / 2;
                int i5 = 1;
                while (true) {
                    int i6 = i5;
                    i = i6;
                    if (i3 / i6 <= width2) {
                        break;
                    }
                    i = i6;
                    if (i4 / i6 <= height2) {
                        break;
                    }
                    i5 = i6 * 2;
                }
            } else {
                i = Math.min(width / width2, height / height2);
            }
        } else if (z) {
            int i7 = width / 2;
            int i8 = height / 2;
            int i9 = 1;
            while (true) {
                int i10 = i9;
                if (i7 / i10 <= width2) {
                    i = i10;
                    if (i8 / i10 <= height2) {
                        break;
                    }
                }
                i9 = i10 * 2;
            }
        } else {
            i = Math.max(width / width2, height / height2);
        }
        if (i < 1) {
            i = 1;
        }
        return considerMaxTextureSize(width, height, i, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0093, code lost:
        if (r10 != r0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float computeImageScale(com.nostra13.universalimageloader.core.assist.ImageSize r3, com.nostra13.universalimageloader.core.assist.ImageSize r4, com.nostra13.universalimageloader.core.assist.ViewScaleType r5, boolean r6) {
        /*
            r0 = r3
            int r0 = r0.getWidth()
            r7 = r0
            r0 = r3
            int r0 = r0.getHeight()
            r8 = r0
            r0 = r4
            int r0 = r0.getWidth()
            r9 = r0
            r0 = r4
            int r0 = r0.getHeight()
            r10 = r0
            r0 = r7
            float r0 = (float) r0
            r11 = r0
            r0 = r11
            r1 = r9
            float r1 = (float) r1
            float r0 = r0 / r1
            r12 = r0
            r0 = r8
            float r0 = (float) r0
            r13 = r0
            r0 = r13
            r1 = r10
            float r1 = (float) r1
            float r0 = r0 / r1
            r14 = r0
            r0 = r5
            com.nostra13.universalimageloader.core.assist.ViewScaleType r1 = com.nostra13.universalimageloader.core.assist.ViewScaleType.FIT_INSIDE
            if (r0 != r1) goto L41
            r0 = r12
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L50
        L41:
            r0 = r5
            com.nostra13.universalimageloader.core.assist.ViewScaleType r1 = com.nostra13.universalimageloader.core.assist.ViewScaleType.CROP
            if (r0 != r1) goto L5b
            r0 = r12
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L5b
        L50:
            r0 = r13
            r1 = r12
            float r0 = r0 / r1
            int r0 = (int) r0
            r10 = r0
            goto L63
        L5b:
            r0 = r11
            r1 = r14
            float r0 = r0 / r1
            int r0 = (int) r0
            r9 = r0
        L63:
            r0 = 1065353216(0x3f800000, float:1.0)
            r13 = r0
            r0 = r6
            if (r0 != 0) goto L78
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L78
            r0 = r10
            r1 = r8
            if (r0 < r1) goto L96
        L78:
            r0 = r13
            r12 = r0
            r0 = r6
            if (r0 == 0) goto L9e
            r0 = r13
            r12 = r0
            r0 = r9
            r1 = r7
            if (r0 == r1) goto L9e
            r0 = r13
            r12 = r0
            r0 = r10
            r1 = r8
            if (r0 == r1) goto L9e
        L96:
            r0 = r9
            float r0 = (float) r0
            r1 = r11
            float r0 = r0 / r1
            r12 = r0
        L9e:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.utils.ImageSizeUtils.computeImageScale(com.nostra13.universalimageloader.core.assist.ImageSize, com.nostra13.universalimageloader.core.assist.ImageSize, com.nostra13.universalimageloader.core.assist.ViewScaleType, boolean):float");
    }

    public static int computeMinImageSampleSize(ImageSize imageSize) {
        int width = imageSize.getWidth();
        int height = imageSize.getHeight();
        return Math.max((int) Math.ceil(width / maxBitmapSize.getWidth()), (int) Math.ceil(height / maxBitmapSize.getHeight()));
    }

    private static int considerMaxTextureSize(int i, int i2, int i3, boolean z) {
        int width = maxBitmapSize.getWidth();
        int height = maxBitmapSize.getHeight();
        while (true) {
            if (i / i3 > width || i2 / i3 > height) {
                i3 = z ? i3 * 2 : i3 + 1;
            } else {
                return i3;
            }
        }
    }

    public static ImageSize defineTargetSizeForView(ImageAware imageAware, ImageSize imageSize) {
        int width = imageAware.getWidth();
        int i = width;
        if (width <= 0) {
            i = imageSize.getWidth();
        }
        int height = imageAware.getHeight();
        int i2 = height;
        if (height <= 0) {
            i2 = imageSize.getHeight();
        }
        return new ImageSize(i, i2);
    }
}
