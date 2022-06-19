package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.s4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s4.class */
public final class C7543s4 {
    /* renamed from: a */
    public static int m6932a(byte[] bArr, int i, C7530r4 c7530r4) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c7530r4.f34660a = b;
            return i2;
        }
        return m6931b(b, bArr, i2, c7530r4);
    }

    /* renamed from: b */
    public static int m6931b(int i, byte[] bArr, int i2, C7530r4 c7530r4) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            c7530r4.f34660a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            c7530r4.f34660a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            c7530r4.f34660a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            c7530r4.f34660a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                c7530r4.f34660a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    public static int m6930c(byte[] bArr, int i, C7530r4 c7530r4) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c7530r4.f34661b = j;
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
        c7530r4.f34661b = c;
        return i3;
    }

    /* renamed from: d */
    public static int m6929d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    public static long m6928e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    public static int m6927f(byte[] bArr, int i, C7530r4 c7530r4) {
        int m6932a = m6932a(bArr, i, c7530r4);
        int i2 = c7530r4.f34660a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c7530r4.f34662c = "";
                return m6932a;
            }
            c7530r4.f34662c = new String(bArr, m6932a, i2, C7365f6.f34431a);
            return m6932a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: g */
    public static int m6926g(byte[] bArr, int i, C7530r4 c7530r4) {
        int m6932a = m6932a(bArr, i, c7530r4);
        int i2 = c7530r4.f34660a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c7530r4.f34662c = "";
                return m6932a;
            }
            c7530r4.f34662c = C7465m8.m7104e(bArr, m6932a, i2);
            return m6932a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: h */
    public static int m6925h(byte[] bArr, int i, C7530r4 c7530r4) {
        int m6932a = m6932a(bArr, i, c7530r4);
        int i2 = c7530r4.f34660a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m6932a) {
                throw zzib.zza();
            }
            if (i2 == 0) {
                c7530r4.f34662c = zzgr.f34851d;
                return m6932a;
            }
            c7530r4.f34662c = zzgr.zzj(bArr, m6932a, i2);
            return m6932a + i2;
        }
        throw zzib.zzb();
    }

    /* renamed from: i */
    public static int m6924i(AbstractC7436k7 abstractC7436k7, byte[] bArr, int i, int i2, C7530r4 c7530r4) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m6931b(b, bArr, i3, c7530r4);
            i5 = c7530r4.f34660a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzib.zza();
        }
        Object zza = abstractC7436k7.zza();
        int i6 = i5 + i4;
        abstractC7436k7.mo7203f(zza, bArr, i4, i6, c7530r4);
        abstractC7436k7.mo7204e0(zza);
        c7530r4.f34662c = zza;
        return i6;
    }

    /* renamed from: j */
    public static int m6923j(AbstractC7436k7 abstractC7436k7, byte[] bArr, int i, int i2, int i3, C7530r4 c7530r4) {
        C7310b7 c7310b7 = (C7310b7) abstractC7436k7;
        Object zza = c7310b7.zza();
        int m7663C = c7310b7.m7663C(zza, bArr, i, i2, i3, c7530r4);
        c7310b7.mo7204e0(zza);
        c7530r4.f34662c = zza;
        return m7663C;
    }

    /* renamed from: k */
    public static int m6922k(int i, byte[] bArr, int i2, int i3, AbstractC7351e6<?> abstractC7351e6, C7530r4 c7530r4) {
        C7622y5 c7622y5 = (C7622y5) abstractC7351e6;
        int m6932a = m6932a(bArr, i2, c7530r4);
        c7622y5.m6735d0(c7530r4.f34660a);
        while (m6932a < i3) {
            int m6932a2 = m6932a(bArr, m6932a, c7530r4);
            if (i != c7530r4.f34660a) {
                break;
            }
            m6932a = m6932a(bArr, m6932a2, c7530r4);
            c7622y5.m6735d0(c7530r4.f34660a);
        }
        return m6932a;
    }

    /* renamed from: l */
    public static int m6921l(byte[] bArr, int i, AbstractC7351e6<?> abstractC7351e6, C7530r4 c7530r4) {
        C7622y5 c7622y5 = (C7622y5) abstractC7351e6;
        int m6932a = m6932a(bArr, i, c7530r4);
        int i2 = c7530r4.f34660a + m6932a;
        while (m6932a < i2) {
            m6932a = m6932a(bArr, m6932a, c7530r4);
            c7622y5.m6735d0(c7530r4.f34660a);
        }
        if (m6932a == i2) {
            return m6932a;
        }
        throw zzib.zza();
    }

    /* renamed from: m */
    public static int m6920m(AbstractC7436k7<?> abstractC7436k7, int i, byte[] bArr, int i2, int i3, AbstractC7351e6<?> abstractC7351e6, C7530r4 c7530r4) {
        int m6924i = m6924i(abstractC7436k7, bArr, i2, i3, c7530r4);
        abstractC7351e6.add(c7530r4.f34662c);
        while (m6924i < i3) {
            int m6932a = m6932a(bArr, m6924i, c7530r4);
            if (i != c7530r4.f34660a) {
                break;
            }
            m6924i = m6924i(abstractC7436k7, bArr, m6932a, i3, c7530r4);
            abstractC7351e6.add(c7530r4.f34662c);
        }
        return m6924i;
    }

    /* renamed from: n */
    public static int m6919n(int i, byte[] bArr, int i2, int i3, C7624y7 c7624y7, C7530r4 c7530r4) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m6930c = m6930c(bArr, i2, c7530r4);
                c7624y7.m6719h(i, Long.valueOf(c7530r4.f34661b));
                return m6930c;
            } else if (i5 == 1) {
                c7624y7.m6719h(i, Long.valueOf(m6928e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m6932a = m6932a(bArr, i2, c7530r4);
                int i6 = c7530r4.f34660a;
                if (i6 < 0) {
                    throw zzib.zzb();
                }
                if (i6 > bArr.length - m6932a) {
                    throw zzib.zza();
                }
                if (i6 == 0) {
                    c7624y7.m6719h(i, zzgr.f34851d);
                } else {
                    c7624y7.m6719h(i, zzgr.zzj(bArr, m6932a, i6));
                }
                return m6932a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzib.zzc();
                }
                c7624y7.m6719h(i, Integer.valueOf(m6929d(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                C7624y7 m6725b = C7624y7.m6725b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    i4 = m6932a(bArr, i2, c7530r4);
                    int i9 = c7530r4.f34660a;
                    if (i9 == i7) {
                        i8 = i9;
                        break;
                    }
                    i8 = i9;
                    i2 = m6919n(i9, bArr, i4, i3, m6725b, c7530r4);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzib.zze();
                }
                c7624y7.m6719h(i, m6725b);
                return i4;
            }
        }
        throw zzib.zzc();
    }
}
