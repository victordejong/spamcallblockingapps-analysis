package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdou.class */
public final class zzdou {
    private final zzbr zza;
    private final Clock zzb;
    private final Executor zzc;

    public zzdou(zzbr zzbrVar, Clock clock, Executor executor) {
        this.zza = zzbrVar;
        this.zzb = clock;
        this.zzc = executor;
    }

    public static /* synthetic */ Bitmap zzb(zzdou zzdouVar, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeu)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zzdouVar.zzc(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzbet.zzc().zzc(zzbjl.zzev)).intValue())) / 2);
            }
        }
        return zzdouVar.zzc(bArr, options);
    }

    private final Bitmap zzc(byte[] bArr, BitmapFactory.Options options) {
        long mo38789a = this.zzb.mo38789a();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long mo38789a2 = this.zzb.mo38789a();
        if (decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder m8546z = C22128a.m8546z(108, "Decoded image w: ", width, " h:", height);
            m8546z.append(" bytes: ");
            m8546z.append(allocationByteCount);
            m8546z.append(" time: ");
            m8546z.append(mo38789a2 - mo38789a);
            m8546z.append(" on ui thread: ");
            m8546z.append(z);
            zze.zza(m8546z.toString());
        }
        return decodeByteArray;
    }

    public final zzfsm<Bitmap> zza(String str, double d, boolean z) {
        return zzfsd.zzj(this.zza.zza(str), new zzdot(this, d, z), this.zzc);
    }
}
