package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuq.class */
public final class zzuq extends zzuo {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzbum;
    private int zzbun;
    private int zzbuo;
    private int zzbup;
    private int zzbuq;

    private zzuq(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzbuq = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzbuo = this.pos;
        this.zzbum = z;
    }

    private final int zzuy() throws IOException {
        int i;
        int i2 = this.pos;
        if (this.limit != i2) {
            byte[] bArr = this.buffer;
            int i3 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i3;
                return b;
            } else if (this.limit - i3 >= 9) {
                int i4 = i3 + 1;
                int i5 = b ^ (bArr[i3] << 7);
                if (i5 < 0) {
                    i = i5 ^ (-128);
                } else {
                    int i6 = i4 + 1;
                    int i7 = i5 ^ (bArr[i4] << 14);
                    if (i7 >= 0) {
                        i = i7 ^ 16256;
                        i4 = i6;
                    } else {
                        i4 = i6 + 1;
                        int i8 = i7 ^ (bArr[i6] << 21);
                        if (i8 < 0) {
                            i = i8 ^ (-2080896);
                        } else {
                            int i9 = i4 + 1;
                            byte b2 = bArr[i4];
                            int i10 = (i8 ^ (b2 << 28)) ^ 266354560;
                            i = i10;
                            i4 = i9;
                            if (b2 < 0) {
                                int i11 = i9 + 1;
                                i = i10;
                                i4 = i11;
                                if (bArr[i9] < 0) {
                                    int i12 = i11 + 1;
                                    i = i10;
                                    i4 = i12;
                                    if (bArr[i11] < 0) {
                                        int i13 = i12 + 1;
                                        i = i10;
                                        i4 = i13;
                                        if (bArr[i12] < 0) {
                                            int i14 = i13 + 1;
                                            i = i10;
                                            i4 = i14;
                                            if (bArr[i13] < 0) {
                                                i4 = i14 + 1;
                                                if (bArr[i14] >= 0) {
                                                    i = i10;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.pos = i4;
                return i;
            }
        }
        return (int) zzuv();
    }

    private final long zzuz() throws IOException {
        long j;
        int i = this.pos;
        if (this.limit != i) {
            byte[] bArr = this.buffer;
            int i2 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.pos = i2;
                return b;
            } else if (this.limit - i2 >= 9) {
                int i3 = i2 + 1;
                int i4 = b ^ (bArr[i2] << 7);
                if (i4 < 0) {
                    j = i4 ^ (-128);
                } else {
                    int i5 = i3 + 1;
                    int i6 = i4 ^ (bArr[i3] << 14);
                    if (i6 >= 0) {
                        j = i6 ^ 16256;
                        i3 = i5;
                    } else {
                        i3 = i5 + 1;
                        int i7 = i6 ^ (bArr[i5] << 21);
                        if (i7 < 0) {
                            j = i7 ^ (-2080896);
                        } else {
                            long j2 = i7;
                            int i8 = i3 + 1;
                            long j3 = (bArr[i3] << 28) ^ j2;
                            if (j3 >= 0) {
                                j = j3 ^ 266354560;
                                i3 = i8;
                            } else {
                                i3 = i8 + 1;
                                long j4 = j3 ^ (bArr[i8] << 35);
                                if (j4 < 0) {
                                    j = (-34093383808L) ^ j4;
                                } else {
                                    int i9 = i3 + 1;
                                    long j5 = j4 ^ (bArr[i3] << 42);
                                    if (j5 >= 0) {
                                        j = j5 ^ 4363953127296L;
                                        i3 = i9;
                                    } else {
                                        int i10 = i9 + 1;
                                        long j6 = j5 ^ (bArr[i9] << 49);
                                        if (j6 < 0) {
                                            j = (-558586000294016L) ^ j6;
                                            i3 = i10;
                                        } else {
                                            i3 = i10 + 1;
                                            j = (j6 ^ (bArr[i10] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i3++;
                                                if (bArr[i3] >= 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.pos = i3;
                return j;
            }
        }
        return zzuv();
    }

    private final int zzva() throws IOException {
        int i = this.pos;
        if (this.limit - i < 4) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzvb() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    private final void zzvc() {
        this.limit += this.zzbun;
        int i = this.limit - this.zzbuo;
        if (i > this.zzbuq) {
            this.zzbun = i - this.zzbuq;
            this.limit -= this.zzbun;
            return;
        }
        this.zzbun = 0;
    }

    private final byte zzvd() throws IOException {
        if (this.pos == this.limit) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzvb());
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzva());
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final String readString() throws IOException {
        int zzuy = zzuy();
        if (zzuy > 0 && zzuy <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzuy, zzvo.UTF_8);
            this.pos += zzuy;
            return str;
        } else if (zzuy == 0) {
            return "";
        } else {
            if (zzuy < 0) {
                throw zzvt.zzwl();
            }
            throw zzvt.zzwk();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final <T extends zzwt> T zza(zzxd<T> zzxdVar, zzuz zzuzVar) throws IOException {
        int zzuy = zzuy();
        if (this.zzbuh >= this.zzbui) {
            throw zzvt.zzwp();
        }
        int zzaq = zzaq(zzuy);
        this.zzbuh++;
        T zza = zzxdVar.zza(this, zzuzVar);
        zzan(0);
        this.zzbuh--;
        zzar(zzaq);
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzan(int i) throws zzvt {
        if (this.zzbup != i) {
            throw zzvt.zzwn();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzao(int i) throws IOException {
        int zzug;
        switch (i & 7) {
            case 0:
                if (this.limit - this.pos >= 10) {
                    for (int i2 = 0; i2 < 10; i2++) {
                        byte[] bArr = this.buffer;
                        int i3 = this.pos;
                        this.pos = i3 + 1;
                        if (bArr[i3] >= 0) {
                            return true;
                        }
                    }
                    throw zzvt.zzwm();
                }
                for (int i4 = 0; i4 < 10; i4++) {
                    if (zzvd() >= 0) {
                        return true;
                    }
                }
                throw zzvt.zzwm();
            case 1:
                zzas(8);
                return true;
            case 2:
                zzas(zzuy());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzas(4);
                return true;
            default:
                throw zzvt.zzwo();
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

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzaq(int i) throws zzvt {
        if (i < 0) {
            throw zzvt.zzwl();
        }
        int zzux = i + zzux();
        int i2 = this.zzbuq;
        if (zzux > i2) {
            throw zzvt.zzwk();
        }
        this.zzbuq = zzux;
        zzvc();
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzar(int i) {
        this.zzbuq = i;
        zzvc();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzas(int i) throws IOException {
        if (i >= 0 && i <= this.limit - this.pos) {
            this.pos += i;
        } else if (i < 0) {
            throw zzvt.zzwl();
        } else {
            throw zzvt.zzwk();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzug() throws IOException {
        if (zzuw()) {
            this.zzbup = 0;
            return 0;
        }
        this.zzbup = zzuy();
        if ((this.zzbup >>> 3) != 0) {
            return this.zzbup;
        }
        throw new zzvt("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuh() throws IOException {
        return zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzui() throws IOException {
        return zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzuj() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuk() throws IOException {
        return zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzul() throws IOException {
        return zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzum() throws IOException {
        return zzuz() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final String zzun() throws IOException {
        int zzuy = zzuy();
        if (zzuy > 0 && zzuy <= this.limit - this.pos) {
            String zzh = zzyj.zzh(this.buffer, this.pos, zzuy);
            this.pos += zzuy;
            return zzh;
        } else if (zzuy == 0) {
            return "";
        } else {
            if (zzuy <= 0) {
                throw zzvt.zzwl();
            }
            throw zzvt.zzwk();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final zzud zzuo() throws IOException {
        byte[] bArr;
        int zzuy = zzuy();
        if (zzuy > 0 && zzuy <= this.limit - this.pos) {
            zzud zzb = zzud.zzb(this.buffer, this.pos, zzuy);
            this.pos += zzuy;
            return zzb;
        } else if (zzuy == 0) {
            return zzud.zzbtz;
        } else {
            if (zzuy > 0 && zzuy <= this.limit - this.pos) {
                int i = this.pos;
                this.pos += zzuy;
                bArr = Arrays.copyOfRange(this.buffer, i, this.pos);
            } else if (zzuy > 0) {
                throw zzvt.zzwk();
            } else if (zzuy == 0) {
                bArr = zzvo.zzbzj;
            } else {
                throw zzvt.zzwl();
            }
            return zzud.zzi(bArr);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzup() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzuq() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzur() throws IOException {
        return zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzus() throws IOException {
        return zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzut() throws IOException {
        int zzuy = zzuy();
        return (-(zzuy & 1)) ^ (zzuy >>> 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuu() throws IOException {
        long zzuz = zzuz();
        return (-(zzuz & 1)) ^ (zzuz >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuv() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzvd = zzvd();
            j |= (zzvd & Byte.MAX_VALUE) << i;
            if ((zzvd & 128) == 0) {
                return j;
            }
        }
        throw zzvt.zzwm();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzuw() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzux() {
        return this.pos - this.zzbuo;
    }
}
