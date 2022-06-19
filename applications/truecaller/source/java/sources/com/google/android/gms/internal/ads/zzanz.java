package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanz.class */
public final class zzanz {
    public static final zzanz zza = new zzanz(new int[]{2}, 2);
    private final int[] zzb;
    private final int zzc = 2;

    public zzanz(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, 1);
        this.zzb = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzanz) && Arrays.equals(this.zzb, ((zzanz) obj).zzb);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzb) * 31) + 2;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzb);
        return C22128a.m8610j(new StringBuilder(String.valueOf(arrays).length() + 67), "AudioCapabilities[maxChannelCount=2, supportedEncodings=", arrays, "]");
    }
}
