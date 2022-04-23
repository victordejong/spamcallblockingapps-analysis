package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyp.class */
final class dyp {

    /* renamed from: a  reason: collision with root package name */
    final ecy f27413a = new ecy(8);

    /* renamed from: b  reason: collision with root package name */
    int f27414b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(dxt dxtVar) throws IOException, InterruptedException {
        int i = 0;
        dxtVar.c(this.f27413a.f27649a, 0, 1);
        int i2 = this.f27413a.f27649a[0] & 255;
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
        dxtVar.c(this.f27413a.f27649a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f27413a.f27649a[i] & 255) + (i5 << 8);
        }
        this.f27414b += i4 + 1;
        return i5;
    }
}
