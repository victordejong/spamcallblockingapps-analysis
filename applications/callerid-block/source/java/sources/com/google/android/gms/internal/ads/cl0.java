package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.C1414d0;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.common.util.AbstractC1610f;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cl0.class */
public final class cl0 {

    /* renamed from: a */
    private final C1414d0 f6265a;

    /* renamed from: b */
    private final AbstractC1610f f6266b;

    /* renamed from: c */
    private final Executor f6267c;

    public cl0(C1414d0 c1414d0, AbstractC1610f abstractC1610f, Executor executor) {
        this.f6265a = c1414d0;
        this.f6266b = abstractC1610f;
        this.f6267c = executor;
    }

    /* renamed from: b */
    static /* synthetic */ Bitmap m7812b(cl0 cl0Var, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7278K3)).booleanValue()) {
            options.inJustDecodeBounds = true;
            cl0Var.m7811c(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) C1674c.m7906c().m6878b(C1842m3.f7284L3)).intValue())) / 2);
            }
        }
        return cl0Var.m7811c(bArr, options);
    }

    /* renamed from: c */
    private final Bitmap m7811c(byte[] bArr, BitmapFactory.Options options) {
        long m8245c = this.f6266b.m8245c();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long m8245c2 = this.f6266b.m8245c();
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
            sb.append(m8245c2 - m8245c);
            sb.append(" on ui thread: ");
            sb.append(z);
            y0.k(sb.toString());
        }
        return decodeByteArray;
    }

    /* renamed from: a */
    public final rz1<Bitmap> m7813a(String str, double d, boolean z) {
        return kz1.i(this.f6265a.m8845a(str), new bl0(this, d, z), this.f6267c);
    }
}
