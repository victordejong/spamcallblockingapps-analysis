package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdb.class */
public final class zzdb {
    public static final zzdb zza = new zzdb(new int[]{2}, 8);
    private static final zzdb zzb = new zzdb(new int[]{2, 5, 6}, 8);
    private final int[] zzc;
    private final int zzd = 8;

    public zzdb(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.zzc = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzdb) && Arrays.equals(this.zzc, ((zzdb) obj).zzc);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzc) * 31) + 8;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzc);
        return C22128a.m8610j(new StringBuilder(String.valueOf(arrays).length() + 67), "AudioCapabilities[maxChannelCount=8, supportedEncodings=", arrays, "]");
    }
}
