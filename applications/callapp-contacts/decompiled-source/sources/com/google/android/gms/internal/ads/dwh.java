package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwh.class */
public final class dwh {

    /* renamed from: a  reason: collision with root package name */
    private static final dwh f27301a = new dwh(new int[]{2}, 2);

    /* renamed from: b  reason: collision with root package name */
    private final int[] f27302b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27303c = 2;

    private dwh(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f27302b = copyOf;
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
        return Arrays.equals(this.f27302b, dwhVar.f27302b) && this.f27303c == dwhVar.f27303c;
    }

    public final int hashCode() {
        return this.f27303c + (Arrays.hashCode(this.f27302b) * 31);
    }

    public final String toString() {
        int i = this.f27303c;
        String arrays = Arrays.toString(this.f27302b);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
