package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgl.class */
public final class zzgl extends zzgj {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzpi;
    private int zzpj;
    private int zzpk;
    private int zzpl;
    private int zzpm;

    /* JADX INFO: Access modifiers changed from: private */
    public zzgl(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzpm = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzpk = this.pos;
        this.zzpi = z;
    }

    private final void zzad(int i) {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzhq.zzhf();
        }
        throw zzhq.zzhe();
    }

    private final int zzft() {
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
        if (this.limit - i >= 4) {
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzhq.zzhe();
    }

    private final long zzfw() {
        int i = this.pos;
        if (this.limit - i >= 8) {
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzhq.zzhe();
    }

    private final void zzfx() {
        this.limit += this.zzpj;
        int i = this.limit;
        int i2 = i - this.zzpk;
        int i3 = this.zzpm;
        if (i2 <= i3) {
            this.zzpj = 0;
            return;
        }
        this.zzpj = i2 - i3;
        this.limit = i - this.zzpj;
    }

    private final byte zzfy() {
        int i = this.pos;
        if (i != this.limit) {
            byte[] bArr = this.buffer;
            this.pos = i + 1;
            return bArr[i];
        }
        throw zzhq.zzhe();
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
            int i = this.limit;
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
        if (zzft >= 0) {
            throw zzhq.zzhe();
        }
        throw zzhq.zzhf();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzaa(int i) {
        if (i >= 0) {
            int zzfs = i + zzfs();
            int i2 = this.zzpm;
            if (zzfs > i2) {
                throw zzhq.zzhe();
            }
            this.zzpm = zzfs;
            zzfx();
            return i2;
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
        int zzft = zzft();
        if (zzft > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzft <= i - i2) {
                String zzg = zzkg.zzg(this.buffer, i2, zzft);
                this.pos += zzft;
                return zzg;
            }
        }
        if (zzft == 0) {
            return "";
        }
        if (zzft > 0) {
            throw zzhq.zzhe();
        }
        throw zzhq.zzhf();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final zzfx zzfj() {
        byte[] bArr;
        int zzft = zzft();
        if (zzft > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (zzft <= i - i2) {
                zzfx zza = zzfx.zza(this.buffer, i2, zzft);
                this.pos += zzft;
                return zza;
            }
        }
        if (zzft == 0) {
            return zzfx.zzov;
        }
        if (zzft > 0) {
            int i3 = this.limit;
            int i4 = this.pos;
            if (zzft <= i3 - i4) {
                this.pos = zzft + i4;
                bArr = Arrays.copyOfRange(this.buffer, i4, this.pos);
                return zzfx.zzb(bArr);
            }
        }
        if (zzft > 0) {
            throw zzhq.zzhe();
        }
        if (zzft != 0) {
            throw zzhq.zzhf();
        }
        bArr = zzhm.zzua;
        return zzfx.zzb(bArr);
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
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzgj
    public final int zzfs() {
        return this.pos - this.zzpk;
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
            if (this.limit - this.pos < 10) {
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
