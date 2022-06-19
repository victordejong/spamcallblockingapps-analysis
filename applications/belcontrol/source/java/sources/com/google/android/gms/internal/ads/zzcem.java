package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcem.class */
public final class zzcem {
    private final Executor executor;
    private final Clock zzbqg;
    private final zzay zzghk;

    public zzcem(zzay zzayVar, Clock clock, Executor executor) {
        this.zzghk = zzayVar;
        this.zzbqg = clock;
        this.executor = executor;
    }

    public final Bitmap zza(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxv)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zza(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzwr.zzqr().zzd(zzabp.zzcxw)).intValue())) / 2);
            }
        }
        return zza(bArr, options);
    }

    private final Bitmap zza(byte[] bArr, BitmapFactory.Options options) {
        long elapsedRealtime = this.zzbqg.elapsedRealtime();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = this.zzbqg.elapsedRealtime();
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
            sb.append(elapsedRealtime2 - elapsedRealtime);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzd.zzeb(sb.toString());
        }
        return decodeByteArray;
    }

    public final zzdzw<Bitmap> zza(String str, double d, boolean z) {
        return zzdzk.zzb(zzay.zzeo(str), new zzcel(this, d, z), this.executor);
    }
}
