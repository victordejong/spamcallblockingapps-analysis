package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaz.class */
final class zzaaz {
    private final zzfd zza = new zzfd(8);
    private int zzb;

    private final long zzb(zzwq zzwqVar) throws IOException {
        zzwk zzwkVar = (zzwk) zzwqVar;
        zzwkVar.zzm(this.zza.zzH(), 0, 1, false);
        int i = this.zza.zzH()[0] & 255;
        if (i != 0) {
            int i2 = 128;
            int i3 = 0;
            while ((i & i2) == 0) {
                i2 >>= 1;
                i3++;
            }
            int i4 = i & (i2 ^ (-1));
            zzwkVar.zzm(this.zza.zzH(), 1, i3, false);
            int i5 = 0;
            int i6 = i4;
            while (true) {
                int i7 = i6;
                if (i5 >= i3) {
                    this.zzb = i3 + 1 + this.zzb;
                    return i7;
                }
                i5++;
                i6 = (this.zza.zzH()[i5] & 255) + (i7 << 8);
            }
        } else {
            return Long.MIN_VALUE;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    public final boolean zza(zzwq zzwqVar) throws IOException {
        long zzb;
        int i;
        ?? zzc = zzwqVar.zzc();
        int i2 = (zzc > (-1L) ? 1 : (zzc == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = zzc > 1024 ? (char) 1024 : zzc;
        }
        int i3 = c;
        zzwk zzwkVar = (zzwk) zzwqVar;
        zzwkVar.zzm(this.zza.zzH(), 0, 4, false);
        char zzs = this.zza.zzs();
        this.zzb = 4;
        while (zzs != 440786851) {
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zzwkVar.zzm(this.zza.zzH(), 0, 1, false);
            zzs = ((zzs << '\b') & (-256)) | (this.zza.zzH()[0] & 255);
        }
        long zzb2 = zzb(zzwqVar);
        long j = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + zzb2 >= zzc) {
                return false;
            }
            while (true) {
                int i5 = (this.zzb > (j + zzb2) ? 1 : (this.zzb == (j + zzb2) ? 0 : -1));
                if (i5 >= 0) {
                    return i5 == 0;
                } else if (zzb(zzwqVar) == Long.MIN_VALUE || (zzb = zzb(zzwqVar)) < 0) {
                    return false;
                } else {
                    if (i != 0) {
                        int i6 = (int) zzb;
                        zzwkVar.zzl(i6, false);
                        this.zzb += i6;
                    }
                }
            }
        } else {
            return false;
        }
    }
}
