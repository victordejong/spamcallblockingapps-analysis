package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgo.class */
public final class zzgo extends zzgj {
    private final byte[] buffer;
    private int pos;
    private int zzpj;
    private int zzpl;
    private int zzpm;
    private final InputStream zzpn;
    private int zzpo;
    private int zzpp;
    private zzgn zzpq;

    /* JADX INFO: Access modifiers changed from: private */
    public zzgo(InputStream inputStream, int i) {
        super();
        this.zzpm = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzpq = null;
        zzhm.zza(inputStream, "input");
        this.zzpn = inputStream;
        this.buffer = new byte[i];
        this.zzpo = 0;
        this.pos = 0;
        this.zzpp = 0;
    }

    /* JADX WARN: Finally extract failed */
    private final void zzad(int i) {
        int i2 = this.zzpo;
        int i3 = this.pos;
        if (i <= i2 - i3 && i >= 0) {
            this.pos = i3 + i;
        } else if (i < 0) {
            throw zzhq.zzhf();
        } else {
            int i4 = this.zzpp;
            int i5 = this.pos;
            int i6 = this.zzpm;
            if (i4 + i5 + i > i6) {
                zzad((i6 - i4) - i5);
                throw zzhq.zzhe();
            }
            this.zzpp = i4 + i5;
            int i7 = this.zzpo - i5;
            this.zzpo = 0;
            this.pos = 0;
            while (i7 < i) {
                try {
                    long j = i - i7;
                    long skip = this.zzpn.skip(j);
                    int i8 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                    if (i8 >= 0 && skip <= j) {
                        if (i8 == 0) {
                            break;
                        }
                        i7 += (int) skip;
                    } else {
                        String valueOf = String.valueOf(this.zzpn.getClass());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                        sb.append(valueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(skip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                } catch (Throwable th) {
                    this.zzpp += i7;
                    zzfx();
                    throw th;
                }
            }
            this.zzpp += i7;
            zzfx();
            if (i7 >= i) {
                return;
            }
            int i9 = this.zzpo;
            int i10 = i9 - this.pos;
            this.pos = i9;
            zzae(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.zzpo;
                if (i11 <= i12) {
                    this.pos = i11;
                    return;
                }
                i10 += i12;
                this.pos = i12;
                zzae(1);
            }
        }
    }

    private final void zzae(int i) {
        if (!zzaf(i)) {
            if (i <= (this.zzpf - this.zzpp) - this.pos) {
                throw zzhq.zzhe();
            }
            throw zzhq.zzhk();
        }
    }

    private final boolean zzaf(int i) {
        while (this.pos + i > this.zzpo) {
            int i2 = this.zzpf;
            int i3 = this.zzpp;
            int i4 = this.pos;
            if (i > (i2 - i3) - i4 || i3 + i4 + i > this.zzpm) {
                return false;
            }
            if (i4 > 0) {
                int i5 = this.zzpo;
                if (i5 > i4) {
                    byte[] bArr = this.buffer;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.zzpp += i4;
                this.zzpo -= i4;
                this.pos = 0;
            }
            InputStream inputStream = this.zzpn;
            byte[] bArr2 = this.buffer;
            int i6 = this.zzpo;
            int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.zzpf - this.zzpp) - this.zzpo));
            if (read == 0 || read < -1 || read > this.buffer.length) {
                String valueOf = String.valueOf(this.zzpn.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.zzpo += read;
                zzfx();
                if (this.zzpo >= i) {
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

    private final byte[] zzag(int i) {
        if (i == 0) {
            return zzhm.zzua;
        }
        if (i < 0) {
            throw zzhq.zzhf();
        }
        int i2 = this.zzpp + this.pos + i;
        if (i2 - this.zzpf > 0) {
            throw zzhq.zzhk();
        }
        int i3 = this.zzpm;
        if (i2 > i3) {
            zzad((i3 - this.zzpp) - this.pos);
            throw zzhq.zzhe();
        }
        int i4 = this.zzpo - this.pos;
        int i5 = i - i4;
        if (i5 >= 4096 && i5 > this.zzpn.available()) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, this.pos, bArr, 0, i4);
        this.zzpp += this.zzpo;
        this.pos = 0;
        this.zzpo = 0;
        while (i4 < bArr.length) {
            int read = this.zzpn.read(bArr, i4, i - i4);
            if (read == -1) {
                throw zzhq.zzhe();
            }
            this.zzpp += read;
            i4 += read;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
        r7 = r7 - r0.length;
        r0.add(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> zzah(int r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
        L8:
            r0 = r7
            if (r0 <= 0) goto L60
            r0 = r7
            r1 = 4096(0x1000, float:5.74E-42)
            int r0 = java.lang.Math.min(r0, r1)
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = 0
            r10 = r0
        L19:
            r0 = r10
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L50
            r0 = r6
            java.io.InputStream r0 = r0.zzpn
            r1 = r9
            r2 = r10
            r3 = r9
            int r3 = r3.length
            r4 = r10
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 == r1) goto L4c
            r0 = r6
            r1 = r6
            int r1 = r1.zzpp
            r2 = r11
            int r1 = r1 + r2
            r0.zzpp = r1
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L19
        L4c:
            com.google.android.gms.internal.firebase_remote_config.zzhq r0 = com.google.android.gms.internal.firebase_remote_config.zzhq.zzhe()
            throw r0
        L50:
            r0 = r7
            r1 = r9
            int r1 = r1.length
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r9
            boolean r0 = r0.add(r1)
            goto L8
        L60:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzgo.zzah(int):java.util.List");
    }

    private final byte[] zzb(int i, boolean z) {
        byte[] zzag = zzag(i);
        if (zzag != null) {
            return zzag;
        }
        int i2 = this.pos;
        int i3 = this.zzpo;
        int i4 = i3 - i2;
        this.zzpp += i3;
        this.pos = 0;
        this.zzpo = 0;
        List<byte[]> zzah = zzah(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, i2, bArr, 0, i4);
        Iterator<byte[]> it = zzah.iterator();
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

    private final int zzft() {
        int i;
        int i2 = this.pos;
        int i3 = this.zzpo;
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
                    i = i6 ^ (-128);
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
        return (int) zzfq();
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    private final long zzfu() {
        char c;
        char c2;
        char c3;
        int i;
        int i2 = this.pos;
        int i3 = this.zzpo;
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
                if (i6 >= 0) {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        c = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            long j = i9;
                            int i10 = i5 + 1;
                            char c4 = j ^ (bArr[i5] << 28);
                            if (c4 >= 0) {
                                c3 = 16256;
                                i5 = i10;
                            } else {
                                int i11 = i10 + 1;
                                char c5 = c4 ^ (bArr[i10] << 35);
                                if (c5 < 0) {
                                    c2 = 16256;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    c4 = c5 ^ (bArr[i11] << 42);
                                    if (c4 >= 0) {
                                        c3 = 16256;
                                    } else {
                                        int i12 = i5 + 1;
                                        c5 = c4 ^ (bArr[i5] << 49);
                                        if (c5 < 0) {
                                            c2 = 16256;
                                            i5 = i12;
                                        } else {
                                            i5 = i12 + 1;
                                            c = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            if (c < 0) {
                                                int i13 = i5 + 1;
                                                if (bArr[i5] >= 0) {
                                                    i5 = i13;
                                                }
                                            }
                                        }
                                    }
                                }
                                c = c5 ^ c2;
                            }
                            c = c4 ^ c3;
                        }
                    }
                    this.pos = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.pos = i5;
                return c;
            }
        }
        return zzfq();
    }

    private final int zzfv() {
        int i = this.pos;
        int i2 = i;
        if (this.zzpo - i < 4) {
            zzae(4);
            i2 = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final long zzfw() {
        int i = this.pos;
        int i2 = i;
        if (this.zzpo - i < 8) {
            zzae(8);
            i2 = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    private final void zzfx() {
        this.zzpo += this.zzpj;
        int i = this.zzpp;
        int i2 = this.zzpo;
        int i3 = i + i2;
        int i4 = this.zzpm;
        if (i3 <= i4) {
            this.zzpj = 0;
            return;
        }
        this.zzpj = i3 - i4;
        this.zzpo = i2 - this.zzpj;
    }

    private final byte zzfy() {
        if (this.pos == this.zzpo) {
            zzae(1);
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final double readDouble() {
        return Double.longBitsToDouble(zzfw());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final float readFloat() {
        return Float.intBitsToFloat(zzfv());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final String readString() {
        int zzft = zzft();
        if (zzft > 0) {
            int i = this.zzpo;
            int i2 = this.pos;
            if (zzft <= i - i2) {
                String str = new String(this.buffer, i2, zzft, zzhm.UTF_8);
                this.pos += zzft;
                return str;
            }
        }
        if (zzft == 0) {
            return "";
        }
        if (zzft > this.zzpo) {
            return new String(zzb(zzft, false), zzhm.UTF_8);
        }
        zzae(zzft);
        String str2 = new String(this.buffer, this.pos, zzft, zzhm.UTF_8);
        this.pos += zzft;
        return str2;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzaa(int i) {
        if (i >= 0) {
            int i2 = i + this.zzpp + this.pos;
            int i3 = this.zzpm;
            if (i2 > i3) {
                throw zzhq.zzhe();
            }
            this.zzpm = i2;
            zzfx();
            return i3;
        }
        throw zzhq.zzhf();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final void zzab(int i) {
        this.zzpm = i;
        zzfx();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfb() {
        if (zzfr()) {
            this.zzpl = 0;
            return 0;
        }
        this.zzpl = zzft();
        int i = this.zzpl;
        if ((i >>> 3) == 0) {
            throw zzhq.zzhh();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzfc() {
        return zzfu();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzfd() {
        return zzfu();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfe() {
        return zzft();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzff() {
        return zzfw();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfg() {
        return zzfv();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final boolean zzfh() {
        return zzfu() != 0;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final String zzfi() {
        byte[] bArr;
        int zzft = zzft();
        int i = this.pos;
        int i2 = 0;
        if (zzft <= this.zzpo - i && zzft > 0) {
            bArr = this.buffer;
            this.pos = i + zzft;
            i2 = i;
        } else if (zzft == 0) {
            return "";
        } else {
            if (zzft <= this.zzpo) {
                zzae(zzft);
                bArr = this.buffer;
                this.pos = zzft;
            } else {
                bArr = zzb(zzft, false);
            }
        }
        return zzkg.zzg(bArr, i2, zzft);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final zzfx zzfj() {
        int zzft = zzft();
        int i = this.zzpo;
        int i2 = this.pos;
        if (zzft <= i - i2 && zzft > 0) {
            zzfx zza = zzfx.zza(this.buffer, i2, zzft);
            this.pos += zzft;
            return zza;
        } else if (zzft == 0) {
            return zzfx.zzov;
        } else {
            byte[] zzag = zzag(zzft);
            if (zzag != null) {
                return zzfx.zza(zzag);
            }
            int i3 = this.pos;
            int i4 = this.zzpo;
            int i5 = i4 - i3;
            this.zzpp += i4;
            this.pos = 0;
            this.zzpo = 0;
            List<byte[]> zzah = zzah(zzft - i5);
            byte[] bArr = new byte[zzft];
            System.arraycopy(this.buffer, i3, bArr, 0, i5);
            for (byte[] bArr2 : zzah) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return zzfx.zzb(bArr);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfk() {
        return zzft();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfl() {
        return zzft();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfm() {
        return zzfv();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzfn() {
        return zzfw();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfo() {
        return zzac(zzft());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzfp() {
        return zze(zzfu());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final long zzfq() {
        byte zzfy;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (zzfy & Byte.MAX_VALUE) << i;
            if ((zzfy() & 128) == 0) {
                return c;
            }
        }
        throw zzhq.zzhg();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final boolean zzfr() {
        return this.pos == this.zzpo && !zzaf(1);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfs() {
        return this.zzpp + this.pos;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final void zzy(int i) {
        if (this.zzpl == i) {
            return;
        }
        throw zzhq.zzhi();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final boolean zzz(int i) {
        int zzfb;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.zzpo - this.pos < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zzfy() >= 0) {
                        return true;
                    }
                }
                throw zzhq.zzhg();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.buffer;
                int i5 = this.pos;
                this.pos = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzhq.zzhg();
        } else if (i2 == 1) {
            zzad(8);
            return true;
        } else if (i2 == 2) {
            zzad(zzft());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzhq.zzhj();
            }
            zzad(4);
            return true;
        } else {
            do {
                zzfb = zzfb();
                if (zzfb == 0) {
                    break;
                }
            } while (zzz(zzfb));
            zzy(((i >>> 3) << 3) | 4);
            return true;
        }
    }
}
