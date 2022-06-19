package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapt.class */
public final class zzapt {
    public static final zzapt zza = new zzapt(new int[]{2}, 2);
    private final int[] zzb;
    private final int zzc = 2;

    public zzapt(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, 1);
        this.zzb = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzapt) && Arrays.equals(this.zzb, ((zzapt) obj).zzb);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzb) * 31) + 2;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzb);
        return C0608b.m7625j(new StringBuilder(String.valueOf(arrays).length() + 67), "AudioCapabilities[maxChannelCount=2, supportedEncodings=", arrays, "]");
    }
}
