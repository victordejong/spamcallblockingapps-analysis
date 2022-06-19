package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.video.POBVastError;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjg.class */
final class zzjg {
    private final int zzahp;
    private final int zzamx;
    private final int zzamy;
    private final int zzamz;
    private final int zzana;
    private final short[] zzanb;
    private int zzanc;
    private short[] zzand;
    private int zzane;
    private short[] zzanf;
    private int zzang;
    private short[] zzanh;
    private int zzank;
    private int zzanl;
    private int zzanm;
    private int zzann;
    private int zzanp;
    private int zzanq;
    private int zzanr;
    private int zzani = 0;
    private int zzanj = 0;
    private int zzano = 0;
    private float zzaib = 1.0f;
    private float zzaic = 1.0f;

    public zzjg(int i, int i2) {
        this.zzahp = i;
        this.zzamx = i2;
        this.zzamy = i / POBVastError.GENERAL_LINEAR_ERROR;
        int i3 = i / 65;
        this.zzamz = i3;
        int i4 = i3 * 2;
        this.zzana = i4;
        this.zzanb = new short[i4];
        this.zzanc = i4;
        this.zzand = new short[i4 * i2];
        this.zzane = i4;
        this.zzanf = new short[i4 * i2];
        this.zzang = i4;
        this.zzanh = new short[i4 * i2];
    }

    private final int zza(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.zzamx;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i2 > i3) {
                this.zzanq = i5 / i7;
                this.zzanr = i9 / i6;
                return i7;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < i2; i11++) {
                short s3 = sArr[i4 + i11];
                short s4 = sArr[i4 + i2 + i11];
                if (s3 >= s4) {
                    s2 = s3;
                    s = s4;
                } else {
                    s2 = s4;
                    s = s3;
                }
                i10 += s2 - s;
            }
            int i12 = i5;
            int i13 = i7;
            if (i10 * i7 < i5 * i2) {
                i13 = i2;
                i12 = i10;
            }
            int i14 = i6;
            int i15 = i9;
            if (i10 * i6 > i9 * i2) {
                i14 = i2;
                i15 = i10;
            }
            i2++;
            i5 = i12;
            i6 = i14;
            i7 = i13;
            i8 = i15;
        }
    }

    private static void zza(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private final void zza(short[] sArr, int i, int i2) {
        zzy(i2);
        int i3 = this.zzamx;
        System.arraycopy(sArr, i * i3, this.zzanf, this.zzanl * i3, i3 * i2);
        this.zzanl += i2;
    }

    private final void zzb(short[] sArr, int i, int i2) {
        int i3 = this.zzana / i2;
        int i4 = this.zzamx;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.zzanb[i6] = (short) (s / i5);
        }
    }

    private final void zzgg() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.zzanl;
        float f = this.zzaib / this.zzaic;
        double d = f;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.zzank;
            if (i9 >= this.zzana) {
                int i10 = 0;
                while (true) {
                    int i11 = i10;
                    int i12 = this.zzann;
                    if (i12 > 0) {
                        int min = Math.min(this.zzana, i12);
                        zza(this.zzand, i11, min);
                        this.zzann -= min;
                        i4 = i11 + min;
                    } else {
                        short[] sArr = this.zzand;
                        int i13 = this.zzahp;
                        int i14 = i13 > 4000 ? i13 / 4000 : 1;
                        if (this.zzamx == 1 && i14 == 1) {
                            i5 = zza(sArr, i11, this.zzamy, this.zzamz);
                        } else {
                            zzb(sArr, i11, i14);
                            int zza = zza(this.zzanb, 0, this.zzamy / i14, this.zzamz / i14);
                            if (i14 != 1) {
                                int i15 = zza * i14;
                                int i16 = i14 << 2;
                                int i17 = i15 - i16;
                                int i18 = i15 + i16;
                                int i19 = this.zzamy;
                                int i20 = i17;
                                if (i17 < i19) {
                                    i20 = i19;
                                }
                                int i21 = this.zzamz;
                                int i22 = i18;
                                if (i18 > i21) {
                                    i22 = i21;
                                }
                                if (this.zzamx == 1) {
                                    i5 = zza(sArr, i11, i20, i22);
                                } else {
                                    zzb(sArr, i11, 1);
                                    i5 = zza(this.zzanb, 0, i20, i22);
                                }
                            } else {
                                i5 = zza;
                            }
                        }
                        int i23 = this.zzanq;
                        int i24 = i23 != 0 && this.zzano != 0 && this.zzanr <= i23 * 3 && (i23 << 1) > this.zzanp * 3 ? this.zzano : i5;
                        this.zzanp = i23;
                        this.zzano = i5;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzand;
                            if (f >= 2.0f) {
                                i7 = (int) (i24 / (f - 1.0f));
                            } else {
                                this.zzann = (int) ((i24 * (2.0f - f)) / (f - 1.0f));
                                i7 = i24;
                            }
                            zzy(i7);
                            zza(i7, this.zzamx, this.zzanf, this.zzanl, sArr2, i11, sArr2, i11 + i24);
                            this.zzanl += i7;
                            i4 = i11 + i24 + i7;
                        } else {
                            short[] sArr3 = this.zzand;
                            if (f < 0.5f) {
                                i6 = (int) ((i24 * f) / (1.0f - f));
                            } else {
                                this.zzann = (int) ((i24 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i6 = i24;
                            }
                            int i25 = i24 + i6;
                            zzy(i25);
                            int i26 = this.zzamx;
                            System.arraycopy(sArr3, i11 * i26, this.zzanf, this.zzanl * i26, i26 * i24);
                            zza(i6, this.zzamx, this.zzanf, this.zzanl + i24, sArr3, i24 + i11, sArr3, i11);
                            this.zzanl += i25;
                            i4 = i11 + i6;
                        }
                    }
                    if (this.zzana + i4 > i9) {
                        break;
                    }
                    i10 = i4;
                }
                int i27 = this.zzank - i4;
                short[] sArr4 = this.zzand;
                int i28 = this.zzamx;
                System.arraycopy(sArr4, i4 * i28, sArr4, 0, i28 * i27);
                this.zzank = i27;
            }
        } else {
            zza(this.zzand, 0, this.zzank);
            this.zzank = 0;
        }
        float f2 = this.zzaic;
        if (f2 == 1.0f || this.zzanl == i8) {
            return;
        }
        int i29 = this.zzahp;
        int i30 = (int) (i29 / f2);
        while (true) {
            if (i30 <= 16384 && i29 <= 16384) {
                break;
            }
            i30 /= 2;
            i29 /= 2;
        }
        int i31 = this.zzanl - i8;
        int i32 = this.zzanm;
        int i33 = this.zzang;
        if (i32 + i31 > i33) {
            int i34 = i33 + (i33 / 2) + i31;
            this.zzang = i34;
            this.zzanh = Arrays.copyOf(this.zzanh, i34 * this.zzamx);
        }
        short[] sArr5 = this.zzanf;
        int i35 = this.zzamx;
        System.arraycopy(sArr5, i8 * i35, this.zzanh, this.zzanm * i35, i35 * i31);
        this.zzanl = i8;
        this.zzanm += i31;
        int i36 = 0;
        while (true) {
            i = this.zzanm;
            if (i36 >= i - 1) {
                break;
            }
            while (true) {
                i2 = this.zzani;
                i3 = this.zzanj;
                if ((i2 + 1) * i30 <= i3 * i29) {
                    break;
                }
                zzy(1);
                int i37 = 0;
                while (true) {
                    int i38 = this.zzamx;
                    if (i37 < i38) {
                        short[] sArr6 = this.zzanf;
                        int i39 = this.zzanl;
                        short[] sArr7 = this.zzanh;
                        int i40 = (i36 * i38) + i37;
                        short s = sArr7[i40];
                        short s2 = sArr7[i40 + i38];
                        int i41 = this.zzanj;
                        int i42 = this.zzani;
                        int i43 = (i42 + 1) * i30;
                        int i44 = i43 - (i41 * i29);
                        int i45 = i43 - (i42 * i30);
                        sArr6[(i39 * i38) + i37] = (short) (((s * i44) + ((i45 - i44) * s2)) / i45);
                        i37++;
                    }
                }
                this.zzanj++;
                this.zzanl++;
            }
            int i46 = i2 + 1;
            this.zzani = i46;
            if (i46 == i29) {
                this.zzani = 0;
                zzpg.checkState(i3 == i30);
                this.zzanj = 0;
            }
            i36++;
        }
        int i47 = i - 1;
        if (i47 == 0) {
            return;
        }
        short[] sArr8 = this.zzanh;
        int i48 = this.zzamx;
        System.arraycopy(sArr8, i47 * i48, sArr8, 0, (i - i47) * i48);
        this.zzanm -= i47;
    }

    private final void zzy(int i) {
        int i2 = this.zzanl;
        int i3 = this.zzane;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.zzane = i4;
            this.zzanf = Arrays.copyOf(this.zzanf, i4 * this.zzamx);
        }
    }

    private final void zzz(int i) {
        int i2 = this.zzank;
        int i3 = this.zzanc;
        if (i2 + i > i3) {
            int i4 = i3 + (i3 / 2) + i;
            this.zzanc = i4;
            this.zzand = Arrays.copyOf(this.zzand, i4 * this.zzamx);
        }
    }

    public final void setSpeed(float f) {
        this.zzaib = f;
    }

    public final void zza(float f) {
        this.zzaic = f;
    }

    public final void zza(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzamx;
        int i2 = remaining / i;
        zzz(i2);
        shortBuffer.get(this.zzand, this.zzank * this.zzamx, ((i * i2) << 1) / 2);
        this.zzank += i2;
        zzgg();
    }

    public final void zzb(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzamx, this.zzanl);
        shortBuffer.put(this.zzanf, 0, this.zzamx * min);
        int i = this.zzanl - min;
        this.zzanl = i;
        short[] sArr = this.zzanf;
        int i2 = this.zzamx;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zzfl() {
        int i;
        int i2 = this.zzank;
        float f = this.zzaib;
        float f2 = this.zzaic;
        int i3 = this.zzanl + ((int) ((((i2 / (f / f2)) + this.zzanm) / f2) + 0.5f));
        zzz((this.zzana * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.zzana;
            int i5 = this.zzamx;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.zzand[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.zzank += i * 2;
        zzgg();
        if (this.zzanl > i3) {
            this.zzanl = i3;
        }
        this.zzank = 0;
        this.zzann = 0;
        this.zzanm = 0;
    }

    public final int zzgf() {
        return this.zzanl;
    }
}
