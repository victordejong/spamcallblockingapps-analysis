package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqj.class */
public final class zzqj {
    private final zzamf zza = new zzamf(8);
    private int zzb;

    private final long zzb(zznv zznvVar) throws IOException {
        zznp zznpVar = (zznp) zznvVar;
        zznpVar.zzh(this.zza.zzi(), 0, 1, false);
        int i = this.zza.zzi()[0] & 255;
        if (i != 0) {
            int i2 = 128;
            int i3 = 0;
            while ((i & i2) == 0) {
                i2 >>= 1;
                i3++;
            }
            int i4 = i & (i2 ^ (-1));
            zznpVar.zzh(this.zza.zzi(), 1, i3, false);
            int i5 = 0;
            int i6 = i4;
            while (true) {
                int i7 = i6;
                if (i5 >= i3) {
                    this.zzb = i3 + 1 + this.zzb;
                    return i7;
                }
                i5++;
                i6 = (this.zza.zzi()[i5] & 255) + (i7 << 8);
            }
        } else {
            return Long.MIN_VALUE;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    public final boolean zza(zznv zznvVar) throws IOException {
        long zzb;
        int i;
        ?? zzo = zznvVar.zzo();
        int i2 = (zzo > (-1L) ? 1 : (zzo == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = zzo > 1024 ? (char) 1024 : zzo;
        }
        int i3 = c;
        zznp zznpVar = (zznp) zznvVar;
        zznpVar.zzh(this.zza.zzi(), 0, 4, false);
        char zzt = this.zza.zzt();
        this.zzb = 4;
        while (zzt != 440786851) {
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zznpVar.zzh(this.zza.zzi(), 0, 1, false);
            zzt = ((zzt << '\b') & (-256)) | (this.zza.zzi()[0] & 255);
        }
        long zzb2 = zzb(zznvVar);
        long j = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + zzb2 >= zzo) {
                return false;
            }
            while (true) {
                int i5 = (this.zzb > (j + zzb2) ? 1 : (this.zzb == (j + zzb2) ? 0 : -1));
                if (i5 >= 0) {
                    return i5 == 0;
                } else if (zzb(zznvVar) == Long.MIN_VALUE || (zzb = zzb(zznvVar)) < 0) {
                    return false;
                } else {
                    if (i != 0) {
                        int i6 = (int) zzb;
                        zznpVar.zzj(i6, false);
                        this.zzb += i6;
                    }
                }
            }
        } else {
            return false;
        }
    }
}
