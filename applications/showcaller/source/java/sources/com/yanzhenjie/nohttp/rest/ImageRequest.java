package com.yanzhenjie.nohttp.rest;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.Logger;
import com.yanzhenjie.nohttp.RequestMethod;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/ImageRequest.class */
public class ImageRequest extends Request<Bitmap> {
    private static final Object DECODE_LOCK = new Object();
    private final Bitmap.Config mDecodeConfig;
    private final int mMaxHeight;
    private final int mMaxWidth;
    private ImageView.ScaleType mScaleType;

    public ImageRequest(String str, RequestMethod requestMethod, int i, int i2, Bitmap.Config config, ImageView.ScaleType scaleType) {
        super(str, requestMethod);
        this.mMaxWidth = i;
        this.mMaxHeight = i2;
        this.mDecodeConfig = config;
        this.mScaleType = scaleType;
        setAccept("image/*");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x009e, code lost:
        if (r0.getHeight() > r0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap doResponse(byte[] r7) {
        /*
            r6 = this;
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            int r0 = r0.mMaxWidth
            if (r0 != 0) goto L2a
            r0 = r6
            int r0 = r0.mMaxHeight
            if (r0 != 0) goto L2a
            r0 = r8
            r1 = r6
            android.graphics.Bitmap$Config r1 = r1.mDecodeConfig
            r0.inPreferredConfig = r1
            r0 = r7
            r1 = 0
            r2 = r7
            int r2 = r2.length
            r3 = r8
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r2, r3)
            r7 = r0
            goto Laf
        L2a:
            r0 = r8
            r1 = 1
            r0.inJustDecodeBounds = r1
            r0 = r7
            r1 = 0
            r2 = r7
            int r2 = r2.length
            r3 = r8
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r2, r3)
            r0 = r8
            int r0 = r0.outWidth
            r9 = r0
            r0 = r8
            int r0 = r0.outHeight
            r10 = r0
            r0 = r6
            int r0 = r0.mMaxWidth
            r1 = r6
            int r1 = r1.mMaxHeight
            r2 = r9
            r3 = r10
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.mScaleType
            int r0 = getResizedDimension(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r6
            int r0 = r0.mMaxHeight
            r1 = r6
            int r1 = r1.mMaxWidth
            r2 = r10
            r3 = r9
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.mScaleType
            int r0 = getResizedDimension(r0, r1, r2, r3, r4)
            r12 = r0
            r0 = r8
            r1 = 0
            r0.inJustDecodeBounds = r1
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            int r1 = findBestSampleSize(r1, r2, r3, r4)
            r0.inSampleSize = r1
            r0 = r7
            r1 = 0
            r2 = r7
            int r2 = r2.length
            r3 = r8
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r2, r3)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 == 0) goto Laf
            r0 = r8
            int r0 = r0.getWidth()
            r1 = r11
            if (r0 > r1) goto La1
            r0 = r8
            r7 = r0
            r0 = r8
            int r0 = r0.getHeight()
            r1 = r12
            if (r0 <= r1) goto Laf
        La1:
            r0 = r8
            r1 = r11
            r2 = r12
            r3 = 1
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)
            r7 = r0
            r0 = r8
            r0.recycle()
        Laf:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yanzhenjie.nohttp.rest.ImageRequest.doResponse(byte[]):android.graphics.Bitmap");
    }

    public static int findBestSampleSize(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = f;
            float f3 = 2.0f * f2;
            if (f3 <= Math.min(i / i3, i2 / i4)) {
                f = f3;
            } else {
                return (int) f2;
            }
        }
    }

    private static int getResizedDimension(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d2 = i2;
                if (i * d < d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
            double d3 = i2;
            if (i * d > d3) {
                i = (int) (d3 / d);
            }
            return i;
        }
    }

    @Override // com.yanzhenjie.nohttp.rest.Request
    public Bitmap parseResponse(Headers headers, byte[] bArr) {
        Bitmap doResponse;
        synchronized (DECODE_LOCK) {
            if (bArr != null) {
                try {
                    doResponse = doResponse(bArr);
                } catch (OutOfMemoryError e) {
                    Logger.m565e(e, String.format(Locale.US, "Caught OOM for %d byte image, url=%s", Integer.valueOf(bArr.length), url()));
                }
            }
            doResponse = null;
        }
        return doResponse;
    }
}
