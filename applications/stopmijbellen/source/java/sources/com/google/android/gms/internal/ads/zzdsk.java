package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsk.class */
public final class zzdsk {
    private final zzbs zza;
    private final Clock zzb;
    private final Executor zzc;

    public zzdsk(zzbs zzbsVar, Clock clock, Executor executor) {
        this.zza = zzbsVar;
        this.zzb = clock;
        this.zzc = executor;
    }

    public static /* bridge */ /* synthetic */ Bitmap zza(zzdsk zzdskVar, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeB)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zzdskVar.zzc(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzbgq.zzc().zzb(zzblj.zzeC)).intValue())) / 2);
            }
        }
        return zzdskVar.zzc(bArr, options);
    }

    private final Bitmap zzc(byte[] bArr, BitmapFactory.Options options) {
        long elapsedRealtime = this.zzb.elapsedRealtime();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = this.zzb.elapsedRealtime();
        if (decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder m8753i = C0082b.m8753i(108, "Decoded image w: ", width, " h:", height);
            m8753i.append(" bytes: ");
            m8753i.append(allocationByteCount);
            m8753i.append(" time: ");
            m8753i.append(elapsedRealtime2 - elapsedRealtime);
            m8753i.append(" on ui thread: ");
            m8753i.append(z);
            zze.zza(m8753i.toString());
        }
        return decodeByteArray;
    }

    public final zzfxa<Bitmap> zzb(String str, double d, boolean z) {
        return zzfwq.zzm(this.zza.zza(str), new zzdsj(this, d, z), this.zzc);
    }
}
