package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.n4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/n4.class */
final class C2153n4 {
    /* renamed from: a */
    static int m4243a(byte[] bArr, int i, C2148m4 m4Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m4242b(b, bArr, i2, m4Var);
        }
        m4Var.f9786a = b;
        return i2;
    }

    /* renamed from: b */
    static int m4242b(int i, byte[] bArr, int i2, C2148m4 m4Var) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i & 127;
        int i8 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            i5 = b << 7;
            i6 = i7;
        } else {
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
                            if (bArr[i10] < 0) {
                                i10 = i13;
                            } else {
                                m4Var.f9786a = i3 | ((b4 & Byte.MAX_VALUE) << 28);
                                return i13;
                            }
                        }
                    }
                }
            }
            m4Var.f9786a = i3 | i4;
            return i10;
        }
        m4Var.f9786a = i6 | i5;
        return i8;
    }

    /* renamed from: c */
    static int m4241c(byte[] bArr, int i, C2148m4 m4Var) {
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
            m4Var.f9787b = j2;
            return i3;
        }
        m4Var.f9787b = j;
        return i2;
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
    static int m4238f(byte[] bArr, int i, C2148m4 m4Var) {
        int a = m4243a(bArr, i, m4Var);
        int i2 = m4Var.f9786a;
        if (i2 < 0) {
            throw zzib.zzb();
        } else if (i2 == 0) {
            m4Var.f9788c = "";
            return a;
        } else {
            m4Var.f9788c = new String(bArr, a, i2, C2202x5.f9846a);
            return a + i2;
        }
    }

    /* renamed from: g */
    static int m4237g(byte[] bArr, int i, C2148m4 m4Var) {
        int a = m4243a(bArr, i, m4Var);
        int i2 = m4Var.f9786a;
        if (i2 < 0) {
            throw zzib.zzb();
        } else if (i2 == 0) {
            m4Var.f9788c = "";
            return a;
        } else {
            m4Var.f9788c = C2109e8.m4344e(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: h */
    static int m4236h(byte[] bArr, int i, C2148m4 m4Var) {
        int a = m4243a(bArr, i, m4Var);
        int i2 = m4Var.f9786a;
        if (i2 < 0) {
            throw zzib.zzb();
        } else if (i2 > bArr.length - a) {
            throw zzib.zza();
        } else if (i2 == 0) {
            m4Var.f9788c = zzgr.f9861b;
            return a;
        } else {
            m4Var.f9788c = zzgr.zzj(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: i */
    static int m4235i(AbstractC2099c7 c7Var, byte[] bArr, int i, int i2, C2148m4 m4Var) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m4242b(b, bArr, i3, m4Var);
            i5 = m4Var.f9786a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzib.zza();
        }
        Object zza = c7Var.zza();
        int i6 = i5 + i4;
        c7Var.m4411g(zza, bArr, i4, i6, m4Var);
        c7Var.m4412f(zza);
        m4Var.f9788c = zza;
        return i6;
    }

    /* renamed from: j */
    static int m4234j(AbstractC2099c7 c7Var, byte[] bArr, int i, int i2, int i3, C2148m4 m4Var) {
        t6 t6Var = (t6) c7Var;
        Object zza = t6Var.zza();
        int D = t6Var.D(zza, bArr, i, i2, i3, m4Var);
        t6Var.f(zza);
        m4Var.f9788c = zza;
        return D;
    }

    /* renamed from: k */
    static int m4233k(int i, byte[] bArr, int i2, int i3, AbstractC2195w5<?> w5Var, C2148m4 m4Var) {
        r5 r5Var = (r5) w5Var;
        int a = m4243a(bArr, i2, m4Var);
        while (true) {
            r5Var.N0(m4Var.f9786a);
            if (a >= i3) {
                break;
            }
            int a2 = m4243a(bArr, a, m4Var);
            if (i != m4Var.f9786a) {
                break;
            }
            a = m4243a(bArr, a2, m4Var);
        }
        return a;
    }

    /* renamed from: l */
    static int m4232l(byte[] bArr, int i, AbstractC2195w5<?> w5Var, C2148m4 m4Var) {
        r5 r5Var = (r5) w5Var;
        int a = m4243a(bArr, i, m4Var);
        int i2 = m4Var.f9786a + a;
        while (a < i2) {
            a = m4243a(bArr, a, m4Var);
            r5Var.N0(m4Var.f9786a);
        }
        if (a == i2) {
            return a;
        }
        throw zzib.zza();
    }

    /* renamed from: m */
    static int m4231m(AbstractC2099c7<?> c7Var, int i, byte[] bArr, int i2, int i3, AbstractC2195w5<?> w5Var, C2148m4 m4Var) {
        int i4 = m4235i(c7Var, bArr, i2, i3, m4Var);
        while (true) {
            w5Var.add(m4Var.f9788c);
            if (i4 >= i3) {
                break;
            }
            int a = m4243a(bArr, i4, m4Var);
            if (i != m4Var.f9786a) {
                break;
            }
            i4 = m4235i(c7Var, bArr, a, i3, m4Var);
        }
        return i4;
    }

    /* renamed from: n */
    static int m4230n(int i, byte[] bArr, int i2, int i3, C2164q7 q7Var, C2148m4 m4Var) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int c = m4241c(bArr, i2, m4Var);
                q7Var.m4203h(i, Long.valueOf(m4Var.f9787b));
                return c;
            } else if (i5 == 1) {
                q7Var.m4203h(i, Long.valueOf(m4239e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m4243a(bArr, i2, m4Var);
                int i6 = m4Var.f9786a;
                if (i6 < 0) {
                    throw zzib.zzb();
                } else if (i6 <= bArr.length - a) {
                    q7Var.m4203h(i, i6 == 0 ? zzgr.f9861b : zzgr.zzj(bArr, a, i6));
                    return a + i6;
                } else {
                    throw zzib.zza();
                }
            } else if (i5 == 3) {
                int i7 = (i & (-8)) | 4;
                C2164q7 b = C2164q7.m4209b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = m4243a(bArr, i2, m4Var);
                    int i9 = m4Var.f9786a;
                    i8 = i9;
                    if (i9 == i7) {
                        i4 = a2;
                        break;
                    }
                    i2 = m4230n(i8, bArr, a2, i3, b, m4Var);
                    i8 = i9;
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzib.zze();
                }
                q7Var.m4203h(i, b);
                return i4;
            } else if (i5 == 5) {
                q7Var.m4203h(i, Integer.valueOf(m4240d(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzib.zzc();
            }
        } else {
            throw zzib.zzc();
        }
    }
}
