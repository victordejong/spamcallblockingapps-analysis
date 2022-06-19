package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeke.class */
public final class zzeke extends zzekc {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzimq;
    private int zzimr;
    private int zzims;
    private int zzimt;
    private int zzimu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzeke(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzimu = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzims = i;
        this.zzimq = z;
    }

    private final int zzbhk() throws IOException {
        int i;
        int i2 = this.pos;
        int i3 = this.limit;
        if (i3 != i2) {
            byte[] bArr = this.buffer;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ ByteCompanionObject.MIN_VALUE;
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i5 = i7;
                        i = i8 ^ 16256;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b2 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.pos = i5;
                return i;
            }
        }
        return (int) zzbhh();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L39;
     */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzbhl() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeke.zzbhl():long");
    }

    private final int zzbhm() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 4) {
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzelo.zzbja();
    }

    private final long zzbhn() throws IOException {
        int i = this.pos;
        if (this.limit - i >= 8) {
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzelo.zzbja();
    }

    private final void zzbho() {
        int i = this.limit + this.zzimr;
        this.limit = i;
        int i2 = i - this.zzims;
        int i3 = this.zzimu;
        if (i2 <= i3) {
            this.zzimr = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzimr = i4;
        this.limit = i - i4;
    }

    private final byte zzbhp() throws IOException {
        int i = this.pos;
        if (i != this.limit) {
            byte[] bArr = this.buffer;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzelo.zzbja();
    }

    private final void zzgi(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzelo.zzbjb();
        }
        throw zzelo.zzbja();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzbhn());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzbhm());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final String readString() throws IOException {
        int zzbhk = zzbhk();
        if (zzbhk > 0 && zzbhk <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk >= 0) {
                throw zzelo.zzbja();
            }
            throw zzelo.zzbjb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgs() throws IOException {
        if (zzbhi()) {
            this.zzimt = 0;
            return 0;
        }
        int zzbhk = zzbhk();
        this.zzimt = zzbhk;
        if ((zzbhk >>> 3) == 0) {
            throw zzelo.zzbjd();
        }
        return zzbhk;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgt() throws IOException {
        return zzbhl();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgu() throws IOException {
        return zzbhl();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgv() throws IOException {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbgw() throws IOException {
        return zzbhn();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbgx() throws IOException {
        return zzbhm();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzbgy() throws IOException {
        return zzbhl() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final String zzbgz() throws IOException {
        int zzbhk = zzbhk();
        if (zzbhk > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzbhk <= i - i2) {
                String zzo = zzeok.zzo(this.buffer, i2, zzbhk);
                this.pos += zzbhk;
                return zzo;
            }
        }
        if (zzbhk == 0) {
            return "";
        }
        if (zzbhk > 0) {
            throw zzelo.zzbja();
        }
        throw zzelo.zzbjb();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final zzejr zzbha() throws IOException {
        byte[] bArr;
        int zzbhk = zzbhk();
        if (zzbhk > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzbhk <= i - i2) {
                zzejr zzi = zzejr.zzi(this.buffer, i2, zzbhk);
                this.pos += zzbhk;
                return zzi;
            }
        }
        if (zzbhk == 0) {
            return zzejr.zzilz;
        }
        if (zzbhk > 0) {
            int i3 = this.limit;
            int i4 = this.pos;
            if (zzbhk <= i3 - i4) {
                int i5 = zzbhk + i4;
                this.pos = i5;
                bArr = Arrays.copyOfRange(this.buffer, i4, i5);
                return zzejr.zzu(bArr);
            }
        }
        if (zzbhk > 0) {
            throw zzelo.zzbja();
        }
        if (zzbhk != 0) {
            throw zzelo.zzbjb();
        }
        bArr = zzeld.zzimf;
        return zzejr.zzu(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhb() throws IOException {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhc() throws IOException {
        return zzbhk();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhd() throws IOException {
        return zzbhm();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhe() throws IOException {
        return zzbhn();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhf() throws IOException {
        return zzgh(zzbhk());
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhg() throws IOException {
        return zzfg(zzbhl());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzekc
    public final long zzbhh() throws IOException {
        byte zzbhp;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (zzbhp & Byte.MAX_VALUE) << i;
            if ((zzbhp() & 128) == 0) {
                return c;
            }
        }
        throw zzelo.zzbjc();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzbhi() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhj() {
        return this.pos - this.zzims;
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final void zzgd(int i) throws zzelo {
        if (this.zzimt == i) {
            return;
        }
        throw zzelo.zzbje();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final boolean zzge(int i) throws IOException {
        int zzbgs;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.limit - this.pos < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zzbhp() >= 0) {
                        return true;
                    }
                }
                throw zzelo.zzbjc();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.buffer;
                int i5 = this.pos;
                this.pos = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzelo.zzbjc();
        } else if (i2 == 1) {
            zzgi(8);
            return true;
        } else if (i2 == 2) {
            zzgi(zzbhk());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzelo.zzbjf();
            }
            zzgi(4);
            return true;
        } else {
            do {
                zzbgs = zzbgs();
                if (zzbgs == 0) {
                    break;
                }
            } while (zzge(zzbgs));
            zzgd(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzgf(int i) throws zzelo {
        if (i >= 0) {
            int zzbhj = i + zzbhj();
            int i2 = this.zzimu;
            if (zzbhj > i2) {
                throw zzelo.zzbja();
            }
            this.zzimu = zzbhj;
            zzbho();
            return i2;
        }
        throw zzelo.zzbjb();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final void zzgg(int i) {
        this.zzimu = i;
        zzbho();
    }
}
