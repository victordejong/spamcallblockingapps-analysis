package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgn.class */
public final class zzgn {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m12655a(int i, byte[] bArr, int i2, int i3, zzgm zzgmVar) throws zzih {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m12645k(bArr, i2, zzgmVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m12647i(bArr, i2, zzgmVar) + zzgmVar.f8453a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int i8 = m12647i(bArr, i2, zzgmVar);
                    i7 = zzgmVar.f8453a;
                    i7 = i7;
                    i4 = i8;
                    if (i7 == i6) {
                        break;
                    }
                    i2 = m12655a(i7, bArr, i8, i3, zzgmVar);
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzih.m12379g();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzih.m12382d();
            }
        } else {
            throw zzih.m12382d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m12654b(int i, byte[] bArr, int i2, int i3, zzii<?> zziiVar, zzgm zzgmVar) {
        zzia zziaVar = (zzia) zziiVar;
        int i4 = m12647i(bArr, i2, zzgmVar);
        zziaVar.m12400f(zzgmVar.f8453a);
        while (i4 < i3) {
            int i5 = m12647i(bArr, i4, zzgmVar);
            if (i != zzgmVar.f8453a) {
                break;
            }
            i4 = m12647i(bArr, i5, zzgmVar);
            zziaVar.m12400f(zzgmVar.f8453a);
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m12653c(int i, byte[] bArr, int i2, int i3, zzku zzkuVar, zzgm zzgmVar) throws zzih {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int k = m12645k(bArr, i2, zzgmVar);
                zzkuVar.m12111c(i, Long.valueOf(zzgmVar.f8454b));
                return k;
            } else if (i5 == 1) {
                zzkuVar.m12111c(i, Long.valueOf(m12644l(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int i6 = m12647i(bArr, i2, zzgmVar);
                int i7 = zzgmVar.f8453a;
                if (i7 < 0) {
                    throw zzih.m12384b();
                } else if (i7 <= bArr.length - i6) {
                    if (i7 == 0) {
                        zzkuVar.m12111c(i, zzgr.f8462g);
                    } else {
                        zzkuVar.m12111c(i, zzgr.m12632k(bArr, i6, i7));
                    }
                    return i6 + i7;
                } else {
                    throw zzih.m12385a();
                }
            } else if (i5 == 3) {
                zzku g = zzku.m12107g();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int i10 = m12647i(bArr, i2, zzgmVar);
                    i9 = zzgmVar.f8453a;
                    if (i9 == i8) {
                        i4 = i10;
                        i9 = i9;
                        break;
                    }
                    i2 = m12653c(i9, bArr, i10, i3, g, zzgmVar);
                }
                if (i4 > i3 || i9 != i8) {
                    throw zzih.m12379g();
                }
                zzkuVar.m12111c(i, g);
                return i4;
            } else if (i5 == 5) {
                zzkuVar.m12111c(i, Integer.valueOf(m12648h(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzih.m12382d();
            }
        } else {
            throw zzih.m12382d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m12652d(int i, byte[] bArr, int i2, zzgm zzgmVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzgmVar.f8453a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzgmVar.f8453a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgmVar.f8453a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgmVar.f8453a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgmVar.f8453a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m12651e(zzjz<?> zzjzVar, int i, byte[] bArr, int i2, int i3, zzii<?> zziiVar, zzgm zzgmVar) throws IOException {
        int g = m12649g(zzjzVar, bArr, i2, i3, zzgmVar);
        zziiVar.add(zzgmVar.f8455c);
        while (g < i3) {
            int i4 = m12647i(bArr, g, zzgmVar);
            if (i != zzgmVar.f8453a) {
                break;
            }
            g = m12649g(zzjzVar, bArr, i4, i3, zzgmVar);
            zziiVar.add(zzgmVar.f8455c);
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static int m12650f(zzjz zzjzVar, byte[] bArr, int i, int i2, int i3, zzgm zzgmVar) throws IOException {
        zzjl zzjlVar = (zzjl) zzjzVar;
        Object zza = zzjlVar.zza();
        int o = zzjlVar.m12292o(zza, bArr, i, i2, i3, zzgmVar);
        zzjlVar.mo12259d(zza);
        zzgmVar.f8455c = zza;
        return o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m12649g(zzjz zzjzVar, byte[] bArr, int i, int i2, zzgm zzgmVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m12652d(b, bArr, i3, zzgmVar);
            i5 = zzgmVar.f8453a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzih.m12385a();
        }
        Object zza = zzjzVar.zza();
        int i6 = i5 + i4;
        zzjzVar.mo12256g(zza, bArr, i4, i6, zzgmVar);
        zzjzVar.mo12259d(zza);
        zzgmVar.f8455c = zza;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static int m12648h(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m12647i(byte[] bArr, int i, zzgm zzgmVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m12652d(b, bArr, i2, zzgmVar);
        }
        zzgmVar.f8453a = b;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m12646j(byte[] bArr, int i, zzii<?> zziiVar, zzgm zzgmVar) throws IOException {
        zzia zziaVar = (zzia) zziiVar;
        int i2 = m12647i(bArr, i, zzgmVar);
        int i3 = zzgmVar.f8453a + i2;
        while (i2 < i3) {
            i2 = m12647i(bArr, i2, zzgmVar);
            zziaVar.m12400f(zzgmVar.f8453a);
        }
        if (i2 == i3) {
            return i2;
        }
        throw zzih.m12385a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static int m12645k(byte[] bArr, int i, zzgm zzgmVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzgmVar.f8454b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        zzgmVar.f8454b = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static long m12644l(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static double m12643m(byte[] bArr, int i) {
        return Double.longBitsToDouble(m12644l(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static int m12642n(byte[] bArr, int i, zzgm zzgmVar) throws zzih {
        int i2 = m12647i(bArr, i, zzgmVar);
        int i3 = zzgmVar.f8453a;
        if (i3 < 0) {
            throw zzih.m12384b();
        } else if (i3 == 0) {
            zzgmVar.f8455c = "";
            return i2;
        } else {
            zzgmVar.f8455c = new String(bArr, i2, i3, zzic.f8533a);
            return i2 + i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static float m12641o(byte[] bArr, int i) {
        return Float.intBitsToFloat(m12648h(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static int m12640p(byte[] bArr, int i, zzgm zzgmVar) throws zzih {
        int i2 = m12647i(bArr, i, zzgmVar);
        int i3 = zzgmVar.f8453a;
        if (i3 < 0) {
            throw zzih.m12384b();
        } else if (i3 == 0) {
            zzgmVar.f8455c = "";
            return i2;
        } else {
            zzgmVar.f8455c = zzla.m12036k(bArr, i2, i3);
            return i2 + i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static int m12639q(byte[] bArr, int i, zzgm zzgmVar) throws zzih {
        int i2 = m12647i(bArr, i, zzgmVar);
        int i3 = zzgmVar.f8453a;
        if (i3 < 0) {
            throw zzih.m12384b();
        } else if (i3 > bArr.length - i2) {
            throw zzih.m12385a();
        } else if (i3 == 0) {
            zzgmVar.f8455c = zzgr.f8462g;
            return i2;
        } else {
            zzgmVar.f8455c = zzgr.m12632k(bArr, i2, i3);
            return i2 + i3;
        }
    }
}
