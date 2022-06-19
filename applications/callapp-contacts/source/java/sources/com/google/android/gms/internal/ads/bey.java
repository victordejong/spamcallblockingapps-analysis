package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bey.class */
public final class bey {

    /* renamed from: a */
    private final zzay f43761a;

    /* renamed from: b */
    private final AbstractC12102f f43762b;

    /* renamed from: c */
    private final Executor f43763c;

    public bey(zzay zzayVar, AbstractC12102f abstractC12102f, Executor executor) {
        this.f43761a = zzayVar;
        this.f43762b = abstractC12102f;
        this.f43763c = executor;
    }

    /* renamed from: a */
    public final Bitmap m17891a(byte[] bArr, BitmapFactory.Options options) {
        long mo19038b = this.f43762b.mo19038b();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long mo19038b2 = this.f43762b.mo19038b();
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
            sb.append(mo19038b2 - mo19038b);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzd.zzed(sb.toString());
        }
        return decodeByteArray;
    }

    /* renamed from: a */
    public final dbt<Bitmap> m17892a(String str, double d, boolean z) {
        return daj.m16942a(zzay.zzeq(str), new bfb(this, d, z), this.f43763c);
    }
}
