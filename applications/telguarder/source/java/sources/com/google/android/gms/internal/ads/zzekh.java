package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekh.class */
final class zzekh extends zzekc {
    private final byte[] buffer;
    private int pos;
    private int zzakh;
    private int zzimr;
    private int zzimt;
    private int zzimu;
    private final InputStream zzimv;
    private int zzimw;
    private zzekg zzimx;

    /* JADX INFO: Access modifiers changed from: private */
    public zzekh(InputStream inputStream, int i) {
        super();
        this.zzimu = Integer.MAX_VALUE;
        this.zzimx = null;
        zzeld.zza(inputStream, "input");
        this.zzimv = inputStream;
        this.buffer = new byte[4096];
        this.zzakh = 0;
        this.pos = 0;
        this.zzimw = 0;
    }

    private final int zzbhk() throws IOException {
        int i;
        int i2 = this.pos;
        int i3 = this.zzakh;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekh.zzbhl():long");
    }

    private final int zzbhm() throws IOException {
        int i = this.pos;
        int i2 = i;
        if (this.zzakh - i < 4) {
            zzgj(4);
            i2 = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final long zzbhn() throws IOException {
        int i = this.pos;
        int i2 = i;
        if (this.zzakh - i < 8) {
            zzgj(8);
            i2 = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    private final void zzbho() {
        int i = this.zzakh + this.zzimr;
        this.zzakh = i;
        int i2 = this.zzimw + i;
        int i3 = this.zzimu;
        if (i2 <= i3) {
            this.zzimr = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzimr = i4;
        this.zzakh = i - i4;
    }

    private final byte zzbhp() throws IOException {
        if (this.pos == this.zzakh) {
            zzgj(1);
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    private final byte[] zzg(int i, boolean z) throws IOException {
        byte[] zzgl = zzgl(i);
        if (zzgl != null) {
            return zzgl;
        }
        int i2 = this.pos;
        int i3 = this.zzakh;
        int i4 = i3 - i2;
        this.zzimw += i3;
        this.pos = 0;
        this.zzakh = 0;
        List<byte[]> zzgm = zzgm(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, i2, bArr, 0, i4);
        Iterator<byte[]> it = zzgm.iterator();
        int i5 = i4;
        while (true) {
            int i6 = i5;
            if (!it.hasNext()) {
                return bArr;
            }
            byte[] next = it.next();
            System.arraycopy(next, 0, bArr, i6, next.length);
            i5 = i6 + next.length;
        }
    }

    /* JADX WARN: Finally extract failed */
    private final void zzgi(int i) throws IOException {
        int i2 = this.zzakh;
        int i3 = this.pos;
        if (i <= i2 - i3 && i >= 0) {
            this.pos = i3 + i;
        } else if (i < 0) {
            throw zzelo.zzbjb();
        } else {
            int i4 = this.zzimw;
            int i5 = this.zzimu;
            if (i4 + i3 + i > i5) {
                zzgi((i5 - i4) - i3);
                throw zzelo.zzbja();
            }
            this.zzimw = i4 + i3;
            int i6 = i2 - i3;
            this.zzakh = 0;
            this.pos = 0;
            while (i6 < i) {
                try {
                    long j = i - i6;
                    long skip = this.zzimv.skip(j);
                    int i7 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                    if (i7 >= 0 && skip <= j) {
                        if (i7 == 0) {
                            break;
                        }
                        i6 += (int) skip;
                    } else {
                        String valueOf = String.valueOf(this.zzimv.getClass());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                        sb.append(valueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(skip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                } catch (Throwable th) {
                    this.zzimw += i6;
                    zzbho();
                    throw th;
                }
            }
            this.zzimw += i6;
            zzbho();
            if (i6 >= i) {
                return;
            }
            int i8 = this.zzakh;
            int i9 = i8 - this.pos;
            this.pos = i8;
            zzgj(1);
            while (true) {
                int i10 = i - i9;
                int i11 = this.zzakh;
                if (i10 <= i11) {
                    this.pos = i10;
                    return;
                }
                i9 += i11;
                this.pos = i11;
                zzgj(1);
            }
        }
    }

    private final void zzgj(int i) throws IOException {
        if (!zzgk(i)) {
            if (i <= (this.zzimn - this.zzimw) - this.pos) {
                throw zzelo.zzbja();
            }
            throw zzelo.zzbjg();
        }
    }

    private final boolean zzgk(int i) throws IOException {
        while (this.pos + i > this.zzakh) {
            int i2 = this.zzimn;
            int i3 = this.zzimw;
            int i4 = this.pos;
            if (i > (i2 - i3) - i4 || i3 + i4 + i > this.zzimu) {
                return false;
            }
            if (i4 > 0) {
                int i5 = this.zzakh;
                if (i5 > i4) {
                    byte[] bArr = this.buffer;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.zzimw += i4;
                this.zzakh -= i4;
                this.pos = 0;
            }
            InputStream inputStream = this.zzimv;
            byte[] bArr2 = this.buffer;
            int i6 = this.zzakh;
            int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.zzimn - this.zzimw) - this.zzakh));
            if (read == 0 || read < -1 || read > this.buffer.length) {
                String valueOf = String.valueOf(this.zzimv.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.zzakh += read;
                zzbho();
                if (this.zzakh >= i) {
                    return true;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    private final byte[] zzgl(int i) throws IOException {
        if (i == 0) {
            return zzeld.zzimf;
        }
        if (i < 0) {
            throw zzelo.zzbjb();
        }
        int i2 = this.zzimw + this.pos + i;
        if (i2 - this.zzimn > 0) {
            throw zzelo.zzbjg();
        }
        int i3 = this.zzimu;
        if (i2 > i3) {
            zzgi((i3 - this.zzimw) - this.pos);
            throw zzelo.zzbja();
        }
        int i4 = this.zzakh - this.pos;
        int i5 = i - i4;
        if (i5 >= 4096 && i5 > this.zzimv.available()) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, this.pos, bArr, 0, i4);
        this.zzimw += this.zzakh;
        this.pos = 0;
        this.zzakh = 0;
        while (i4 < i) {
            int read = this.zzimv.read(bArr, i4, i - i4);
            if (read == -1) {
                throw zzelo.zzbja();
            }
            this.zzimw += read;
            i4 += read;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        r7 = r7 - r0;
        r0.add(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> zzgm(int r7) throws java.io.IOException {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
        L8:
            r0 = r7
            if (r0 <= 0) goto L62
            r0 = r7
            r1 = 4096(0x1000, float:5.74E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r9 = r0
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L1c:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L52
            r0 = r6
            java.io.InputStream r0 = r0.zzimv
            r1 = r10
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L4e
            r0 = r6
            r1 = r6
            int r1 = r1.zzimw
            r2 = r12
            int r1 = r1 + r2
            r0.zzimw = r1
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto L1c
        L4e:
            com.google.android.gms.internal.ads.zzelo r0 = com.google.android.gms.internal.ads.zzelo.zzbja()
            throw r0
        L52:
            r0 = r7
            r1 = r9
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
            goto L8
        L62:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekh.zzgm(int):java.util.List");
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
        if (zzbhk > 0 && zzbhk <= this.zzakh - this.pos) {
            String str = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk > this.zzakh) {
                return new String(zzg(zzbhk, false), zzeld.UTF_8);
            }
            zzgj(zzbhk);
            String str2 = new String(this.buffer, this.pos, zzbhk, zzeld.UTF_8);
            this.pos += zzbhk;
            return str2;
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
        byte[] bArr;
        int zzbhk = zzbhk();
        int i = this.pos;
        int i2 = this.zzakh;
        if (zzbhk <= i2 - i && zzbhk > 0) {
            bArr = this.buffer;
            this.pos = i + zzbhk;
        } else if (zzbhk == 0) {
            return "";
        } else {
            if (zzbhk <= i2) {
                zzgj(zzbhk);
                bArr = this.buffer;
                this.pos = zzbhk;
            } else {
                bArr = zzg(zzbhk, false);
            }
            i = 0;
        }
        return zzeok.zzo(bArr, i, zzbhk);
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final zzejr zzbha() throws IOException {
        int zzbhk = zzbhk();
        int i = this.zzakh;
        int i2 = this.pos;
        if (zzbhk <= i - i2 && zzbhk > 0) {
            zzejr zzi = zzejr.zzi(this.buffer, i2, zzbhk);
            this.pos += zzbhk;
            return zzi;
        } else if (zzbhk == 0) {
            return zzejr.zzilz;
        } else {
            byte[] zzgl = zzgl(zzbhk);
            if (zzgl != null) {
                return zzejr.zzt(zzgl);
            }
            int i3 = this.pos;
            int i4 = this.zzakh;
            int i5 = i4 - i3;
            this.zzimw += i4;
            this.pos = 0;
            this.zzakh = 0;
            List<byte[]> zzgm = zzgm(zzbhk - i5);
            byte[] bArr = new byte[zzbhk];
            System.arraycopy(this.buffer, i3, bArr, 0, i5);
            for (byte[] bArr2 : zzgm) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return zzejr.zzu(bArr);
        }
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
        return this.pos == this.zzakh && !zzgk(1);
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final int zzbhj() {
        return this.zzimw + this.pos;
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
            if (this.zzakh - this.pos < 10) {
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
            int i2 = i + this.zzimw + this.pos;
            int i3 = this.zzimu;
            if (i2 > i3) {
                throw zzelo.zzbja();
            }
            this.zzimu = i2;
            zzbho();
            return i3;
        }
        throw zzelo.zzbjb();
    }

    @Override // com.google.android.gms.internal.ads.zzekc
    public final void zzgg(int i) {
        this.zzimu = i;
        zzbho();
    }
}
