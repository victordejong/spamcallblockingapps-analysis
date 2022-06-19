package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfuc.class */
public final class zzfuc implements Comparable<zzfuc> {
    private final byte[] zza;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(zzfuc zzfucVar) {
        int i;
        zzfuc zzfucVar2 = zzfucVar;
        int length = this.zza.length;
        int length2 = zzfucVar2.zza.length;
        if (length != length2) {
            i = length - length2;
        } else {
            int i2 = 0;
            while (true) {
                byte[] bArr = this.zza;
                i = 0;
                if (i2 >= bArr.length) {
                    break;
                }
                byte b = bArr[i2];
                byte b2 = zzfucVar2.zza[i2];
                if (b != b2) {
                    i = b - b2;
                    break;
                }
                i2++;
            }
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfuc)) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzfuc) obj).zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append("0123456789abcdef".charAt(i >> 4));
            sb.append("0123456789abcdef".charAt(i & 15));
        }
        return sb.toString();
    }
}
