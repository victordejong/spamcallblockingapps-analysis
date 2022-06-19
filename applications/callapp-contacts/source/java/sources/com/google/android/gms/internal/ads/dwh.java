package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwh.class */
public final class dwh {

    /* renamed from: a */
    private static final dwh f47786a = new dwh(new int[]{2}, 2);

    /* renamed from: b */
    private final int[] f47787b;

    /* renamed from: c */
    private final int f47788c = 2;

    private dwh(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f47787b = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dwh)) {
            return false;
        }
        dwh dwhVar = (dwh) obj;
        return Arrays.equals(this.f47787b, dwhVar.f47787b) && this.f47788c == dwhVar.f47788c;
    }

    public final int hashCode() {
        return this.f47788c + (Arrays.hashCode(this.f47787b) * 31);
    }

    public final String toString() {
        int i = this.f47788c;
        String arrays = Arrays.toString(this.f47787b);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
