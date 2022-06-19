package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwk.class */
public final class zzwk implements zzwq {
    private final zzdg zzb;
    private final long zzc;
    private long zzd;
    private int zzf;
    private int zzg;
    private byte[] zze = new byte[65536];
    private final byte[] zza = new byte[4096];

    public zzwk(zzdg zzdgVar, long j, long j2) {
        this.zzb = zzdgVar;
        this.zzd = j;
        this.zzc = j2;
    }

    private final int zzp(byte[] bArr, int i, int i2) {
        int i3 = this.zzg;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.zze, 0, bArr, i, min);
        zzu(min);
        return min;
    }

    private final int zzq(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int zzg = this.zzb.zzg(bArr, i + i3, i2 - i3);
            if (zzg != -1) {
                return i3 + zzg;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedIOException();
    }

    private final int zzr(int i) {
        int min = Math.min(this.zzg, i);
        zzu(min);
        return min;
    }

    private final void zzs(int i) {
        if (i != -1) {
            this.zzd += i;
        }
    }

    private final void zzt(int i) {
        int i2 = this.zzf + i;
        int length = this.zze.length;
        if (i2 > length) {
            this.zze = Arrays.copyOf(this.zze, zzfn.zzf(length + length, 65536 + i2, i2 + 524288));
        }
    }

    private final void zzu(int i) {
        int i2 = this.zzg - i;
        this.zzg = i2;
        this.zzf = 0;
        byte[] bArr = this.zze;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.zze = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        zzt(i2);
        int i4 = this.zzg;
        int i5 = this.zzf;
        int i6 = i4 - i5;
        if (i6 == 0) {
            i3 = zzq(this.zze, i5, i2, 0, true);
            if (i3 == -1) {
                return -1;
            }
            this.zzg += i3;
        } else {
            i3 = Math.min(i2, i6);
        }
        System.arraycopy(this.zze, this.zzf, bArr, i, i3);
        this.zzf += i3;
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final int zzb(int i) throws IOException {
        int zzr = zzr(1);
        int i2 = zzr;
        if (zzr == 0) {
            i2 = zzq(this.zza, 0, Math.min(1, 4096), 0, true);
        }
        zzs(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final long zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final long zzd() {
        return this.zzd + this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final long zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzf(int i) throws IOException {
        zzl(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        int zzp = zzp(bArr, i, i2);
        int i3 = zzp;
        if (zzp == 0) {
            i3 = zzq(bArr, i, i2, 0, true);
        }
        zzs(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzh(byte[] bArr, int i, int i2) throws IOException {
        zzm(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzi(byte[] bArr, int i, int i2) throws IOException {
        zzn(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzj() {
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzk(int i) throws IOException {
        zzo(i, false);
    }

    public final boolean zzl(int i, boolean z) throws IOException {
        zzt(i);
        int i2 = this.zzg - this.zzf;
        while (i2 < i) {
            i2 = zzq(this.zze, this.zzf, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.zzg = this.zzf + i2;
        }
        this.zzf += i;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final boolean zzm(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!zzl(i2, z)) {
            return false;
        }
        System.arraycopy(this.zze, this.zzf - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final boolean zzn(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int i3;
        int zzp = zzp(bArr, i, i2);
        while (true) {
            i3 = zzp;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            zzp = zzq(bArr, i, i2, i3, z);
        }
        zzs(i3);
        return i3 != -1;
    }

    public final boolean zzo(int i, boolean z) throws IOException {
        int i2;
        int zzr = zzr(i);
        while (true) {
            i2 = zzr;
            if (i2 >= i || i2 == -1) {
                break;
            }
            zzr = zzq(this.zza, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        zzs(i2);
        return i2 != -1;
    }
}
