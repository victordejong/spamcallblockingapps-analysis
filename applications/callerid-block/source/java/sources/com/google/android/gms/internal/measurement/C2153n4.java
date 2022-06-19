package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.n4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/n4.class */
final class C2153n4 {
    /* renamed from: a */
    static int m4243a(byte[] bArr, int i, C2148m4 c2148m4) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c2148m4.f9786a = b;
            return i2;
        }
        return m4242b(b, bArr, i2, c2148m4);
    }

    /* renamed from: b */
    static int m4242b(int i, byte[] bArr, int i2, C2148m4 c2148m4) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i & 127;
        int i8 = i2 + 1;
        byte b = bArr[i2];
        if (b < 0) {
            int i9 = i7 | ((b & Byte.MAX_VALUE) << 7);
            int i10 = i8 + 1;
            byte b2 = bArr[i8];
            if (b2 >= 0) {
                i4 = b2 << 14;
                i3 = i9;
            } else {
                int i11 = i9 | ((b2 & Byte.MAX_VALUE) << 14);
                int i12 = i10 + 1;
                byte b3 = bArr[i10];
                if (b3 >= 0) {
                    i5 = b3 << 21;
                    i8 = i12;
                    i6 = i11;
                } else {
                    i3 = i11 | ((b3 & Byte.MAX_VALUE) << 21);
                    i10 = i12 + 1;
                    byte b4 = bArr[i12];
                    if (b4 >= 0) {
                        i4 = b4 << 28;
                    } else {
                        while (true) {
                            int i13 = i10 + 1;
                            if (bArr[i10] >= 0) {
                                c2148m4.f9786a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i13;
                            }
                            i10 = i13;
                        }
                    }
                }
            }
            c2148m4.f9786a = i3 | i4;
            return i10;
        }
        i5 = b << 7;
        i6 = i7;
        c2148m4.f9786a = i6 | i5;
        return i8;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    static int m4241c(byte[] bArr, int i, C2148m4 c2148m4) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c2148m4.f9787b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        char c = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            c |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        c2148m4.f9787b = c;
        return i3;
    }

    /* renamed from: d */
    static int m4240d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    static long m4239e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    static int m4238f(byte[] bArr, int i, C2148m4 c2148m4) {
        int m4243a = m4243a(bArr, i, c2148m4);
        int i2 = c2148m4.f9786a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c2148m4.f9788c = "";
                return m4243a;
            }
            c2148m4.f9788c = new String(bArr, m4243a, i2, C2202x5.f9846a);
            return m4243a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: g */
    static int m4237g(byte[] bArr, int i, C2148m4 c2148m4) {
        int m4243a = m4243a(bArr, i, c2148m4);
        int i2 = c2148m4.f9786a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c2148m4.f9788c = "";
                return m4243a;
            }
            c2148m4.f9788c = C2109e8.m4344e(bArr, m4243a, i2);
            return m4243a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: h */
    static int m4236h(byte[] bArr, int i, C2148m4 c2148m4) {
        int m4243a = m4243a(bArr, i, c2148m4);
        int i2 = c2148m4.f9786a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m4243a) {
                throw zzib.zza();
            }
            if (i2 == 0) {
                c2148m4.f9788c = zzgr.f9861b;
                return m4243a;
            }
            c2148m4.f9788c = zzgr.zzj(bArr, m4243a, i2);
            return m4243a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: i */
    static int m4235i(AbstractC2099c7 abstractC2099c7, byte[] bArr, int i, int i2, C2148m4 c2148m4) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m4242b(b, bArr, i3, c2148m4);
            i5 = c2148m4.f9786a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzib.zza();
        }
        Object zza = abstractC2099c7.zza();
        int i6 = i5 + i4;
        abstractC2099c7.m4411g(zza, bArr, i4, i6, c2148m4);
        abstractC2099c7.m4412f(zza);
        c2148m4.f9788c = zza;
        return i6;
    }

    /* renamed from: j */
    static int m4234j(AbstractC2099c7 abstractC2099c7, byte[] bArr, int i, int i2, int i3, C2148m4 c2148m4) {
        t6 t6Var = (t6) abstractC2099c7;
        Object zza = t6Var.zza();
        int D = t6Var.D(zza, bArr, i, i2, i3, c2148m4);
        t6Var.f(zza);
        c2148m4.f9788c = zza;
        return D;
    }

    /* renamed from: k */
    static int m4233k(int i, byte[] bArr, int i2, int i3, AbstractC2195w5<?> abstractC2195w5, C2148m4 c2148m4) {
        int i4;
        r5 r5Var = (r5) abstractC2195w5;
        int m4243a = m4243a(bArr, i2, c2148m4);
        while (true) {
            i4 = m4243a;
            r5Var.N0(c2148m4.f9786a);
            if (i4 >= i3) {
                break;
            }
            int m4243a2 = m4243a(bArr, i4, c2148m4);
            if (i != c2148m4.f9786a) {
                break;
            }
            m4243a = m4243a(bArr, m4243a2, c2148m4);
        }
        return i4;
    }

    /* renamed from: l */
    static int m4232l(byte[] bArr, int i, AbstractC2195w5<?> abstractC2195w5, C2148m4 c2148m4) {
        r5 r5Var = (r5) abstractC2195w5;
        int m4243a = m4243a(bArr, i, c2148m4);
        int i2 = c2148m4.f9786a + m4243a;
        while (m4243a < i2) {
            m4243a = m4243a(bArr, m4243a, c2148m4);
            r5Var.N0(c2148m4.f9786a);
        }
        if (m4243a == i2) {
            return m4243a;
        }
        throw zzib.zza();
    }

    /* renamed from: m */
    static int m4231m(AbstractC2099c7<?> abstractC2099c7, int i, byte[] bArr, int i2, int i3, AbstractC2195w5<?> abstractC2195w5, C2148m4 c2148m4) {
        int i4;
        int m4235i = m4235i(abstractC2099c7, bArr, i2, i3, c2148m4);
        while (true) {
            i4 = m4235i;
            abstractC2195w5.add(c2148m4.f9788c);
            if (i4 >= i3) {
                break;
            }
            int m4243a = m4243a(bArr, i4, c2148m4);
            if (i != c2148m4.f9786a) {
                break;
            }
            m4235i = m4235i(abstractC2099c7, bArr, m4243a, i3, c2148m4);
        }
        return i4;
    }

    /* renamed from: n */
    static int m4230n(int i, byte[] bArr, int i2, int i3, C2164q7 c2164q7, C2148m4 c2148m4) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m4241c = m4241c(bArr, i2, c2148m4);
                c2164q7.m4203h(i, Long.valueOf(c2148m4.f9787b));
                return m4241c;
            } else if (i5 == 1) {
                c2164q7.m4203h(i, Long.valueOf(m4239e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m4243a = m4243a(bArr, i2, c2148m4);
                int i6 = c2148m4.f9786a;
                if (i6 < 0) {
                    throw zzib.zzb();
                }
                if (i6 > bArr.length - m4243a) {
                    throw zzib.zza();
                }
                c2164q7.m4203h(i, i6 == 0 ? zzgr.f9861b : zzgr.zzj(bArr, m4243a, i6));
                return m4243a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzib.zzc();
                }
                c2164q7.m4203h(i, Integer.valueOf(m4240d(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                C2164q7 m4209b = C2164q7.m4209b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m4243a2 = m4243a(bArr, i2, c2148m4);
                    int i9 = c2148m4.f9786a;
                    i8 = i9;
                    if (i9 == i7) {
                        i4 = m4243a2;
                        break;
                    }
                    int m4230n = m4230n(i8, bArr, m4243a2, i3, m4209b, c2148m4);
                    i8 = i9;
                    i2 = m4230n;
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzib.zze();
                }
                c2164q7.m4203h(i, m4209b);
                return i4;
            }
        }
        throw zzib.zzc();
    }
}
