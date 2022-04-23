package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bey.class */
public final class bey {

    /* renamed from: a  reason: collision with root package name */
    private final zzay f24299a;

    /* renamed from: b  reason: collision with root package name */
    private final f f24300b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f24301c;

    public bey(zzay zzayVar, f fVar, Executor executor) {
        this.f24299a = zzayVar;
        this.f24300b = fVar;
        this.f24301c = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        long b2 = this.f24300b.b();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long b3 = this.f24300b.b();
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
            sb.append(b3 - b2);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzd.zzed(sb.toString());
        }
        return decodeByteArray;
    }

    public final dbt<Bitmap> a(String str, double d2, boolean z) {
        return daj.a(zzay.zzeq(str), new bfb(this, d2, z), this.f24301c);
    }
}
