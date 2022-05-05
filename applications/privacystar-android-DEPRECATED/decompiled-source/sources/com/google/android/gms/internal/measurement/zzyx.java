package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyx.class */
public final class zzyx {
    private final byte[] buffer;
    private int zzbuh;
    private int zzbun;
    private int zzbup;
    private final int zzcev;
    private final int zzcew;
    private int zzcex;
    private int zzcey;
    private zzuo zzcez;
    private int zzbuq = Integer.MAX_VALUE;
    private int zzbui = 64;
    private int zzbuj = 67108864;

    private zzyx(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzcev = i;
        int i3 = i2 + i;
        this.zzcex = i3;
        this.zzcew = i3;
        this.zzcey = i;
    }

    private final void zzas(int i) throws IOException {
        if (i < 0) {
            throw zzzf.zzyx();
        } else if (this.zzcey + i > this.zzbuq) {
            zzas(this.zzbuq - this.zzcey);
            throw zzzf.zzyw();
        } else if (i <= this.zzcex - this.zzcey) {
            this.zzcey += i;
        } else {
            throw zzzf.zzyw();
        }
    }

    public static zzyx zzj(byte[] bArr, int i, int i2) {
        return new zzyx(bArr, 0, i2);
    }

    public static zzyx zzn(byte[] bArr) {
        return zzj(bArr, 0, bArr.length);
    }

    private final void zzvc() {
        this.zzcex += this.zzbun;
        int i = this.zzcex;
        if (i > this.zzbuq) {
            this.zzbun = i - this.zzbuq;
            this.zzcex -= this.zzbun;
            return;
        }
        this.zzbun = 0;
    }

    private final byte zzvd() throws IOException {
        if (this.zzcey == this.zzcex) {
            throw zzzf.zzyw();
        }
        byte[] bArr = this.buffer;
        int i = this.zzcey;
        this.zzcey = i + 1;
        return bArr[i];
    }

    public final int getPosition() {
        return this.zzcey - this.zzcev;
    }

    public final String readString() throws IOException {
        int zzuy = zzuy();
        if (zzuy < 0) {
            throw zzzf.zzyx();
        } else if (zzuy > this.zzcex - this.zzcey) {
            throw zzzf.zzyw();
        } else {
            String str = new String(this.buffer, this.zzcey, zzuy, zzze.UTF_8);
            this.zzcey += zzuy;
            return str;
        }
    }

    public final <T extends zzvm<T, ?>> T zza(zzxd<T> zzxdVar) throws IOException {
        try {
            if (this.zzcez == null) {
                this.zzcez = zzuo.zzd(this.buffer, this.zzcev, this.zzcew);
            }
            int zzux = this.zzcez.zzux();
            int i = this.zzcey - this.zzcev;
            if (zzux > i) {
                throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(zzux), Integer.valueOf(i)));
            }
            this.zzcez.zzas(i - zzux);
            this.zzcez.zzap(this.zzbui - this.zzbuh);
            T t = (T) ((zzvm) this.zzcez.zza(zzxdVar, zzuz.zzvp()));
            zzao(this.zzbup);
            return t;
        } catch (zzvt e) {
            throw new zzzf("", e);
        }
    }

    public final void zza(zzzg zzzgVar) throws IOException {
        int zzuy = zzuy();
        if (this.zzbuh >= this.zzbui) {
            throw zzzf.zzyz();
        }
        int zzaq = zzaq(zzuy);
        this.zzbuh++;
        zzzgVar.zza(this);
        zzan(0);
        this.zzbuh--;
        zzar(zzaq);
    }

    public final void zza(zzzg zzzgVar, int i) throws IOException {
        if (this.zzbuh >= this.zzbui) {
            throw zzzf.zzyz();
        }
        this.zzbuh++;
        zzzgVar.zza(this);
        zzan((i << 3) | 4);
        this.zzbuh--;
    }

    public final void zzan(int i) throws zzzf {
        if (this.zzbup != i) {
            throw new zzzf("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzao(int i) throws IOException {
        int zzug;
        switch (i & 7) {
            case 0:
                zzuy();
                return true;
            case 1:
                zzvb();
                return true;
            case 2:
                zzas(zzuy());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzva();
                return true;
            default:
                throw new zzzf("Protocol message tag had invalid wire type.");
        }
        do {
            zzug = zzug();
            if (zzug != 0) {
            }
            zzan(((i >>> 3) << 3) | 4);
            return true;
        } while (zzao(zzug));
        zzan(((i >>> 3) << 3) | 4);
        return true;
    }

    public final int zzaq(int i) throws zzzf {
        if (i < 0) {
            throw zzzf.zzyx();
        }
        int i2 = i + this.zzcey;
        int i3 = this.zzbuq;
        if (i2 > i3) {
            throw zzzf.zzyw();
        }
        this.zzbuq = i2;
        zzvc();
        return i3;
    }

    public final void zzar(int i) {
        this.zzbuq = i;
        zzvc();
    }

    public final void zzby(int i) {
        zzt(i, this.zzbup);
    }

    public final byte[] zzs(int i, int i2) {
        if (i2 == 0) {
            return zzzj.zzcfx;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzcev + i, bArr, 0, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt(int i, int i2) {
        if (i > this.zzcey - this.zzcev) {
            int i3 = this.zzcey;
            int i4 = this.zzcev;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i3 - i4);
            throw new IllegalArgumentException(sb.toString());
        } else if (i < 0) {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            this.zzcey = this.zzcev + i;
            this.zzbup = i2;
        }
    }

    public final int zzug() throws IOException {
        if (this.zzcey == this.zzcex) {
            this.zzbup = 0;
            return 0;
        }
        this.zzbup = zzuy();
        if (this.zzbup != 0) {
            return this.zzbup;
        }
        throw new zzzf("Protocol message contained an invalid tag (zero).");
    }

    public final boolean zzum() throws IOException {
        return zzuy() != 0;
    }

    public final int zzuy() throws IOException {
        int i;
        byte zzvd = zzvd();
        if (zzvd >= 0) {
            return zzvd;
        }
        int i2 = zzvd & Byte.MAX_VALUE;
        byte zzvd2 = zzvd();
        if (zzvd2 >= 0) {
            i = i2 | (zzvd2 << 7);
        } else {
            int i3 = i2 | ((zzvd2 & Byte.MAX_VALUE) << 7);
            byte zzvd3 = zzvd();
            if (zzvd3 >= 0) {
                i = i3 | (zzvd3 << 14);
            } else {
                int i4 = i3 | ((zzvd3 & Byte.MAX_VALUE) << 14);
                byte zzvd4 = zzvd();
                if (zzvd4 >= 0) {
                    i = i4 | (zzvd4 << 21);
                } else {
                    byte zzvd5 = zzvd();
                    int i5 = i4 | ((zzvd4 & Byte.MAX_VALUE) << 21) | (zzvd5 << 28);
                    i = i5;
                    if (zzvd5 < 0) {
                        for (int i6 = 0; i6 < 5; i6++) {
                            if (zzvd() >= 0) {
                                return i5;
                            }
                        }
                        throw zzzf.zzyy();
                    }
                }
            }
        }
        return i;
    }

    public final long zzuz() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzvd = zzvd();
            j |= (zzvd & Byte.MAX_VALUE) << i;
            if ((zzvd & 128) == 0) {
                return j;
            }
        }
        throw zzzf.zzyy();
    }

    public final int zzva() throws IOException {
        return (zzvd() & 255) | ((zzvd() & 255) << 8) | ((zzvd() & 255) << 16) | ((zzvd() & 255) << 24);
    }

    public final long zzvb() throws IOException {
        byte zzvd = zzvd();
        return ((zzvd() & 255) << 8) | (zzvd & 255) | ((zzvd() & 255) << 16) | ((zzvd() & 255) << 24) | ((zzvd() & 255) << 32) | ((zzvd() & 255) << 40) | ((zzvd() & 255) << 48) | ((zzvd() & 255) << 56);
    }

    public final int zzyr() {
        if (this.zzbuq == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzbuq - this.zzcey;
    }
}
