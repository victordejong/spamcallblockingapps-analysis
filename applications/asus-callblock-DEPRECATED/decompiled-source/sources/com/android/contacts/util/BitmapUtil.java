package com.android.contacts.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/BitmapUtil.class */
public class BitmapUtil {
    private static final int BLUE_MASK = 255;
    private static final int GREEN_MASK = 65280;
    private static final int GREEN_MASK_SHIFT = 8;
    private static final int RED_MASK = 16711680;
    private static final int RED_MASK_SHIFT = 16;
    private static final String TAG = "BitmapUtil";

    private BitmapUtil() {
    }

    public static int calculateInSampleSize(Context context, BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            i5 = Math.round(i3 / i2);
            int round = Math.round(i4 / i);
            if (i5 >= round) {
                i5 = round;
            }
        }
        if (!PhoneCapabilityTester.isHighendDevice(context, 2L) && i5 < 2) {
            options.inSampleSize = 2;
        }
        return i5;
    }

    public static Bitmap circleBitmap(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        bitmap.recycle();
        return createBitmap;
    }

    public static Bitmap createBlurredBitmap(Bitmap bitmap) {
        Bitmap gaussianBlur;
        Log.d(TAG, "createBlurredBitmap()...");
        long uptimeMillis = SystemClock.uptimeMillis();
        if (bitmap == null) {
            Log.w(TAG, "createBlurredBitmap: null bitmap");
            gaussianBlur = null;
        } else {
            Log.d(TAG, "- input bitmap: " + bitmap.getWidth() + " x " + bitmap.getHeight());
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, 128, 128, true);
            Log.d(TAG, "- after resize: " + createScaledBitmap.getWidth() + " x " + createScaledBitmap.getHeight());
            gaussianBlur = gaussianBlur(createScaledBitmap);
            Log.d(TAG, "- after blur: " + gaussianBlur.getWidth() + " x " + gaussianBlur.getHeight());
            Log.d(TAG, "createBlurredBitmap() done (elapsed = " + (SystemClock.uptimeMillis() - uptimeMillis) + " msec)");
        }
        return gaussianBlur;
    }

    public static Bitmap decodeBitmapFromBytes(byte[] bArr, int i) {
        BitmapFactory.Options options;
        if (i <= 1) {
            options = null;
        } else {
            options = new BitmapFactory.Options();
            options.inSampleSize = i;
        }
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static int findOptimalSampleSize(int i, int i2) {
        int i3 = 1;
        int i4 = 1;
        if (i2 > 0 && i > 0) {
            int i5 = i;
            while (true) {
                i4 = i3;
                if ((i5 >> 1) < i2 * 0.8f) {
                    break;
                }
                i3 <<= 1;
                i5 >>= 1;
            }
        }
        return i4;
    }

    public static Bitmap gaussianBlur(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Log.d(TAG, "gaussianBlur(): input: " + width + " x " + height);
        int i = width * height;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        gaussianBlurFilter(iArr, iArr2, width, height);
        gaussianBlurFilter(iArr2, iArr, width, height);
        Bitmap createBitmap = Bitmap.createBitmap(iArr, width, height, Bitmap.Config.RGB_565);
        bitmap.recycle();
        return createBitmap;
    }

    private static void gaussianBlurFilter(int[] iArr, int[] iArr2, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = 0;
            int i6 = i3;
            while (i5 < i) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                for (int i10 = -4; i10 <= 4; i10++) {
                    int i11 = iArr[((i5 + i10) & (i - 1)) + i4];
                    int i12 = new int[]{13, 23, 32, 39, 42, 39, 32, 23, 13}[i10 + 4];
                    i7 += ((RED_MASK & i11) >> RED_MASK_SHIFT) * i12;
                    i8 += ((GREEN_MASK & i11) >> 8) * i12;
                    i9 += (i11 & BLUE_MASK) * i12;
                }
                iArr2[i6] = (-16777216) | ((i7 >> 8) << RED_MASK_SHIFT) | ((i8 >> 8) << 8) | (i9 >> 8);
                i5++;
                i6 += i2;
            }
            i3++;
            i4 += i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getSampleSizeBitmap(android.content.Context r6, android.net.Uri r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.BitmapUtil.getSampleSizeBitmap(android.content.Context, android.net.Uri, int, int):android.graphics.Bitmap");
    }

    public static int getSmallerExtentFromBytes(byte[] bArr) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return Math.min(options.outWidth, options.outHeight);
    }

    public static Bitmap loadBitmapFromView(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getLayoutParams().width, view.getLayoutParams().height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        view.layout(0, 0, view.getLayoutParams().width, view.getLayoutParams().height);
        view.draw(canvas);
        return createBitmap;
    }

    public static void recycleImageViewBitmap(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof BitmapDrawable) {
                Log.d(TAG, ">>> recycleImageViewBitmap: recycle cover bitmap");
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                    return;
                }
                return;
            }
            Log.d(TAG, ">>> recycleImageViewBitmap not do recycle");
        }
    }
}
