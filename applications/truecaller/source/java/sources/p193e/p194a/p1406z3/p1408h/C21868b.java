package p193e.p194a.p1406z3.p1408h;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.f.a.n.q.d.f;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p194a.p1406z3.C21854f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.z3.h.b */
/* loaded from: classes9-dex2jar.jar:e/a/z3/h/b.class */
public final class C21868b extends f {

    /* renamed from: b */
    public final byte[] f60754b;

    /* renamed from: c */
    public final Context f60755c;

    /* renamed from: d */
    public final float f60756d;

    public C21868b(Context context, float f) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60756d = f;
        Charset forName = Charset.forName(StringConstant.UTF8);
        l.d(forName, "Charset.forName(\"UTF-8\")");
        byte[] bytes = "com.truecaller.glide.transform.IntrinsicBlurTransformation".getBytes(forName);
        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
        this.f60754b = bytes;
        this.f60755c = context.getApplicationContext();
    }

    /* renamed from: b */
    public void m8954b(MessageDigest messageDigest) {
        l.e(messageDigest, "messageDigest");
        messageDigest.update(this.f60754b);
        byte[] array = ByteBuffer.allocate(4).putFloat(this.f60756d).array();
        l.d(array, "ByteBuffer.allocate(4).putFloat(radius).array()");
        messageDigest.update(array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public Bitmap m8953c(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
        Bitmap bitmap2;
        l.e(abstractC22303d, "pool");
        l.e(bitmap, "source");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width < 8 || height < 8) {
            return bitmap;
        }
        Context context = this.f60755c;
        l.d(context, "appContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        if (!C21854f.f60732a) {
            synchronized (d0.a(C21854f.class)) {
                if (!C21854f.f60732a) {
                    C21854f.f60732a = true;
                    try {
                        C21854f.f60733b = RenderScript.create(context.getApplicationContext());
                    } catch (RuntimeException e) {
                        C10480a.m26061I1(e);
                    }
                }
            }
        }
        RenderScript renderScript = C21854f.f60733b;
        if (renderScript != null) {
            try {
                return m8952d(renderScript, bitmap);
            } catch (RuntimeException e2) {
                C10480a.m26057J1(e2, "Could not blur image");
            }
        }
        int width2 = bitmap.getWidth();
        int height2 = bitmap.getHeight();
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, width2 / 4, height2 / 4, true);
        l.d(createScaledBitmap, "scaledBitmap");
        int i3 = (int) this.f60756d;
        if (i3 < 1) {
            bitmap2 = createScaledBitmap;
            createScaledBitmap = bitmap2;
        } else {
            bitmap2 = createScaledBitmap.copy(C12864a2.m22590D(createScaledBitmap), true);
            l.d(bitmap2, "bitmap");
            int width3 = bitmap2.getWidth();
            int height3 = bitmap2.getHeight();
            int i4 = width3 * height3;
            int[] iArr = new int[i4];
            bitmap2.getPixels(iArr, 0, width3, 0, 0, width3, height3);
            int i5 = width3 - 1;
            int i6 = height3 - 1;
            int i7 = i3 + i3 + 1;
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            int[] iArr4 = new int[i4];
            int[] iArr5 = new int[Math.max(width3, height3)];
            int i8 = (i7 + 1) >> 1;
            int i9 = i8 * i8;
            int i10 = i9 * 256;
            int[] iArr6 = new int[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                iArr6[i11] = i11 / i9;
            }
            int[] iArr7 = new int[i7];
            for (int i12 = 0; i12 < i7; i12++) {
                iArr7[i12] = new int[3];
            }
            int i13 = i3 + 1;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < height3; i16++) {
                int i17 = 0;
                int i18 = 0;
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                int i22 = 0;
                int i23 = 0;
                int i24 = 0;
                int i25 = 0;
                for (int i26 = -i3; i26 <= i3; i26++) {
                    int i27 = iArr[Math.min(i5, Math.max(i26, 0)) + i14];
                    int[] iArr8 = iArr7[i26 + i3];
                    iArr8[0] = (i27 & 16711680) >> 16;
                    iArr8[1] = (i27 & 65280) >> 8;
                    iArr8[2] = i27 & 255;
                    int abs = i13 - Math.abs(i26);
                    i25 = (iArr8[0] * abs) + i25;
                    i17 = (iArr8[1] * abs) + i17;
                    i18 = (iArr8[2] * abs) + i18;
                    if (i26 > 0) {
                        i22 += iArr8[0];
                        i23 += iArr8[1];
                        i24 += iArr8[2];
                    } else {
                        i19 += iArr8[0];
                        i20 += iArr8[1];
                        i21 += iArr8[2];
                    }
                }
                int i28 = i25;
                int i29 = i24;
                int i30 = i23;
                int i31 = i22;
                int i32 = i3;
                int i33 = i28;
                for (int i34 = 0; i34 < width3; i34++) {
                    iArr2[i14] = iArr6[i33];
                    iArr3[i14] = iArr6[i17];
                    iArr4[i14] = iArr6[i18];
                    int[] iArr9 = iArr7[((i32 - i3) + i7) % i7];
                    char c = iArr9[0];
                    char c2 = iArr9[1];
                    char c3 = iArr9[2];
                    if (i16 == 0) {
                        iArr5[i34] = Math.min(i34 + i3 + 1, i5);
                    }
                    int i35 = iArr[i15 + iArr5[i34]];
                    iArr9[0] = (i35 & 16711680) >> 16;
                    iArr9[1] = (i35 & 65280) >> 8;
                    iArr9[2] = i35 & 255;
                    int i36 = i31 + iArr9[0];
                    int i37 = i30 + iArr9[1];
                    int i38 = i29 + iArr9[2];
                    i33 = (i33 - i19) + i36;
                    i17 = (i17 - i20) + i37;
                    i18 = (i18 - i21) + i38;
                    i32 = (i32 + 1) % i7;
                    Object[] objArr = iArr7[i32 % i7];
                    i19 = (i19 - c) + objArr[0];
                    i20 = (i20 - c2) + objArr[1];
                    i21 = (i21 - c3) + objArr[2];
                    i31 = i36 - objArr[0];
                    i30 = i37 - objArr[1];
                    i29 = i38 - objArr[2];
                    i14++;
                }
                i15 += width3;
            }
            for (int i39 = 0; i39 < width3; i39++) {
                int i40 = -i3;
                int i41 = i40 * width3;
                int i42 = 0;
                int i43 = 0;
                int i44 = 0;
                int i45 = 0;
                int i46 = 0;
                int i47 = 0;
                int i48 = 0;
                int i49 = 0;
                int i50 = 0;
                while (i40 <= i3) {
                    int max = Math.max(0, i41) + i39;
                    int[] iArr10 = iArr7[i40 + i3];
                    iArr10[0] = iArr2[max];
                    iArr10[1] = iArr3[max];
                    iArr10[2] = iArr4[max];
                    int abs2 = i13 - Math.abs(i40);
                    i50 = (iArr2[max] * abs2) + i50;
                    i42 = (iArr3[max] * abs2) + i42;
                    i43 = (iArr4[max] * abs2) + i43;
                    if (i40 > 0) {
                        i47 += iArr10[0];
                        i48 += iArr10[1];
                        i49 += iArr10[2];
                    } else {
                        i44 += iArr10[0];
                        i45 += iArr10[1];
                        i46 += iArr10[2];
                    }
                    int i51 = i41;
                    if (i40 < i6) {
                        i51 = i41 + width3;
                    }
                    i40++;
                    i41 = i51;
                }
                int i52 = i3;
                int i53 = i39;
                int i54 = i48;
                for (int i55 = 0; i55 < height3; i55++) {
                    iArr[i53] = (iArr[i53] & (-16777216)) | (iArr6[i50] << 16) | (iArr6[i42] << 8) | iArr6[i43];
                    int[] iArr11 = iArr7[((i52 - i3) + i7) % i7];
                    char c4 = iArr11[0];
                    char c5 = iArr11[1];
                    char c6 = iArr11[2];
                    if (i39 == 0) {
                        iArr5[i55] = Math.min(i55 + i13, i6) * width3;
                    }
                    int i56 = iArr5[i55] + i39;
                    iArr11[0] = iArr2[i56];
                    iArr11[1] = iArr3[i56];
                    iArr11[2] = iArr4[i56];
                    int i57 = i47 + iArr11[0];
                    int i58 = i54 + iArr11[1];
                    int i59 = i49 + iArr11[2];
                    i50 = (i50 - i44) + i57;
                    i42 = (i42 - i45) + i58;
                    i43 = (i43 - i46) + i59;
                    i52 = (i52 + 1) % i7;
                    Object[] objArr2 = iArr7[i52];
                    i44 = (i44 - c4) + objArr2[0];
                    i45 = (i45 - c5) + objArr2[1];
                    i46 = (i46 - c6) + objArr2[2];
                    i47 = i57 - objArr2[0];
                    i54 = i58 - objArr2[1];
                    i49 = i59 - objArr2[2];
                    i53 += width3;
                }
            }
            bitmap2.setPixels(iArr, 0, width3, 0, 0, width3, height3);
        }
        createScaledBitmap.recycle();
        Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(bitmap2, width2, height2, true);
        bitmap2.recycle();
        l.d(createScaledBitmap2, "result");
        return createScaledBitmap2;
    }

    /* renamed from: d */
    public final Bitmap m8952d(RenderScript renderScript, Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, width / 4, height / 4, true);
        Allocation createFromBitmap = Allocation.createFromBitmap(renderScript, createScaledBitmap);
        l.d(createFromBitmap, "scaledInput");
        Allocation createTyped = Allocation.createTyped(renderScript, createFromBitmap.getType());
        ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        create.setRadius(this.f60756d);
        create.setInput(createFromBitmap);
        create.forEach(createTyped);
        createTyped.copyTo(createScaledBitmap);
        Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(createScaledBitmap, width, height, true);
        if (!l.a(createScaledBitmap2, createScaledBitmap)) {
            createScaledBitmap.recycle();
        }
        l.d(createScaledBitmap2, "result");
        return createScaledBitmap2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C21868b) && this.f60756d == ((C21868b) obj).f60756d;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f60754b) + (Float.floatToIntBits(this.f60756d) * 31);
    }
}
