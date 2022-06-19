package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyf.class */
public final class dyf {

    /* renamed from: a */
    public final int f48003a = 1;

    /* renamed from: b */
    public final byte[] f48004b;

    public dyf(int i, byte[] bArr) {
        this.f48004b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dyf dyfVar = (dyf) obj;
        return this.f48003a == dyfVar.f48003a && Arrays.equals(this.f48004b, dyfVar.f48004b);
    }

    public final int hashCode() {
        return (this.f48003a * 31) + Arrays.hashCode(this.f48004b);
    }
}
