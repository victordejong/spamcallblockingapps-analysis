package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.ads.internal.util.C5730r0;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bh1.class */
public final class bh1 {

    /* renamed from: a */
    private final C5730r0 f20450a;

    /* renamed from: b */
    private final AbstractC6227e f20451b;

    /* renamed from: c */
    private final Executor f20452c;

    public bh1(C5730r0 c5730r0, AbstractC6227e abstractC6227e, Executor executor) {
        this.f20450a = c5730r0;
        this.f20451b = abstractC6227e;
        this.f20452c = executor;
    }

    /* renamed from: b */
    public static /* synthetic */ Bitmap m16372b(bh1 bh1Var, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25811u4)).booleanValue()) {
            options.inJustDecodeBounds = true;
            bh1Var.m16371c(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25819v4)).intValue())) / 2);
            }
        }
        return bh1Var.m16371c(bArr, options);
    }

    /* renamed from: c */
    private final Bitmap m16371c(byte[] bArr, BitmapFactory.Options options) {
        long mo16806b = this.f20451b.mo16806b();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long mo16806b2 = this.f20451b.mo16806b();
        if (Build.VERSION.SDK_INT >= 19 && decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(mo16806b2 - mo16806b);
            sb.append(" on ui thread: ");
            sb.append(z);
            C5722o1.m17990k(sb.toString());
        }
        return decodeByteArray;
    }

    /* renamed from: a */
    public final r03<Bitmap> m16373a(String str, double d, boolean z) {
        return k03.m13994j(this.f20450a.m17987a(str), new ah1(this, d, z), this.f20452c);
    }
}
