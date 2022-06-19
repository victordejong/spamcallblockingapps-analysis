package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzari.class */
public final class zzari {
    private static final byte[] zza = new byte[4096];
    private final zzavw zzb;
    private final long zzc;
    private long zzd;
    private byte[] zze = new byte[65536];
    private int zzf;
    private int zzg;

    public zzari(zzavw zzavwVar, long j, long j2) {
        this.zzb = zzavwVar;
        this.zzd = j;
        this.zzc = j2;
    }

    private final int zzj(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int zza2 = this.zzb.zza(bArr, i + i3, i2 - i3);
            if (zza2 != -1) {
                return i3 + zza2;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    private final int zzk(byte[] bArr, int i, int i2) {
        int i3 = this.zzg;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.zze, 0, bArr, i, min);
        zzn(min);
        return min;
    }

    private final int zzl(int i) {
        int min = Math.min(this.zzg, i);
        zzn(min);
        return min;
    }

    private final void zzm(int i) {
        if (i != -1) {
            this.zzd += i;
        }
    }

    private final void zzn(int i) {
        int i2 = this.zzg - i;
        this.zzg = i2;
        this.zzf = 0;
        byte[] bArr = this.zze;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.zze = bArr2;
    }

    public final int zza(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int zzk = zzk(bArr, i, i2);
        int i3 = zzk;
        if (zzk == 0) {
            i3 = zzj(bArr, i, i2, 0, true);
        }
        zzm(i3);
        return i3;
    }

    public final int zzb(int i) throws IOException, InterruptedException {
        int zzl = zzl(i);
        int i2 = zzl;
        if (zzl == 0) {
            i2 = zzj(zza, 0, Math.min(i, 4096), 0, true);
        }
        zzm(i2);
        return i2;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzd;
    }

    public final void zze() {
        this.zzf = 0;
    }

    public final boolean zzf(int i, boolean z) throws IOException, InterruptedException {
        int i2 = this.zzf + i;
        int length = this.zze.length;
        if (i2 > length) {
            this.zze = Arrays.copyOf(this.zze, zzaxb.zze(length + length, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.zzg - this.zzf, i);
        while (min < i) {
            int zzj = zzj(this.zze, this.zzf, i, min, false);
            min = zzj;
            if (zzj == -1) {
                return false;
            }
        }
        int i3 = this.zzf + i;
        this.zzf = i3;
        this.zzg = Math.max(this.zzg, i3);
        return true;
    }

    public final boolean zzg(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!zzf(i2, false)) {
            return false;
        }
        System.arraycopy(this.zze, this.zzf - i2, bArr, i, i2);
        return true;
    }

    public final boolean zzh(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int zzk = zzk(bArr, i, i2);
        while (true) {
            i3 = zzk;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            zzk = zzj(bArr, i, i2, i3, z);
        }
        zzm(i3);
        return i3 != -1;
    }

    public final boolean zzi(int i, boolean z) throws IOException, InterruptedException {
        int i2;
        int zzl = zzl(i);
        while (true) {
            i2 = zzl;
            if (i2 >= i || i2 == -1) {
                break;
            }
            zzl = zzj(zza, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        zzm(i2);
        return i2 != -1;
    }
}
