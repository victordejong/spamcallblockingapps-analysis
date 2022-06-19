package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyq.class */
final class zzfyq implements Comparable<zzfyq> {
    private final byte[] zza;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(zzfyq zzfyqVar) {
        int i;
        zzfyq zzfyqVar2 = zzfyqVar;
        int length = this.zza.length;
        int length2 = zzfyqVar2.zza.length;
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
                byte b2 = zzfyqVar2.zza[i2];
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
        if (!(obj instanceof zzfyq)) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzfyq) obj).zza);
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
