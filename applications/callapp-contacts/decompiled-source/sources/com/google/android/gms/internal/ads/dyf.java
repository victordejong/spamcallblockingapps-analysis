package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyf.class */
public final class dyf {

    /* renamed from: a  reason: collision with root package name */
    public final int f27396a = 1;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f27397b;

    public dyf(int i, byte[] bArr) {
        this.f27397b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dyf dyfVar = (dyf) obj;
        return this.f27396a == dyfVar.f27396a && Arrays.equals(this.f27397b, dyfVar.f27397b);
    }

    public final int hashCode() {
        return (this.f27396a * 31) + Arrays.hashCode(this.f27397b);
    }
}
