package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyp.class */
final class dyp {

    /* renamed from: a */
    final ecy f48109a = new ecy(8);

    /* renamed from: b */
    int f48110b;

    /* renamed from: a */
    public final long m15456a(dxt dxtVar) throws IOException, InterruptedException {
        int i = 0;
        dxtVar.mo15490c(this.f48109a.f48724a, 0, 1);
        int i2 = this.f48109a.f48724a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        dxtVar.mo15490c(this.f48109a.f48724a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f48109a.f48724a[i] & 255) + (i5 << 8);
        }
        this.f48110b += i4 + 1;
        return i5;
    }
}
