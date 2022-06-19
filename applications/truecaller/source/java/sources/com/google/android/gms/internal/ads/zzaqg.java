package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqg.class */
public final class zzaqg {
    private final zzaux zza = new zzaux(8);
    private int zzb;

    private final long zzb(zzapn zzapnVar) throws IOException, InterruptedException {
        zzapnVar.zze(this.zza.zza, 0, 1, false);
        int i = this.zza.zza[0] & 255;
        if (i != 0) {
            int i2 = 128;
            int i3 = 0;
            while ((i & i2) == 0) {
                i2 >>= 1;
                i3++;
            }
            int i4 = i & (i2 ^ (-1));
            zzapnVar.zze(this.zza.zza, 1, i3, false);
            int i5 = 0;
            int i6 = i4;
            while (true) {
                int i7 = i6;
                if (i5 >= i3) {
                    this.zzb = i3 + 1 + this.zzb;
                    return i7;
                }
                i5++;
                i6 = (this.zza.zza[i5] & 255) + (i7 << 8);
            }
        } else {
            return Long.MIN_VALUE;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    public final boolean zza(zzapn zzapnVar) throws IOException, InterruptedException {
        long zzb;
        int i;
        ?? zzi = zzapnVar.zzi();
        int i2 = (zzi > (-1L) ? 1 : (zzi == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = zzi > 1024 ? (char) 1024 : zzi;
        }
        int i3 = c;
        zzapnVar.zze(this.zza.zza, 0, 4, false);
        char zzp = this.zza.zzp();
        this.zzb = 4;
        while (zzp != 440786851) {
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zzapnVar.zze(this.zza.zza, 0, 1, false);
            zzp = ((zzp << '\b') & (-256)) | (this.zza.zza[0] & 255);
        }
        long zzb2 = zzb(zzapnVar);
        long j = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + zzb2 >= zzi) {
                return false;
            }
            while (true) {
                int i5 = (this.zzb > (j + zzb2) ? 1 : (this.zzb == (j + zzb2) ? 0 : -1));
                if (i5 >= 0) {
                    return i5 == 0;
                } else if (zzb(zzapnVar) == Long.MIN_VALUE || (zzb = zzb(zzapnVar)) < 0) {
                    return false;
                } else {
                    if (i != 0) {
                        zzapnVar.zzf((int) zzb, false);
                        this.zzb = (int) (this.zzb + zzb);
                    }
                }
            }
        } else {
            return false;
        }
    }
}
