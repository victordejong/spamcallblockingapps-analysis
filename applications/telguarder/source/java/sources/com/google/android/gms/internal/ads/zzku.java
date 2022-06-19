package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzku.class */
final class zzku {
    private final zzpn zzapt = new zzpn(8);
    private int zzast;

    private final long zzc(zzjz zzjzVar) throws IOException, InterruptedException {
        int i = 0;
        zzjzVar.zza(this.zzapt.data, 0, 1);
        int i2 = this.zzapt.data[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        zzjzVar.zza(this.zzapt.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.zzapt.data[i] & 255) + (i5 << 8);
        }
        this.zzast += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    public final boolean zza(zzjz zzjzVar) throws IOException, InterruptedException {
        long zzc;
        int i;
        ?? length = zzjzVar.getLength();
        int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = length > 1024 ? (char) 1024 : length;
        }
        int i3 = c;
        zzjzVar.zza(this.zzapt.data, 0, 4);
        char zzix = this.zzapt.zzix();
        this.zzast = 4;
        while (zzix != 440786851) {
            int i4 = this.zzast + 1;
            this.zzast = i4;
            if (i4 == i3) {
                return false;
            }
            zzjzVar.zza(this.zzapt.data, 0, 1);
            zzix = ((zzix << '\b') & (-256)) | (this.zzapt.data[0] & 255);
        }
        long zzc2 = zzc(zzjzVar);
        long j = this.zzast;
        if (zzc2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + zzc2 >= length) {
                return false;
            }
            while (true) {
                int i5 = this.zzast;
                long j2 = i5;
                long j3 = j + zzc2;
                if (j2 >= j3) {
                    return ((long) i5) == j3;
                } else if (zzc(zzjzVar) == Long.MIN_VALUE || (zzc = zzc(zzjzVar)) < 0 || zzc > 2147483647L) {
                    return false;
                } else {
                    if (i != 0) {
                        zzjzVar.zzah((int) zzc);
                        this.zzast = (int) (this.zzast + zzc);
                    }
                }
            }
        } else {
            return false;
        }
    }
}
