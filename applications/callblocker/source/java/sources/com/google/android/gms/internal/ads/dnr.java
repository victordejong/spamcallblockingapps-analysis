package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnr.class */
public final class dnr {

    /* renamed from: a */
    public final int f14909a = 1;

    /* renamed from: b */
    public final byte[] f14910b;

    public dnr(int i, byte[] bArr) {
        this.f14910b = bArr;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dnr dnrVar = (dnr) obj;
                if (this.f14909a != dnrVar.f14909a || !Arrays.equals(this.f14910b, dnrVar.f14910b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return (this.f14909a * 31) + Arrays.hashCode(this.f14910b);
    }
}
