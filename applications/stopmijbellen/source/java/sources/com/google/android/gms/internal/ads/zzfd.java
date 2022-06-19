package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfd.class */
public final class zzfd {
    private byte[] zza;
    private int zzb;
    private int zzc;

    public zzfd() {
        this.zza = zzfn.zzf;
    }

    public zzfd(int i) {
        this.zza = new byte[i];
        this.zzc = i;
    }

    public zzfd(byte[] bArr) {
        this.zza = bArr;
        this.zzc = bArr.length;
    }

    public zzfd(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
    }

    public final void zzA(zzfc zzfcVar, int i) {
        zzB(zzfcVar.zza, 0, i);
        zzfcVar.zzh(0);
    }

    public final void zzB(byte[] bArr, int i, int i2) {
        System.arraycopy(this.zza, this.zzb, bArr, i, i2);
        this.zzb += i2;
    }

    public final void zzC(int i) {
        byte[] bArr = this.zza;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        zzD(bArr2, i);
    }

    public final void zzD(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = 0;
    }

    public final void zzE(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.zza.length) {
                z = true;
            }
        }
        zzdy.zzd(z);
        this.zzc = i;
    }

    public final void zzF(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.zzc) {
                z = true;
            }
        }
        zzdy.zzd(z);
        this.zzb = i;
    }

    public final void zzG(int i) {
        zzF(this.zzb + i);
    }

    public final byte[] zzH() {
        return this.zza;
    }

    public final int zza() {
        return this.zzc - this.zzb;
    }

    public final int zzb() {
        return this.zza.length;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        this.zzb = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final int zzf() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        this.zzb = i3 + 1;
        return (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
    }

    public final int zzg() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        this.zzb = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    public final int zzh() {
        int zzg = zzg();
        if (zzg >= 0) {
            return zzg;
        }
        throw new IllegalStateException(C0082b.m8758d(29, "Top bit not zero: ", zzg));
    }

    public final int zzi() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        this.zzb = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    public final int zzj() {
        return (zzk() << 21) | (zzk() << 14) | (zzk() << 7) | zzk();
    }

    public final int zzk() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        return bArr[i] & 255;
    }

    public final int zzl() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        this.zzb = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    public final int zzm() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        this.zzb = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    public final int zzn() {
        int zze = zze();
        if (zze >= 0) {
            return zze;
        }
        throw new IllegalStateException(C0082b.m8758d(29, "Top bit not zero: ", zze));
    }

    public final int zzo() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        this.zzb = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    public final long zzp() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.zzb = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.zzb = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.zzb = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.zzb = i8;
        byte b7 = bArr[i7];
        this.zzb = i8 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((b4 & 255) << 24) | ((b5 & 255) << 32) | ((b6 & 255) << 40) | ((b7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    public final long zzq() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        this.zzb = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    public final long zzr() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        this.zzb = i5;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        this.zzb = i6;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        this.zzb = i7;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        this.zzb = i8;
        byte b7 = bArr[i7];
        this.zzb = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    public final long zzs() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.zzb = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.zzb = i4;
        byte b3 = bArr[i3];
        this.zzb = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    public final long zzt() {
        long zzr = zzr();
        if (zzr >= 0) {
            return zzr;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(zzr);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    public final long zzu() {
        char c;
        int i;
        byte b;
        int i2;
        ?? r0 = this.zza[this.zzb];
        int i3 = 7;
        while (true) {
            c = r0;
            i = 0;
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & r0) != 0) {
                i3--;
            } else if (i3 < 6) {
                c = r0 & (i2 - 1);
                i = 7 - i3;
            } else {
                c = r0;
                i = 0;
                if (i3 == 7) {
                    i = 1;
                    c = r0;
                }
            }
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder(55);
            sb.append("Invalid UTF-8 sequence first byte: ");
            sb.append((long) c);
            throw new NumberFormatException(sb.toString());
        }
        for (int i4 = 1; i4 < i; i4++) {
            if ((this.zza[this.zzb + i4] & 192) != 128) {
                StringBuilder sb2 = new StringBuilder(62);
                sb2.append("Invalid UTF-8 sequence continuation byte: ");
                sb2.append((long) c);
                throw new NumberFormatException(sb2.toString());
            }
            c = (c << 6) | (b & 63);
        }
        this.zzb += i;
        return c;
    }

    public final String zzv(char c) {
        int i = this.zzc;
        int i2 = this.zzb;
        if (i - i2 != 0) {
            while (i2 < this.zzc && this.zza[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.zza;
            int i3 = this.zzb;
            String zzE = zzfn.zzE(bArr, i3, i2 - i3);
            this.zzb = i2;
            if (i2 < this.zzc) {
                this.zzb = i2 + 1;
            }
            return zzE;
        }
        return null;
    }

    public final String zzw(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.zzb;
        int i3 = (i2 + i) - 1;
        String zzE = zzfn.zzE(this.zza, i2, (i3 >= this.zzc || this.zza[i3] != 0) ? i : i - 1);
        this.zzb += i;
        return zzE;
    }

    public final String zzx(int i, Charset charset) {
        String str = new String(this.zza, this.zzb, i, charset);
        this.zzb += i;
        return str;
    }

    public final short zzy() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        this.zzb = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    public final void zzz(int i) {
        byte[] bArr = this.zza;
        if (i > bArr.length) {
            this.zza = Arrays.copyOf(bArr, i);
        }
    }
}
