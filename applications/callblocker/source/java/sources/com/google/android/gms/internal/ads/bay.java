package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bay.class */
public final class bay {

    /* renamed from: a */
    private final C3606wq f10825a;

    /* renamed from: b */
    private final AbstractC2708e f10826b;

    /* renamed from: c */
    private final Executor f10827c;

    public bay(C3606wq c3606wq, AbstractC2708e abstractC2708e, Executor executor) {
        this.f10825a = c3606wq;
        this.f10826b = abstractC2708e;
        this.f10827c = executor;
    }

    /* renamed from: a */
    public final Bitmap m12135a(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (160.0d * d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16471cX)).booleanValue()) {
            options.inJustDecodeBounds = true;
            m12134a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outHeight * options.outWidth;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) dyx.m8158e().m7876a(edi.f16472cY)).intValue())) / 2);
            }
        }
        return m12134a(bArr, options);
    }

    /* renamed from: a */
    private final Bitmap m12134a(byte[] bArr, BitmapFactory.Options options) {
        boolean z = false;
        long mo13861b = this.f10826b.mo13861b();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long mo13861b2 = this.f10826b.mo13861b();
        if (Build.VERSION.SDK_INT >= 19 && decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            C3556uu.m7052a(new StringBuilder(108).append("Decoded image w: ").append(width).append(" h:").append(height).append(" bytes: ").append(allocationByteCount).append(" time: ").append(mo13861b2 - mo13861b).append(" on ui thread: ").append(z).toString());
        }
        return decodeByteArray;
    }

    /* renamed from: a */
    public final crt<Bitmap> m12136a(String str, double d, boolean z) {
        return crg.m10783a(C3606wq.m6870a(str), new bax(this, d, z), this.f10827c);
    }
}
