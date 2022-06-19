package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjc.class */
public final class zzgjc extends OutputStream {
    private static final byte[] zza = new byte[0];
    private int zzd;
    private int zzf;
    private final int zzb = 128;
    private final ArrayList<zzgjf> zzc = new ArrayList<>();
    private byte[] zze = new byte[128];

    public zzgjc(int i) {
    }

    private final void zzc(int i) {
        this.zzc.add(new zzgjb(this.zze));
        int length = this.zzd + this.zze.length;
        this.zzd = length;
        this.zze = new byte[Math.max(this.zzb, Math.max(i, length >>> 1))];
        this.zzf = 0;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()));
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            if (this.zzf == this.zze.length) {
                zzc(1);
            }
            byte[] bArr = this.zze;
            int i2 = this.zzf;
            this.zzf = i2 + 1;
            bArr[i2] = (byte) i;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            byte[] bArr2 = this.zze;
            int length = bArr2.length;
            int i3 = this.zzf;
            int i4 = length - i3;
            if (i2 <= i4) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.zzf += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i4);
            int i5 = i2 - i4;
            zzc(i5);
            System.arraycopy(bArr, i + i4, this.zze, 0, i5);
            this.zzf = i5;
        }
    }

    public final int zza() {
        int i;
        int i2;
        synchronized (this) {
            i = this.zzd;
            i2 = this.zzf;
        }
        return i + i2;
    }

    public final zzgjf zzb() {
        zzgjf zzu;
        synchronized (this) {
            int i = this.zzf;
            byte[] bArr = this.zze;
            int length = bArr.length;
            if (i >= length) {
                this.zzc.add(new zzgjb(bArr));
                this.zze = zza;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(length, i));
                this.zzc.add(new zzgjb(bArr2));
            }
            this.zzd += this.zzf;
            this.zzf = 0;
            zzu = zzgjf.zzu(this.zzc);
        }
        return zzu;
    }
}
