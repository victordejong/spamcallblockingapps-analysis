package com.bytedance.sdk.adnet.p143d;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.p141b.C4166d;
/* renamed from: com.bytedance.sdk.adnet.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/a.class */
public class C4225a implements C4166d.AbstractC4178d {

    /* renamed from: a */
    private final Bitmap.Config f15484a;

    /* renamed from: b */
    private final int f15485b;

    /* renamed from: c */
    private final int f15486c;

    /* renamed from: d */
    private final ImageView.ScaleType f15487d;

    public C4225a(int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config) {
        this.f15484a = config;
        this.f15485b = i;
        this.f15486c = i2;
        this.f15487d = scaleType;
    }

    /* renamed from: a */
    static int m36099a(int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    private static int m36098a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
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

    /* JADX WARN: Code restructure failed: missing block: B:12:0x009e, code lost:
        if (r0.getHeight() > r0) goto L13;
     */
    @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4178d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap mo36097a(byte[] r7) {
        /*
            r6 = this;
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            int r0 = r0.f15485b
            if (r0 != 0) goto L2a
            r0 = r6
            int r0 = r0.f15486c
            if (r0 != 0) goto L2a
            r0 = r8
            r1 = r6
            android.graphics.Bitmap$Config r1 = r1.f15484a
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
            int r0 = r0.f15485b
            r1 = r6
            int r1 = r1.f15486c
            r2 = r9
            r3 = r10
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.f15487d
            int r0 = m36098a(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r6
            int r0 = r0.f15486c
            r1 = r6
            int r1 = r1.f15485b
            r2 = r10
            r3 = r9
            r4 = r6
            android.widget.ImageView$ScaleType r4 = r4.f15487d
            int r0 = m36098a(r0, r1, r2, r3, r4)
            r12 = r0
            r0 = r8
            r1 = 0
            r0.inJustDecodeBounds = r1
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            int r1 = m36099a(r1, r2, r3, r4)
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
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.p143d.C4225a.mo36097a(byte[]):android.graphics.Bitmap");
    }
}
