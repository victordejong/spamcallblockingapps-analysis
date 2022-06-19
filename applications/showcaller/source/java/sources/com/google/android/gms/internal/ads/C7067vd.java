package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.vd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vd.class */
public final class C7067vd {

    /* renamed from: a */
    public final int f31137a = 1;

    /* renamed from: b */
    public final byte[] f31138b;

    public C7067vd(int i, byte[] bArr) {
        this.f31138b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C7067vd.class == obj.getClass() && Arrays.equals(this.f31138b, ((C7067vd) obj).f31138b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f31138b) + 31;
    }
}
