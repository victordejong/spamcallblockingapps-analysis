package com.bytedance.sdk.adnet.d;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.b.d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/a.class */
public class a implements d.AbstractC0157d {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.Config f8344a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8345b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8346c;

    /* renamed from: d  reason: collision with root package name */
    private final ImageView.ScaleType f8347d;

    public a(int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config) {
        this.f8344a = config;
        this.f8345b = i;
        this.f8346c = i2;
        this.f8347d = scaleType;
    }

    static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > Math.min(i / i3, i2 / i4)) {
                return (int) f;
            }
            f = f2;
        }
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d2 = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d3 = i2;
                if (i * d2 < d3) {
                    i = (int) (d3 / d2);
                }
                return i;
            }
            double d4 = i2;
            if (i * d2 > d4) {
                i = (int) (d4 / d2);
            }
            return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x009e, code lost:
        if (r0.getHeight() > r0) goto L_0x00a1;
     */
    @Override // com.bytedance.sdk.adnet.b.d.AbstractC0157d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap a(byte[] r7) {
        /*
            r6 = this;
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            int r0 = r0.f8345b
            if (r0 != 0) goto L_0x002a
            r0 = r6
            int r0 = r0.f8346c
            if (r0 != 0) goto L_0x002a
            r0 = r8
            r1 = r6
            android.graphics.Bitmap$Config r1 = r1.f8344a
            r0.inPreferredConfig = r1
            r0 = r7
            r1 = 0
            r2 = r7
            int r2 = r2.length
            r3 = r8
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r2, r3)
            r7 = r0
            goto L_0x00af
        L_0x002a:
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
            int r0 = r0.f8345b
            r1 = r6
            int r1 = r1.f8346c
            r2 = r9
            r3 = r10
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.f8347d
            int r0 = a(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r6
            int r0 = r0.f8346c
            r1 = r6
            int r1 = r1.f8345b
            r2 = r10
            r3 = r9
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.f8347d
            int r0 = a(r0, r1, r2, r3, r4)
            r12 = r0
            r0 = r8
            r1 = 0
            r0.inJustDecodeBounds = r1
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            int r1 = a(r1, r2, r3, r4)
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
            if (r0 == 0) goto L_0x00af
            r0 = r8
            int r0 = r0.getWidth()
            r1 = r11
            if (r0 > r1) goto L_0x00a1
            r0 = r8
            r7 = r0
            r0 = r8
            int r0 = r0.getHeight()
            r1 = r12
            if (r0 <= r1) goto L_0x00af
        L_0x00a1:
            r0 = r8
            r1 = r11
            r2 = r12
            r3 = 1
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)
            r7 = r0
            r0 = r8
            r0.recycle()
        L_0x00af:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.d.a.a(byte[]):android.graphics.Bitmap");
    }
}
