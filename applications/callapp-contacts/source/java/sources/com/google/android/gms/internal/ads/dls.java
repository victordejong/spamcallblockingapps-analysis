package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dls.class */
public final class dls {
    /* renamed from: a */
    public static int m16500a(int i, byte[] bArr, int i2, int i3, dlr dlrVar) throws zzenn {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m16489b(bArr, i2, dlrVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m16492a(bArr, i2, dlrVar) + dlrVar.f47189a;
            }
            if (i5 != 3) {
                if (i5 != 5) {
                    throw zzenn.m13632d();
                }
                return i2 + 4;
            }
            int i6 = (i & (-8)) | 4;
            int i7 = 0;
            while (true) {
                i4 = i2;
                if (i2 >= i3) {
                    break;
                }
                int m16492a = m16492a(bArr, i2, dlrVar);
                int i8 = dlrVar.f47189a;
                i7 = i8;
                i4 = m16492a;
                if (i8 == i6) {
                    break;
                }
                i7 = i8;
                i2 = m16500a(i8, bArr, m16492a, i3, dlrVar);
            }
            if (i4 <= i3 && i7 == i6) {
                return i4;
            }
            throw zzenn.m13628h();
        }
        throw zzenn.m13632d();
    }

    /* renamed from: a */
    public static int m16499a(int i, byte[] bArr, int i2, int i3, dnr<?> dnrVar, dlr dlrVar) {
        dnk dnkVar = (dnk) dnrVar;
        int m16492a = m16492a(bArr, i2, dlrVar);
        dnkVar.mo16304d(dlrVar.f47189a);
        while (m16492a < i3) {
            int m16492a2 = m16492a(bArr, m16492a, dlrVar);
            if (i != dlrVar.f47189a) {
                break;
            }
            m16492a = m16492a(bArr, m16492a2, dlrVar);
            dnkVar.mo16304d(dlrVar.f47189a);
        }
        return m16492a;
    }

    /* renamed from: a */
    public static int m16498a(int i, byte[] bArr, int i2, int i3, dqj dqjVar, dlr dlrVar) throws zzenn {
        int i4;
        int i5;
        if ((i >>> 3) != 0) {
            int i6 = i & 7;
            if (i6 == 0) {
                int m16489b = m16489b(bArr, i2, dlrVar);
                dqjVar.m16008a(i, Long.valueOf(dlrVar.f47190b));
                return m16489b;
            } else if (i6 == 1) {
                dqjVar.m16008a(i, Long.valueOf(m16490b(bArr, i2)));
                return i2 + 8;
            } else if (i6 == 2) {
                int m16492a = m16492a(bArr, i2, dlrVar);
                int i7 = dlrVar.f47189a;
                if (i7 < 0) {
                    throw zzenn.m13634b();
                }
                if (i7 > bArr.length - m16492a) {
                    throw zzenn.m13635a();
                }
                if (i7 == 0) {
                    dqjVar.m16008a(i, dlw.f47199a);
                } else {
                    dqjVar.m16008a(i, dlw.m16474a(bArr, m16492a, i7));
                }
                return m16492a + i7;
            } else if (i6 != 3) {
                if (i6 != 5) {
                    throw zzenn.m13632d();
                }
                dqjVar.m16008a(i, Integer.valueOf(m16493a(bArr, i2)));
                return i2 + 4;
            } else {
                dqj m16003b = dqj.m16003b();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int m16492a2 = m16492a(bArr, i2, dlrVar);
                    i9 = dlrVar.f47189a;
                    if (i9 == i8) {
                        i5 = m16492a2;
                        i4 = i9;
                        break;
                    }
                    i2 = m16498a(i9, bArr, m16492a2, i3, m16003b, dlrVar);
                }
                if (i5 > i3 || i4 != i8) {
                    throw zzenn.m13628h();
                }
                dqjVar.m16008a(i, m16003b);
                return i5;
            }
        }
        throw zzenn.m13632d();
    }

    /* renamed from: a */
    public static int m16497a(int i, byte[] bArr, int i2, dlr dlrVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            dlrVar.f47189a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            dlrVar.f47189a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            dlrVar.f47189a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            dlrVar.f47189a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                dlrVar.f47189a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* renamed from: a */
    public static int m16496a(dpp<?> dppVar, int i, byte[] bArr, int i2, int i3, dnr<?> dnrVar, dlr dlrVar) throws IOException {
        int m16494a = m16494a(dppVar, bArr, i2, i3, dlrVar);
        dnrVar.add(dlrVar.f47191c);
        while (m16494a < i3) {
            int m16492a = m16492a(bArr, m16494a, dlrVar);
            if (i != dlrVar.f47189a) {
                break;
            }
            m16494a = m16494a(dppVar, bArr, m16492a, i3, dlrVar);
            dnrVar.add(dlrVar.f47191c);
        }
        return m16494a;
    }

    /* renamed from: a */
    public static int m16495a(dpp dppVar, byte[] bArr, int i, int i2, int i3, dlr dlrVar) throws IOException {
        dox doxVar = (dox) dppVar;
        Object mo16124a = doxVar.mo16124a();
        int m16227a = doxVar.m16227a((dox) mo16124a, bArr, i, i2, i3, dlrVar);
        doxVar.mo16116c((dox) mo16124a);
        dlrVar.f47191c = mo16124a;
        return m16227a;
    }

    /* renamed from: a */
    public static int m16494a(dpp dppVar, byte[] bArr, int i, int i2, dlr dlrVar) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m16497a(b, bArr, i3, dlrVar);
            i5 = dlrVar.f47189a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzenn.m13635a();
        }
        Object mo16124a = dppVar.mo16124a();
        int i6 = i5 + i4;
        dppVar.mo16119a(mo16124a, bArr, i4, i6, dlrVar);
        dppVar.mo16116c(mo16124a);
        dlrVar.f47191c = mo16124a;
        return i6;
    }

    /* renamed from: a */
    public static int m16493a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m16492a(byte[] bArr, int i, dlr dlrVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            dlrVar.f47189a = b;
            return i2;
        }
        return m16497a(b, bArr, i2, dlrVar);
    }

    /* renamed from: a */
    public static int m16491a(byte[] bArr, int i, dnr<?> dnrVar, dlr dlrVar) throws IOException {
        dnk dnkVar = (dnk) dnrVar;
        int m16492a = m16492a(bArr, i, dlrVar);
        int i2 = dlrVar.f47189a + m16492a;
        while (m16492a < i2) {
            m16492a = m16492a(bArr, m16492a, dlrVar);
            dnkVar.mo16304d(dlrVar.f47189a);
        }
        if (m16492a == i2) {
            return m16492a;
        }
        throw zzenn.m13635a();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: b */
    public static int m16489b(byte[] bArr, int i, dlr dlrVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            dlrVar.f47190b = j;
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
        dlrVar.f47190b = c;
        return i3;
    }

    /* renamed from: b */
    public static long m16490b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static double m16488c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m16490b(bArr, i));
    }

    /* renamed from: c */
    public static int m16487c(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int m16492a = m16492a(bArr, i, dlrVar);
        int i2 = dlrVar.f47189a;
        if (i2 >= 0) {
            if (i2 == 0) {
                dlrVar.f47191c = "";
                return m16492a;
            }
            dlrVar.f47191c = new String(bArr, m16492a, i2, dnj.f47286a);
            return m16492a + i2;
        }
        throw zzenn.m13634b();
    }

    /* renamed from: d */
    public static float m16486d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m16493a(bArr, i));
    }

    /* renamed from: d */
    public static int m16485d(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int m16492a = m16492a(bArr, i, dlrVar);
        int i2 = dlrVar.f47189a;
        if (i2 >= 0) {
            if (i2 == 0) {
                dlrVar.f47191c = "";
                return m16492a;
            }
            dlrVar.f47191c = dqp.m15936b(bArr, m16492a, i2);
            return m16492a + i2;
        }
        throw zzenn.m13634b();
    }

    /* renamed from: e */
    public static int m16484e(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int m16492a = m16492a(bArr, i, dlrVar);
        int i2 = dlrVar.f47189a;
        if (i2 >= 0) {
            if (i2 > bArr.length - m16492a) {
                throw zzenn.m13635a();
            }
            if (i2 == 0) {
                dlrVar.f47191c = dlw.f47199a;
                return m16492a;
            }
            dlrVar.f47191c = dlw.m16474a(bArr, m16492a, i2);
            return m16492a + i2;
        }
        throw zzenn.m13634b();
    }
}
