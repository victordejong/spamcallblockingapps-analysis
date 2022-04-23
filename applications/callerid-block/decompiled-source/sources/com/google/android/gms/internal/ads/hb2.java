package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hb2.class */
final class hb2 {
    /* renamed from: a */
    static int m7309a(byte[] bArr, int i, gb2 gb2Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m7308b(b, bArr, i2, gb2Var);
        }
        gb2Var.f6633a = b;
        return i2;
    }

    /* renamed from: b */
    static int m7308b(int i, byte[] bArr, int i2, gb2 gb2Var) {
        int i3;
        int i4;
        int i5;
        int i6 = i & 127;
        int i7 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            i5 = b << 7;
        } else {
            int i8 = i6 | ((b & Byte.MAX_VALUE) << 7);
            int i9 = i7 + 1;
            byte b2 = bArr[i7];
            if (b2 >= 0) {
                i4 = b2 << 14;
                i3 = i8;
            } else {
                int i10 = i8 | ((b2 & Byte.MAX_VALUE) << 14);
                int i11 = i9 + 1;
                byte b3 = bArr[i9];
                if (b3 >= 0) {
                    i5 = b3 << 21;
                    i7 = i11;
                    i6 = i10;
                } else {
                    i3 = i10 | ((b3 & Byte.MAX_VALUE) << 21);
                    i9 = i11 + 1;
                    byte b4 = bArr[i11];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i12 = i9 + 1;
                            if (bArr[i9] < 0) {
                                i9 = i12;
                            } else {
                                gb2Var.f6633a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i12;
                            }
                        }
                    }
                }
            }
            gb2Var.f6633a = i3 | i4;
            return i9;
        }
        gb2Var.f6633a = i6 | i5;
        return i7;
    }

    /* renamed from: c */
    static int m7307c(byte[] bArr, int i, gb2 gb2Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
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
            gb2Var.f6634b = j2;
            return i3;
        }
        gb2Var.f6634b = j;
        return i2;
    }

    /* renamed from: d */
    static int m7306d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    static long m7305e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    static int m7304f(byte[] bArr, int i, gb2 gb2Var) {
        int a = m7309a(bArr, i, gb2Var);
        int i2 = gb2Var.f6633a;
        if (i2 < 0) {
            throw zzett.zzc();
        } else if (i2 == 0) {
            gb2Var.f6635c = "";
            return a;
        } else {
            gb2Var.f6635c = new String(bArr, a, i2, xc2.f9100a);
            return a + i2;
        }
    }

    /* renamed from: g */
    static int m7303g(byte[] bArr, int i, gb2 gb2Var) {
        int a = m7309a(bArr, i, gb2Var);
        int i2 = gb2Var.f6633a;
        if (i2 < 0) {
            throw zzett.zzc();
        } else if (i2 == 0) {
            gb2Var.f6635c = "";
            return a;
        } else {
            gb2Var.f6635c = jf2.m6983f(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: h */
    static int m7302h(byte[] bArr, int i, gb2 gb2Var) {
        int a = m7309a(bArr, i, gb2Var);
        int i2 = gb2Var.f6633a;
        if (i2 < 0) {
            throw zzett.zzc();
        } else if (i2 > bArr.length - a) {
            throw zzett.zzb();
        } else if (i2 == 0) {
            gb2Var.f6635c = zzesf.f9578b;
            return a;
        } else {
            gb2Var.f6635c = zzesf.zzr(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: i */
    static int m7301i(he2 he2Var, byte[] bArr, int i, int i2, gb2 gb2Var) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m7308b(b, bArr, i3, gb2Var);
            i5 = gb2Var.f6633a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzett.zzb();
        }
        Object zza = he2Var.zza();
        int i6 = i5 + i4;
        he2Var.m7283g(zza, bArr, i4, i6, gb2Var);
        he2Var.m7289a(zza);
        gb2Var.f6635c = zza;
        return i6;
    }

    /* renamed from: j */
    static int m7300j(he2 he2Var, byte[] bArr, int i, int i2, int i3, gb2 gb2Var) {
        td2 td2Var = (td2) he2Var;
        Object zza = td2Var.zza();
        int I = td2Var.I(zza, bArr, i, i2, i3, gb2Var);
        td2Var.a(zza);
        gb2Var.f6635c = zza;
        return I;
    }

    /* renamed from: k */
    static int m7299k(int i, byte[] bArr, int i2, int i3, wc2<?> wc2Var, gb2 gb2Var) {
        pc2 pc2Var = (pc2) wc2Var;
        int a = m7309a(bArr, i2, gb2Var);
        while (true) {
            pc2Var.N0(gb2Var.f6633a);
            if (a >= i3) {
                break;
            }
            int a2 = m7309a(bArr, a, gb2Var);
            if (i != gb2Var.f6633a) {
                break;
            }
            a = m7309a(bArr, a2, gb2Var);
        }
        return a;
    }

    /* renamed from: l */
    static int m7298l(byte[] bArr, int i, wc2<?> wc2Var, gb2 gb2Var) {
        pc2 pc2Var = (pc2) wc2Var;
        int a = m7309a(bArr, i, gb2Var);
        int i2 = gb2Var.f6633a + a;
        while (a < i2) {
            a = m7309a(bArr, a, gb2Var);
            pc2Var.N0(gb2Var.f6633a);
        }
        if (a == i2) {
            return a;
        }
        throw zzett.zzb();
    }

    /* renamed from: m */
    static int m7297m(he2<?> he2Var, int i, byte[] bArr, int i2, int i3, wc2<?> wc2Var, gb2 gb2Var) {
        int i4 = m7301i(he2Var, bArr, i2, i3, gb2Var);
        while (true) {
            wc2Var.add(gb2Var.f6635c);
            if (i4 >= i3) {
                break;
            }
            int a = m7309a(bArr, i4, gb2Var);
            if (i != gb2Var.f6633a) {
                break;
            }
            i4 = m7301i(he2Var, bArr, a, i3, gb2Var);
        }
        return i4;
    }

    /* renamed from: n */
    static int m7296n(int i, byte[] bArr, int i2, int i3, ve2 ve2Var, gb2 gb2Var) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int c = m7307c(bArr, i2, gb2Var);
                ve2Var.m5256h(i, Long.valueOf(gb2Var.f6634b));
                return c;
            } else if (i5 == 1) {
                ve2Var.m5256h(i, Long.valueOf(m7305e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m7309a(bArr, i2, gb2Var);
                int i6 = gb2Var.f6633a;
                if (i6 < 0) {
                    throw zzett.zzc();
                } else if (i6 <= bArr.length - a) {
                    ve2Var.m5256h(i, i6 == 0 ? zzesf.f9578b : zzesf.zzr(bArr, a, i6));
                    return a + i6;
                } else {
                    throw zzett.zzb();
                }
            } else if (i5 == 3) {
                int i7 = (i & (-8)) | 4;
                ve2 b = ve2.m5262b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    i4 = m7309a(bArr, i2, gb2Var);
                    i8 = gb2Var.f6633a;
                    if (i8 == i7) {
                        i8 = i8;
                        break;
                    }
                    i2 = m7296n(i8, bArr, i4, i3, b, gb2Var);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzett.zzi();
                }
                ve2Var.m5256h(i, b);
                return i4;
            } else if (i5 == 5) {
                ve2Var.m5256h(i, Integer.valueOf(m7306d(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzett.zze();
            }
        } else {
            throw zzett.zze();
        }
    }
}
