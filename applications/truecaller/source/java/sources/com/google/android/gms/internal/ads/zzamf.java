package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamf.class */
public final class zzamf {
    private byte[] zza;
    private int zzb;
    private int zzc;

    public zzamf() {
        this.zza = zzamq.zzf;
    }

    public zzamf(int i) {
        this.zza = new byte[i];
        this.zzc = i;
    }

    public zzamf(byte[] bArr) {
        this.zza = bArr;
        this.zzc = bArr.length;
    }

    public zzamf(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
    }

    public final int zzA() {
        return (zzn() << 21) | (zzn() << 14) | (zzn() << 7) | zzn();
    }

    public final int zzB() {
        int zzv = zzv();
        if (zzv >= 0) {
            return zzv;
        }
        throw new IllegalStateException(C22128a.m8690L1(29, "Top bit not zero: ", zzv));
    }

    public final int zzC() {
        int zzw = zzw();
        if (zzw >= 0) {
            return zzw;
        }
        throw new IllegalStateException(C22128a.m8690L1(29, "Top bit not zero: ", zzw));
    }

    public final long zzD() {
        long zzx = zzx();
        if (zzx >= 0) {
            return zzx;
        }
        throw new IllegalStateException(C22128a.m8680O1(38, "Top bit not zero: ", zzx));
    }

    public final String zzE(int i, Charset charset) {
        String str = new String(this.zza, this.zzb, i, charset);
        this.zzb += i;
        return str;
    }

    public final String zzF(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.zzb;
        int i3 = (i2 + i) - 1;
        String zzr = zzamq.zzr(this.zza, i2, (i3 >= this.zzc || this.zza[i3] != 0) ? i : i - 1);
        this.zzb += i;
        return zzr;
    }

    public final String zzG(char c) {
        int i = this.zzc;
        int i2 = this.zzb;
        if (i - i2 != 0) {
            while (i2 < this.zzc && this.zza[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.zza;
            int i3 = this.zzb;
            String zzr = zzamq.zzr(bArr, i3, i2 - i3);
            this.zzb = i2;
            if (i2 < this.zzc) {
                this.zzb = i2 + 1;
            }
            return zzr;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    public final long zzH() {
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
        if (i != 0) {
            for (int i4 = 1; i4 < i; i4++) {
                if ((this.zza[this.zzb + i4] & 192) != 128) {
                    throw new NumberFormatException(C22128a.m8680O1(62, "Invalid UTF-8 sequence continuation byte: ", c));
                }
                c = (c << 6) | (b & 63);
            }
            this.zzb += i;
            return c;
        }
        throw new NumberFormatException(C22128a.m8680O1(55, "Invalid UTF-8 sequence first byte: ", c));
    }

    public final void zza(int i) {
        byte[] bArr = this.zza;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        zzb(bArr2, i);
    }

    public final void zzb(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = 0;
    }

    public final void zzc(int i) {
        byte[] bArr = this.zza;
        if (i > bArr.length) {
            this.zza = Arrays.copyOf(bArr, i);
        }
    }

    public final int zzd() {
        return this.zzc - this.zzb;
    }

    public final int zze() {
        return this.zzc;
    }

    public final void zzf(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.zza.length) {
                z = true;
            }
        }
        zzakt.zza(z);
        this.zzc = i;
    }

    public final int zzg() {
        return this.zzb;
    }

    public final void zzh(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= this.zzc) {
                z = true;
            }
        }
        zzakt.zza(z);
        this.zzb = i;
    }

    public final byte[] zzi() {
        return this.zza;
    }

    public final int zzj() {
        return this.zza.length;
    }

    public final void zzk(int i) {
        zzh(this.zzb + i);
    }

    public final void zzl(zzame zzameVar, int i) {
        zzm(zzameVar.zza, 0, i);
        zzameVar.zzd(0);
    }

    public final void zzm(byte[] bArr, int i, int i2) {
        System.arraycopy(this.zza, this.zzb, bArr, i, i2);
        this.zzb += i2;
    }

    public final int zzn() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        return bArr[i] & 255;
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

    public final int zzp() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        this.zzb = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    public final short zzq() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        int i2 = i + 1;
        this.zzb = i2;
        byte b = bArr[i];
        this.zzb = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    public final int zzr() {
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

    public final int zzs() {
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

    public final long zzt() {
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

    public final long zzu() {
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

    public final int zzv() {
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

    public final int zzw() {
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

    public final long zzx() {
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

    public final long zzy() {
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

    public final int zzz() {
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
}
