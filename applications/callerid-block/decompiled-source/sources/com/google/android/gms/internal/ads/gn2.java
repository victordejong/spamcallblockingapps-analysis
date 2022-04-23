package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gn2.class */
public final class gn2 {

    /* renamed from: a */
    public final int f6673a = 1;

    /* renamed from: b */
    public final byte[] f6674b;

    public gn2(int i, byte[] bArr) {
        this.f6674b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && gn2.class == obj.getClass() && Arrays.equals(this.f6674b, ((gn2) obj).f6674b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6674b) + 31;
    }
}
