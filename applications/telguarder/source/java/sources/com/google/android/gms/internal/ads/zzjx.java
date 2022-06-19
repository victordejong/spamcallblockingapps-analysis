package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjx.class */
public final class zzjx implements zzjz {
    private static final byte[] zzaoo = new byte[4096];
    private long position;
    private final zzon zzaop;
    private final long zzaoq;
    private byte[] zzaor = new byte[65536];
    private int zzaos;
    private int zzaot;

    public zzjx(zzon zzonVar, long j, long j2) {
        this.zzaop = zzonVar;
        this.position = j;
        this.zzaoq = j2;
    }

    private final int zza(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.zzaop.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    private final int zzai(int i) {
        int min = Math.min(this.zzaot, i);
        zzaj(min);
        return min;
    }

    private final void zzaj(int i) {
        int i2 = this.zzaot - i;
        this.zzaot = i2;
        this.zzaos = 0;
        byte[] bArr = this.zzaor;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.zzaor = bArr2;
    }

    private final void zzak(int i) {
        if (i != -1) {
            this.position += i;
        }
    }

    private final int zzb(byte[] bArr, int i, int i2) {
        int i3 = this.zzaot;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.zzaor, 0, bArr, i, min);
        zzaj(min);
        return min;
    }

    private final boolean zzd(int i, boolean z) throws IOException, InterruptedException {
        int i2 = this.zzaos + i;
        byte[] bArr = this.zzaor;
        if (i2 > bArr.length) {
            this.zzaor = Arrays.copyOf(this.zzaor, zzpt.zzd(bArr.length << 1, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.zzaot - this.zzaos, i);
        while (min < i) {
            int zza = zza(this.zzaor, this.zzaos, i, min, false);
            min = zza;
            if (zza == -1) {
                return false;
            }
        }
        int i3 = this.zzaos + i;
        this.zzaos = i3;
        this.zzaot = Math.max(this.zzaot, i3);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final long getLength() {
        return this.zzaoq;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final long getPosition() {
        return this.position;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int zzb = zzb(bArr, i, i2);
        int i3 = zzb;
        if (zzb == 0) {
            i3 = zza(bArr, i, i2, 0, true);
        }
        zzak(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        zza(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void zza(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        if (!zzd(i2, false)) {
            return;
        }
        System.arraycopy(this.zzaor, this.zzaos - i2, bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final boolean zza(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int zzb = zzb(bArr, i, i2);
        while (true) {
            i3 = zzb;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            zzb = zza(bArr, i, i2, i3, z);
        }
        zzak(i3);
        return i3 != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final int zzaf(int i) throws IOException, InterruptedException {
        int zzai = zzai(i);
        int i2 = zzai;
        if (zzai == 0) {
            byte[] bArr = zzaoo;
            i2 = zza(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        zzak(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void zzag(int i) throws IOException, InterruptedException {
        int i2;
        int zzai = zzai(i);
        while (true) {
            i2 = zzai;
            if (i2 >= i || i2 == -1) {
                break;
            }
            byte[] bArr = zzaoo;
            zzai = zza(bArr, -i2, Math.min(i, bArr.length + i2), i2, false);
        }
        zzak(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void zzah(int i) throws IOException, InterruptedException {
        zzd(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void zzgq() {
        this.zzaos = 0;
    }
}
