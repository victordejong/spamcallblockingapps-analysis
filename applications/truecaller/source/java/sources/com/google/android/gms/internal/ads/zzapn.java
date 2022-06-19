package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapn.class */
public final class zzapn {
    private static final byte[] zza = new byte[4096];
    private final zzatz zzb;
    private final long zzc;
    private long zzd;
    private byte[] zze = new byte[65536];
    private int zzf;
    private int zzg;

    public zzapn(zzatz zzatzVar, long j, long j2) {
        this.zzb = zzatzVar;
        this.zzd = j;
        this.zzc = j2;
    }

    private final int zzj(int i) {
        int min = Math.min(this.zzg, i);
        zzl(min);
        return min;
    }

    private final int zzk(byte[] bArr, int i, int i2) {
        int i3 = this.zzg;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.zze, 0, bArr, i, min);
        zzl(min);
        return min;
    }

    private final void zzl(int i) {
        int i2 = this.zzg - i;
        this.zzg = i2;
        this.zzf = 0;
        byte[] bArr = this.zze;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.zze = bArr2;
    }

    private final int zzm(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int zzb = this.zzb.zzb(bArr, i + i3, i2 - i3);
            if (zzb != -1) {
                return i3 + zzb;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    private final void zzn(int i) {
        if (i != -1) {
            this.zzd += i;
        }
    }

    public final int zza(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int zzk = zzk(bArr, i, i2);
        int i3 = zzk;
        if (zzk == 0) {
            i3 = zzm(bArr, i, i2, 0, true);
        }
        zzn(i3);
        return i3;
    }

    public final boolean zzb(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int zzk = zzk(bArr, i, i2);
        while (true) {
            i3 = zzk;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            zzk = zzm(bArr, i, i2, i3, z);
        }
        zzn(i3);
        return i3 != -1;
    }

    public final int zzc(int i) throws IOException, InterruptedException {
        int zzj = zzj(i);
        int i2 = zzj;
        if (zzj == 0) {
            i2 = zzm(zza, 0, Math.min(i, 4096), 0, true);
        }
        zzn(i2);
        return i2;
    }

    public final boolean zzd(int i, boolean z) throws IOException, InterruptedException {
        int i2;
        int zzj = zzj(i);
        while (true) {
            i2 = zzj;
            if (i2 >= i || i2 == -1) {
                break;
            }
            zzj = zzm(zza, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        zzn(i2);
        return i2 != -1;
    }

    public final boolean zze(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!zzf(i2, false)) {
            return false;
        }
        System.arraycopy(this.zze, this.zzf - i2, bArr, i, i2);
        return true;
    }

    public final boolean zzf(int i, boolean z) throws IOException, InterruptedException {
        int i2 = this.zzf + i;
        int length = this.zze.length;
        if (i2 > length) {
            this.zze = Arrays.copyOf(this.zze, zzave.zzf(length + length, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.zzg - this.zzf, i);
        while (min < i) {
            int zzm = zzm(this.zze, this.zzf, i, min, false);
            min = zzm;
            if (zzm == -1) {
                return false;
            }
        }
        int i3 = this.zzf + i;
        this.zzf = i3;
        this.zzg = Math.max(this.zzg, i3);
        return true;
    }

    public final void zzg() {
        this.zzf = 0;
    }

    public final long zzh() {
        return this.zzd;
    }

    public final long zzi() {
        return this.zzc;
    }
}
