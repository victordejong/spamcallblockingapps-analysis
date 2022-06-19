package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.fb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fb.class */
public final class C13489fb {
    /* renamed from: a */
    public static int m12884a(int i, byte[] bArr, int i2, int i3, AbstractC13533gs<?> abstractC13533gs, C13488fa c13488fa) {
        C13527gm c13527gm = (C13527gm) abstractC13533gs;
        int m12877a = m12877a(bArr, i2, c13488fa);
        c13527gm.m12755d(c13488fa.f50704a);
        while (m12877a < i3) {
            int m12877a2 = m12877a(bArr, m12877a, c13488fa);
            if (i != c13488fa.f50704a) {
                break;
            }
            m12877a = m12877a(bArr, m12877a2, c13488fa);
            c13527gm.m12755d(c13488fa.f50704a);
        }
        return m12877a;
    }

    /* renamed from: a */
    public static int m12883a(int i, byte[] bArr, int i2, int i3, C13582in c13582in, C13488fa c13488fa) throws zzib {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int m12874b = m12874b(bArr, i2, c13488fa);
                c13582in.m12572a(i, Long.valueOf(c13488fa.f50705b));
                return m12874b;
            } else if (i5 == 1) {
                c13582in.m12572a(i, Long.valueOf(m12875b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int m12877a = m12877a(bArr, i2, c13488fa);
                int i6 = c13488fa.f50704a;
                if (i6 < 0) {
                    throw zzib.m12288b();
                }
                if (i6 > bArr.length - m12877a) {
                    throw zzib.m12289a();
                }
                if (i6 == 0) {
                    c13582in.m12572a(i, AbstractC13500fm.f50716b);
                } else {
                    c13582in.m12572a(i, AbstractC13500fm.m12859a(bArr, m12877a, i6));
                }
                return m12877a + i6;
            } else if (i5 != 3) {
                if (i5 != 5) {
                    throw zzib.m12287c();
                }
                c13582in.m12572a(i, Integer.valueOf(m12878a(bArr, i2)));
                return i2 + 4;
            } else {
                int i7 = (i & (-8)) | 4;
                C13582in m12568b = C13582in.m12568b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m12877a2 = m12877a(bArr, i2, c13488fa);
                    i8 = c13488fa.f50704a;
                    if (i8 == i7) {
                        i4 = m12877a2;
                        break;
                    }
                    i2 = m12883a(i8, bArr, m12877a2, i3, m12568b, c13488fa);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzib.m12285e();
                }
                c13582in.m12572a(i, m12568b);
                return i4;
            }
        }
        throw zzib.m12287c();
    }

    /* renamed from: a */
    public static int m12882a(int i, byte[] bArr, int i2, C13488fa c13488fa) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            c13488fa.f50704a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            c13488fa.f50704a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            c13488fa.f50704a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            c13488fa.f50704a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                c13488fa.f50704a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* renamed from: a */
    public static int m12881a(AbstractC13569ia<?> abstractC13569ia, int i, byte[] bArr, int i2, int i3, AbstractC13533gs<?> abstractC13533gs, C13488fa c13488fa) throws IOException {
        int m12879a = m12879a(abstractC13569ia, bArr, i2, i3, c13488fa);
        abstractC13533gs.add(c13488fa.f50706c);
        while (m12879a < i3) {
            int m12877a = m12877a(bArr, m12879a, c13488fa);
            if (i != c13488fa.f50704a) {
                break;
            }
            m12879a = m12879a(abstractC13569ia, bArr, m12877a, i3, c13488fa);
            abstractC13533gs.add(c13488fa.f50706c);
        }
        return m12879a;
    }

    /* renamed from: a */
    public static int m12880a(AbstractC13569ia abstractC13569ia, byte[] bArr, int i, int i2, int i3, C13488fa c13488fa) throws IOException {
        C13559hr c13559hr = (C13559hr) abstractC13569ia;
        Object mo12656a = c13559hr.mo12656a();
        int m12686a = c13559hr.m12686a((C13559hr) mo12656a, bArr, i, i2, i3, c13488fa);
        c13559hr.mo12649c((C13559hr) mo12656a);
        c13488fa.f50706c = mo12656a;
        return m12686a;
    }

    /* renamed from: a */
    public static int m12879a(AbstractC13569ia abstractC13569ia, byte[] bArr, int i, int i2, C13488fa c13488fa) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m12882a(b, bArr, i3, c13488fa);
            i5 = c13488fa.f50704a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzib.m12289a();
        }
        Object mo12656a = abstractC13569ia.mo12656a();
        int i6 = i5 + i4;
        abstractC13569ia.mo12652a(mo12656a, bArr, i4, i6, c13488fa);
        abstractC13569ia.mo12649c(mo12656a);
        c13488fa.f50706c = mo12656a;
        return i6;
    }

    /* renamed from: a */
    public static int m12878a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m12877a(byte[] bArr, int i, C13488fa c13488fa) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c13488fa.f50704a = b;
            return i2;
        }
        return m12882a(b, bArr, i2, c13488fa);
    }

    /* renamed from: a */
    public static int m12876a(byte[] bArr, int i, AbstractC13533gs<?> abstractC13533gs, C13488fa c13488fa) throws IOException {
        C13527gm c13527gm = (C13527gm) abstractC13533gs;
        int m12877a = m12877a(bArr, i, c13488fa);
        int i2 = c13488fa.f50704a + m12877a;
        while (m12877a < i2) {
            m12877a = m12877a(bArr, m12877a, c13488fa);
            c13527gm.m12755d(c13488fa.f50704a);
        }
        if (m12877a == i2) {
            return m12877a;
        }
        throw zzib.m12289a();
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: b */
    public static int m12874b(byte[] bArr, int i, C13488fa c13488fa) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c13488fa.f50705b = j;
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
        c13488fa.f50705b = c;
        return i3;
    }

    /* renamed from: b */
    public static long m12875b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static int m12873c(byte[] bArr, int i, C13488fa c13488fa) throws zzib {
        int m12877a = m12877a(bArr, i, c13488fa);
        int i2 = c13488fa.f50704a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c13488fa.f50706c = "";
                return m12877a;
            }
            c13488fa.f50706c = new String(bArr, m12877a, i2, C13534gt.f50765a);
            return m12877a + i2;
        }
        throw zzib.m12288b();
    }

    /* renamed from: d */
    public static int m12872d(byte[] bArr, int i, C13488fa c13488fa) throws zzib {
        int m12877a = m12877a(bArr, i, c13488fa);
        int i2 = c13488fa.f50704a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c13488fa.f50706c = "";
                return m12877a;
            }
            c13488fa.f50706c = C13598jc.m12502b(bArr, m12877a, i2);
            return m12877a + i2;
        }
        throw zzib.m12288b();
    }

    /* renamed from: e */
    public static int m12871e(byte[] bArr, int i, C13488fa c13488fa) throws zzib {
        int m12877a = m12877a(bArr, i, c13488fa);
        int i2 = c13488fa.f50704a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m12877a) {
                throw zzib.m12289a();
            }
            if (i2 == 0) {
                c13488fa.f50706c = AbstractC13500fm.f50716b;
                return m12877a;
            }
            c13488fa.f50706c = AbstractC13500fm.m12859a(bArr, m12877a, i2);
            return m12877a + i2;
        }
        throw zzib.m12288b();
    }
}
