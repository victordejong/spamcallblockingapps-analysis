package jp.wasabeef.blurry;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.renderscript.RSRuntimeException;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
/* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Blur.class */
class Blur {
    Blur() {
    }

    /* renamed from: of */
    public static Bitmap m405of(Context context, Bitmap bitmap, BlurFactor blurFactor) {
        Bitmap bitmap2;
        int i = blurFactor.width / blurFactor.sampling;
        int i2 = blurFactor.height / blurFactor.sampling;
        if (Helper.hasZero(i, i2)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(1.0f / blurFactor.sampling, 1.0f / blurFactor.sampling);
        Paint paint = new Paint();
        paint.setFlags(3);
        paint.setColorFilter(new PorterDuffColorFilter(blurFactor.color, PorterDuff.Mode.SRC_ATOP));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        try {
            bitmap2 = m403rs(context, createBitmap, blurFactor.radius);
        } catch (RSRuntimeException e) {
            bitmap2 = stack(createBitmap, blurFactor.radius, true);
        }
        if (blurFactor.sampling == 1) {
            return bitmap2;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, blurFactor.width, blurFactor.height, true);
        bitmap2.recycle();
        return createScaledBitmap;
    }

    /* renamed from: of */
    public static Bitmap m404of(View view, BlurFactor blurFactor) {
        view.setDrawingCacheEnabled(true);
        view.destroyDrawingCache();
        view.setDrawingCacheQuality(524288);
        Bitmap drawingCache = view.getDrawingCache();
        Bitmap m405of = m405of(view.getContext(), drawingCache, blurFactor);
        drawingCache.recycle();
        return m405of;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010d  */
    /* renamed from: rs */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap m403rs(android.content.Context r5, android.graphics.Bitmap r6, int r7) throws android.renderscript.RSRuntimeException {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: jp.wasabeef.blurry.Blur.m403rs(android.content.Context, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    private static Bitmap stack(Bitmap bitmap, int i, boolean z) {
        Bitmap copy = z ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        if (i < 1) {
            return null;
        }
        int width = copy.getWidth();
        int height = copy.getHeight();
        int i2 = width * height;
        int[] iArr = new int[i2];
        copy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i3 = width - 1;
        int i4 = height - 1;
        int i5 = i + i + 1;
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        int[] iArr5 = new int[Math.max(width, height)];
        int i6 = (i5 + 1) >> 1;
        int i7 = i6 * i6;
        int i8 = i7 * 256;
        int[] iArr6 = new int[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            iArr6[i9] = i9 / i7;
        }
        int[][] iArr7 = new int[i5][3];
        int i10 = i + 1;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < height; i13++) {
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            for (int i23 = -i; i23 <= i; i23++) {
                int i24 = iArr[i11 + Math.min(i3, Math.max(i23, 0))];
                int[] iArr8 = iArr7[i23 + i];
                iArr8[0] = (i24 & 16711680) >> 16;
                iArr8[1] = (i24 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr8[2] = i24 & 255;
                int abs = i10 - Math.abs(i23);
                i22 += iArr8[0] * abs;
                i14 += iArr8[1] * abs;
                i15 += iArr8[2] * abs;
                if (i23 > 0) {
                    i19 += iArr8[0];
                    i20 += iArr8[1];
                    i21 += iArr8[2];
                } else {
                    i16 += iArr8[0];
                    i17 += iArr8[1];
                    i18 += iArr8[2];
                }
            }
            int i25 = i22;
            int i26 = i21;
            int i27 = i20;
            int i28 = i19;
            int i29 = i;
            int i30 = i25;
            for (int i31 = 0; i31 < width; i31++) {
                iArr2[i11] = iArr6[i30];
                iArr3[i11] = iArr6[i14];
                iArr4[i11] = iArr6[i15];
                int[] iArr9 = iArr7[((i29 - i) + i5) % i5];
                int i32 = iArr9[0];
                int i33 = iArr9[1];
                int i34 = iArr9[2];
                if (i13 == 0) {
                    iArr5[i31] = Math.min(i31 + i + 1, i3);
                }
                int i35 = iArr[i12 + iArr5[i31]];
                iArr9[0] = (i35 & 16711680) >> 16;
                iArr9[1] = (i35 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i35 & 255;
                int i36 = i28 + iArr9[0];
                int i37 = i27 + iArr9[1];
                int i38 = i26 + iArr9[2];
                i30 = (i30 - i16) + i36;
                i14 = (i14 - i17) + i37;
                i15 = (i15 - i18) + i38;
                i29 = (i29 + 1) % i5;
                int[] iArr10 = iArr7[i29 % i5];
                i16 = (i16 - i32) + iArr10[0];
                i17 = (i17 - i33) + iArr10[1];
                i18 = (i18 - i34) + iArr10[2];
                i28 = i36 - iArr10[0];
                i27 = i37 - iArr10[1];
                i26 = i38 - iArr10[2];
                i11++;
            }
            i12 += width;
        }
        for (int i39 = 0; i39 < width; i39++) {
            int i40 = -i;
            int i41 = 0;
            int i42 = 0;
            int i43 = 0;
            int i44 = 0;
            int i45 = 0;
            int i46 = 0;
            int i47 = 0;
            int i48 = i40;
            int i49 = i40 * width;
            int i50 = 0;
            int i51 = 0;
            while (i48 <= i) {
                int max = Math.max(0, i49) + i39;
                int[] iArr11 = iArr7[i48 + i];
                iArr11[0] = iArr2[max];
                iArr11[1] = iArr3[max];
                iArr11[2] = iArr4[max];
                int abs2 = i10 - Math.abs(i48);
                i50 += iArr2[max] * abs2;
                i51 += iArr3[max] * abs2;
                i41 += iArr4[max] * abs2;
                if (i48 > 0) {
                    i45 += iArr11[0];
                    i46 += iArr11[1];
                    i47 += iArr11[2];
                } else {
                    i42 += iArr11[0];
                    i43 += iArr11[1];
                    i44 += iArr11[2];
                }
                int i52 = i49;
                if (i48 < i4) {
                    i52 = i49 + width;
                }
                i48++;
                i49 = i52;
            }
            int i53 = i51;
            int i54 = i50;
            int i55 = i;
            int i56 = i39;
            int i57 = i47;
            int i58 = i46;
            int i59 = i45;
            int i60 = i53;
            int i61 = i54;
            for (int i62 = 0; i62 < height; i62++) {
                iArr[i56] = (iArr[i56] & ViewCompat.MEASURED_STATE_MASK) | (iArr6[i61] << 16) | (iArr6[i60] << 8) | iArr6[i41];
                int[] iArr12 = iArr7[((i55 - i) + i5) % i5];
                int i63 = iArr12[0];
                int i64 = iArr12[1];
                int i65 = iArr12[2];
                if (i39 == 0) {
                    iArr5[i62] = Math.min(i62 + i10, i4) * width;
                }
                int i66 = iArr5[i62] + i39;
                iArr12[0] = iArr2[i66];
                iArr12[1] = iArr3[i66];
                iArr12[2] = iArr4[i66];
                int i67 = i59 + iArr12[0];
                int i68 = i58 + iArr12[1];
                int i69 = i57 + iArr12[2];
                i61 = (i61 - i42) + i67;
                i60 = (i60 - i43) + i68;
                i41 = (i41 - i44) + i69;
                i55 = (i55 + 1) % i5;
                int[] iArr13 = iArr7[i55];
                i42 = (i42 - i63) + iArr13[0];
                i43 = (i43 - i64) + iArr13[1];
                i44 = (i44 - i65) + iArr13[2];
                i59 = i67 - iArr13[0];
                i58 = i68 - iArr13[1];
                i57 = i69 - iArr13[2];
                i56 += width;
            }
        }
        copy.setPixels(iArr, 0, width, 0, 0, width, height);
        return copy;
    }
}
