package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzle.class */
public final class zzle {
    public static final zzle zza = new zzle(new int[]{2}, 8);
    private static final zzle zzb = new zzle(new int[]{2, 5, 6}, 8);
    private final int[] zzc;
    private final int zzd = 8;

    public zzle(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.zzc = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzle) && Arrays.equals(this.zzc, ((zzle) obj).zzc);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzc) * 31) + 8;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzc);
        return C0608b.m7625j(new StringBuilder(String.valueOf(arrays).length() + 67), "AudioCapabilities[maxChannelCount=8, supportedEncodings=", arrays, "]");
    }
}
