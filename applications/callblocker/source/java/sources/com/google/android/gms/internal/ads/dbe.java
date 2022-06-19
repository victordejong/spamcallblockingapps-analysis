package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbe.class */
public final class dbe {
    /* renamed from: a */
    public static int m10247a(int i, byte[] bArr, int i2, int i3, dbh dbhVar) {
        int i4;
        int i5;
        if ((i >>> 3) == 0) {
            throw zzeco.m6547d();
        }
        switch (i & 7) {
            case 0:
                i4 = m10236b(bArr, i2, dbhVar);
                break;
            case 1:
                i4 = i2 + 8;
                break;
            case 2:
                i4 = m10239a(bArr, i2, dbhVar) + dbhVar.f13928a;
                break;
            case 3:
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    i5 = i7;
                    if (i2 < i3) {
                        int m10239a = m10239a(bArr, i2, dbhVar);
                        i7 = dbhVar.f13928a;
                        i4 = m10239a;
                        i5 = i7;
                        if (i7 != i6) {
                            i2 = m10247a(i7, bArr, m10239a, i3, dbhVar);
                        }
                    }
                }
                if (i4 > i3 || i5 != i6) {
                    throw zzeco.m6543h();
                }
                break;
            case 4:
            default:
                throw zzeco.m6547d();
            case 5:
                i4 = i2 + 4;
                break;
        }
        return i4;
    }

    /* renamed from: a */
    public static int m10246a(int i, byte[] bArr, int i2, int i3, dde<?> ddeVar, dbh dbhVar) {
        dcx dcxVar = (dcx) ddeVar;
        int m10239a = m10239a(bArr, i2, dbhVar);
        dcxVar.mo10039d(dbhVar.f13928a);
        while (m10239a < i3) {
            int m10239a2 = m10239a(bArr, m10239a, dbhVar);
            if (i != dbhVar.f13928a) {
                break;
            }
            m10239a = m10239a(bArr, m10239a2, dbhVar);
            dcxVar.mo10039d(dbhVar.f13928a);
        }
        return m10239a;
    }

    /* renamed from: a */
    public static int m10245a(int i, byte[] bArr, int i2, int i3, dfu dfuVar, dbh dbhVar) {
        int i4;
        int i5;
        int i6;
        if ((i >>> 3) == 0) {
            throw zzeco.m6547d();
        }
        switch (i & 7) {
            case 0:
                int m10236b = m10236b(bArr, i2, dbhVar);
                dfuVar.m9751a(i, Long.valueOf(dbhVar.f13929b));
                i6 = m10236b;
                break;
            case 1:
                dfuVar.m9751a(i, Long.valueOf(m10237b(bArr, i2)));
                i6 = i2 + 8;
                break;
            case 2:
                int m10239a = m10239a(bArr, i2, dbhVar);
                int i7 = dbhVar.f13928a;
                if (i7 >= 0) {
                    if (i7 <= bArr.length - m10239a) {
                        if (i7 == 0) {
                            dfuVar.m9751a(i, dbi.f13932a);
                        } else {
                            dfuVar.m9751a(i, dbi.m10218a(bArr, m10239a, i7));
                        }
                        i6 = m10239a + i7;
                        break;
                    } else {
                        throw zzeco.m6551a();
                    }
                } else {
                    throw zzeco.m6549b();
                }
            case 3:
                dfu m9746b = dfu.m9746b();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 < i3) {
                        i5 = m10239a(bArr, i2, dbhVar);
                        int i10 = dbhVar.f13928a;
                        if (i10 != i8) {
                            int m10245a = m10245a(i10, bArr, i5, i3, m9746b, dbhVar);
                            i9 = i10;
                            i2 = m10245a;
                        } else {
                            i4 = i10;
                        }
                    }
                }
                if (i5 <= i3 && i4 == i8) {
                    dfuVar.m9751a(i, m9746b);
                    i6 = i5;
                    break;
                } else {
                    throw zzeco.m6543h();
                }
                break;
            case 4:
            default:
                throw zzeco.m6547d();
            case 5:
                dfuVar.m9751a(i, Integer.valueOf(m10240a(bArr, i2)));
                i6 = i2 + 4;
                break;
        }
        return i6;
    }

    /* renamed from: a */
    public static int m10244a(int i, byte[] bArr, int i2, dbh dbhVar) {
        int i3;
        int i4;
        int i5 = i & 127;
        int i6 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            dbhVar.f13928a = i5 | (b << 7);
            i3 = i6;
        } else {
            int i7 = ((b & Byte.MAX_VALUE) << 7) | i5;
            i3 = i6 + 1;
            byte b2 = bArr[i6];
            if (b2 >= 0) {
                dbhVar.f13928a = (b2 << 14) | i7;
            } else {
                int i8 = ((b2 & Byte.MAX_VALUE) << 14) | i7;
                int i9 = i3 + 1;
                byte b3 = bArr[i3];
                if (b3 >= 0) {
                    dbhVar.f13928a = i8 | (b3 << 21);
                    i3 = i9;
                } else {
                    int i10 = ((b3 & Byte.MAX_VALUE) << 21) | i8;
                    i3 = i9 + 1;
                    byte b4 = bArr[i9];
                    if (b4 >= 0) {
                        dbhVar.f13928a = i10 | (b4 << 28);
                    } else {
                        while (true) {
                            i4 = i3 + 1;
                            if (bArr[i3] >= 0) {
                                break;
                            }
                            i3 = i4;
                        }
                        dbhVar.f13928a = ((b4 & Byte.MAX_VALUE) << 28) | i10;
                        i3 = i4;
                    }
                }
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m10243a(dfd<?> dfdVar, int i, byte[] bArr, int i2, int i3, dde<?> ddeVar, dbh dbhVar) {
        int m10241a = m10241a(dfdVar, bArr, i2, i3, dbhVar);
        ddeVar.add(dbhVar.f13930c);
        while (m10241a < i3) {
            int m10239a = m10239a(bArr, m10241a, dbhVar);
            if (i != dbhVar.f13928a) {
                break;
            }
            m10241a = m10241a(dfdVar, bArr, m10239a, i3, dbhVar);
            ddeVar.add(dbhVar.f13930c);
        }
        return m10241a;
    }

    /* renamed from: a */
    public static int m10242a(dfd dfdVar, byte[] bArr, int i, int i2, int i3, dbh dbhVar) {
        dek dekVar = (dek) dfdVar;
        Object mo9846a = dekVar.mo9846a();
        int m9954a = dekVar.m9954a((dek) mo9846a, bArr, i, i2, i3, dbhVar);
        dekVar.mo9838c((dek) mo9846a);
        dbhVar.f13930c = mo9846a;
        return m9954a;
    }

    /* renamed from: a */
    public static int m10241a(dfd dfdVar, byte[] bArr, int i, int i2, dbh dbhVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = m10244a(i4, bArr, i3, dbhVar);
            i4 = dbhVar.f13928a;
        }
        if (i4 < 0 || i4 > i2 - i3) {
            throw zzeco.m6551a();
        }
        Object mo9846a = dfdVar.mo9846a();
        dfdVar.mo9841a(mo9846a, bArr, i3, i3 + i4, dbhVar);
        dfdVar.mo9838c(mo9846a);
        dbhVar.f13930c = mo9846a;
        return i3 + i4;
    }

    /* renamed from: a */
    public static int m10240a(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    /* renamed from: a */
    public static int m10239a(byte[] bArr, int i, dbh dbhVar) {
        int m10244a;
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            dbhVar.f13928a = b;
            m10244a = i2;
        } else {
            m10244a = m10244a(b, bArr, i2, dbhVar);
        }
        return m10244a;
    }

    /* renamed from: a */
    public static int m10238a(byte[] bArr, int i, dde<?> ddeVar, dbh dbhVar) {
        dcx dcxVar = (dcx) ddeVar;
        int m10239a = m10239a(bArr, i, dbhVar);
        int i2 = dbhVar.f13928a + m10239a;
        while (m10239a < i2) {
            m10239a = m10239a(bArr, m10239a, dbhVar);
            dcxVar.mo10039d(dbhVar.f13928a);
        }
        if (m10239a != i2) {
            throw zzeco.m6551a();
        }
        return m10239a;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: b */
    public static int m10236b(byte[] bArr, int i, dbh dbhVar) {
        int i2;
        int i3 = 7;
        int i4 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            dbhVar.f13929b = j;
            i2 = i4;
        } else {
            byte b = bArr[i4];
            char c = (127 & j) | ((b & Byte.MAX_VALUE) << 7);
            i2 = i4 + 1;
            while (b < 0) {
                b = bArr[i2];
                i3 += 7;
                c |= (b & Byte.MAX_VALUE) << i3;
                i2++;
            }
            dbhVar.f13929b = c;
        }
        return i2;
    }

    /* renamed from: b */
    public static long m10237b(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    /* renamed from: c */
    public static double m10235c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m10237b(bArr, i));
    }

    /* renamed from: c */
    public static int m10234c(byte[] bArr, int i, dbh dbhVar) {
        int m10239a = m10239a(bArr, i, dbhVar);
        int i2 = dbhVar.f13928a;
        if (i2 < 0) {
            throw zzeco.m6549b();
        }
        if (i2 == 0) {
            dbhVar.f13930c = "";
        } else {
            dbhVar.f13930c = new String(bArr, m10239a, i2, dcz.f14093a);
            m10239a += i2;
        }
        return m10239a;
    }

    /* renamed from: d */
    public static float m10233d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m10240a(bArr, i));
    }

    /* renamed from: d */
    public static int m10232d(byte[] bArr, int i, dbh dbhVar) {
        int m10239a = m10239a(bArr, i, dbhVar);
        int i2 = dbhVar.f13928a;
        if (i2 < 0) {
            throw zzeco.m6549b();
        }
        if (i2 == 0) {
            dbhVar.f13930c = "";
        } else {
            dbhVar.f13930c = dgd.m9637b(bArr, m10239a, i2);
            m10239a += i2;
        }
        return m10239a;
    }

    /* renamed from: e */
    public static int m10231e(byte[] bArr, int i, dbh dbhVar) {
        int m10239a = m10239a(bArr, i, dbhVar);
        int i2 = dbhVar.f13928a;
        if (i2 < 0) {
            throw zzeco.m6549b();
        }
        if (i2 > bArr.length - m10239a) {
            throw zzeco.m6551a();
        }
        if (i2 == 0) {
            dbhVar.f13930c = dbi.f13932a;
        } else {
            dbhVar.f13930c = dbi.m10218a(bArr, m10239a, i2);
            m10239a += i2;
        }
        return m10239a;
    }
}
