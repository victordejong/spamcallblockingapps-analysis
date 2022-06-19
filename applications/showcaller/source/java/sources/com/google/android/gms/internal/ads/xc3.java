package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xc3.class */
public final class xc3 {
    /* renamed from: a */
    public static int m9277a(byte[] bArr, int i, wc3 wc3Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            wc3Var.f31511a = b;
            return i2;
        }
        return m9276b(b, bArr, i2, wc3Var);
    }

    /* renamed from: b */
    public static int m9276b(int i, byte[] bArr, int i2, wc3 wc3Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            wc3Var.f31511a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            wc3Var.f31511a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            wc3Var.f31511a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            wc3Var.f31511a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                wc3Var.f31511a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    public static int m9275c(byte[] bArr, int i, wc3 wc3Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            wc3Var.f31512b = j;
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
        wc3Var.f31512b = c;
        return i3;
    }

    /* renamed from: d */
    public static int m9274d(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e */
    public static long m9273e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: f */
    public static int m9272f(byte[] bArr, int i, wc3 wc3Var) {
        int m9277a = m9277a(bArr, i, wc3Var);
        int i2 = wc3Var.f31511a;
        if (i2 >= 0) {
            if (i2 == 0) {
                wc3Var.f31513c = "";
                return m9277a;
            }
            wc3Var.f31513c = new String(bArr, m9277a, i2, se3.f29462a);
            return m9277a + i2;
        }
        throw zzggm.zze();
    }

    /* renamed from: g */
    public static int m9271g(byte[] bArr, int i, wc3 wc3Var) {
        int m9277a = m9277a(bArr, i, wc3Var);
        int i2 = wc3Var.f31511a;
        if (i2 >= 0) {
            if (i2 == 0) {
                wc3Var.f31513c = "";
                return m9277a;
            }
            wc3Var.f31513c = fh3.m15189j(bArr, m9277a, i2);
            return m9277a + i2;
        }
        throw zzggm.zze();
    }

    /* renamed from: h */
    public static int m9270h(byte[] bArr, int i, wc3 wc3Var) {
        int m9277a = m9277a(bArr, i, wc3Var);
        int i2 = wc3Var.f31511a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m9277a) {
                throw zzggm.zzd();
            }
            if (i2 == 0) {
                wc3Var.f31513c = zzgex.f34110d;
                return m9277a;
            }
            wc3Var.f31513c = zzgex.zzs(bArr, m9277a, i2);
            return m9277a + i2;
        }
        throw zzggm.zze();
    }

    /* renamed from: i */
    public static int m9269i(cg3 cg3Var, byte[] bArr, int i, int i2, wc3 wc3Var) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m9276b(b, bArr, i3, wc3Var);
            i5 = wc3Var.f31511a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzggm.zzd();
        }
        Object zza = cg3Var.zza();
        int i6 = i5 + i4;
        cg3Var.mo11901h(zza, bArr, i4, i6, wc3Var);
        cg3Var.mo11905d(zza);
        wc3Var.f31513c = zza;
        return i6;
    }

    /* renamed from: j */
    public static int m9268j(cg3 cg3Var, byte[] bArr, int i, int i2, int i3, wc3 wc3Var) {
        pf3 pf3Var = (pf3) cg3Var;
        Object zza = pf3Var.zza();
        int m12289I = pf3Var.m12289I(zza, bArr, i, i2, i3, wc3Var);
        pf3Var.mo11905d(zza);
        wc3Var.f31513c = zza;
        return m12289I;
    }

    /* renamed from: k */
    public static int m9267k(int i, byte[] bArr, int i2, int i3, re3<?> re3Var, wc3 wc3Var) {
        je3 je3Var = (je3) re3Var;
        int m9277a = m9277a(bArr, i2, wc3Var);
        je3Var.mo12940d0(wc3Var.f31511a);
        while (m9277a < i3) {
            int m9277a2 = m9277a(bArr, m9277a, wc3Var);
            if (i != wc3Var.f31511a) {
                break;
            }
            m9277a = m9277a(bArr, m9277a2, wc3Var);
            je3Var.mo12940d0(wc3Var.f31511a);
        }
        return m9277a;
    }

    /* renamed from: l */
    public static int m9266l(byte[] bArr, int i, re3<?> re3Var, wc3 wc3Var) {
        je3 je3Var = (je3) re3Var;
        int m9277a = m9277a(bArr, i, wc3Var);
        int i2 = wc3Var.f31511a + m9277a;
        while (m9277a < i2) {
            m9277a = m9277a(bArr, m9277a, wc3Var);
            je3Var.mo12940d0(wc3Var.f31511a);
        }
        if (m9277a == i2) {
            return m9277a;
        }
        throw zzggm.zzd();
    }

    /* renamed from: m */
    public static int m9265m(cg3<?> cg3Var, int i, byte[] bArr, int i2, int i3, re3<?> re3Var, wc3 wc3Var) {
        int m9269i = m9269i(cg3Var, bArr, i2, i3, wc3Var);
        re3Var.add(wc3Var.f31513c);
        while (m9269i < i3) {
            int m9277a = m9277a(bArr, m9269i, wc3Var);
            if (i != wc3Var.f31511a) {
                break;
            }
            m9269i = m9269i(cg3Var, bArr, m9277a, i3, wc3Var);
            re3Var.add(wc3Var.f31513c);
        }
        return m9269i;
    }

    /* renamed from: n */
    public static int m9264n(int i, byte[] bArr, int i2, int i3, sg3 sg3Var, wc3 wc3Var) {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m9275c = m9275c(bArr, i2, wc3Var);
                sg3Var.m11030h(i, Long.valueOf(wc3Var.f31512b));
                return m9275c;
            } else if (i5 == 1) {
                sg3Var.m11030h(i, Long.valueOf(m9273e(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m9277a = m9277a(bArr, i2, wc3Var);
                int i6 = wc3Var.f31511a;
                if (i6 < 0) {
                    throw zzggm.zze();
                }
                if (i6 > bArr.length - m9277a) {
                    throw zzggm.zzd();
                }
                if (i6 == 0) {
                    sg3Var.m11030h(i, zzgex.f34110d);
                } else {
                    sg3Var.m11030h(i, zzgex.zzs(bArr, m9277a, i6));
                }
                return m9277a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzggm.zzg();
                }
                sg3Var.m11030h(i, Integer.valueOf(m9274d(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                sg3 m11036b = sg3.m11036b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m9277a2 = m9277a(bArr, i2, wc3Var);
                    i8 = wc3Var.f31511a;
                    if (i8 == i7) {
                        i4 = m9277a2;
                        break;
                    }
                    i2 = m9264n(i8, bArr, m9277a2, i3, m11036b, wc3Var);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzggm.zzk();
                }
                sg3Var.m11030h(i, m11036b);
                return i4;
            }
        }
        throw zzggm.zzg();
    }
}
