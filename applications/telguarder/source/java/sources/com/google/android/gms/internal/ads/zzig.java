package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzig.class */
public final class zzig {
    private static final zzig zzait = new zzig(new int[]{2}, 2);
    private final int[] zzaiu;
    private final int zzaiv = 2;

    private zzig(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.zzaiu = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzig)) {
            return false;
        }
        zzig zzigVar = (zzig) obj;
        return Arrays.equals(this.zzaiu, zzigVar.zzaiu) && this.zzaiv == zzigVar.zzaiv;
    }

    public final int hashCode() {
        return this.zzaiv + (Arrays.hashCode(this.zzaiu) * 31);
    }

    public final String toString() {
        int i = this.zzaiv;
        String arrays = Arrays.toString(this.zzaiu);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
