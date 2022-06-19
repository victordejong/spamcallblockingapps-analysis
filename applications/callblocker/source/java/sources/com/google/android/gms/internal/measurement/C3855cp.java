package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.cp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cp.class */
public final class C3855cp {
    /* renamed from: a */
    public static int m5836a(int i, byte[] bArr, int i2, int i3, C3858cs c3858cs) {
        int i4;
        int i5;
        if ((i >>> 3) == 0) {
            throw zzft.m4851d();
        }
        switch (i & 7) {
            case 0:
                i4 = m5825b(bArr, i2, c3858cs);
                break;
            case 1:
                i4 = i2 + 8;
                break;
            case 2:
                i4 = m5828a(bArr, i2, c3858cs) + c3858cs.f17939a;
                break;
            case 3:
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    i5 = i7;
                    if (i2 < i3) {
                        int m5828a = m5828a(bArr, i2, c3858cs);
                        i7 = c3858cs.f17939a;
                        i4 = m5828a;
                        i5 = i7;
                        if (i7 != i6) {
                            i2 = m5836a(i7, bArr, m5828a, i3, c3858cs);
                        }
                    }
                }
                if (i4 > i3 || i5 != i6) {
                    throw zzft.m4848g();
                }
                break;
            case 4:
            default:
                throw zzft.m4851d();
            case 5:
                i4 = i2 + 4;
                break;
        }
        return i4;
    }

    /* renamed from: a */
    public static int m5835a(int i, byte[] bArr, int i2, int i3, AbstractC3914el<?> abstractC3914el, C3858cs c3858cs) {
        C3909eg c3909eg = (C3909eg) abstractC3914el;
        int m5828a = m5828a(bArr, i2, c3858cs);
        c3909eg.m5603d(c3858cs.f17939a);
        while (m5828a < i3) {
            int m5828a2 = m5828a(bArr, m5828a, c3858cs);
            if (i != c3858cs.f17939a) {
                break;
            }
            m5828a = m5828a(bArr, m5828a2, c3858cs);
            c3909eg.m5603d(c3858cs.f17939a);
        }
        return m5828a;
    }

    /* renamed from: a */
    public static int m5834a(int i, byte[] bArr, int i2, int i3, C3980gx c3980gx, C3858cs c3858cs) {
        int i4;
        int i5;
        int i6;
        if ((i >>> 3) == 0) {
            throw zzft.m4851d();
        }
        switch (i & 7) {
            case 0:
                int m5825b = m5825b(bArr, i2, c3858cs);
                c3980gx.m5314a(i, Long.valueOf(c3858cs.f17940b));
                i6 = m5825b;
                break;
            case 1:
                c3980gx.m5314a(i, Long.valueOf(m5826b(bArr, i2)));
                i6 = i2 + 8;
                break;
            case 2:
                int m5828a = m5828a(bArr, i2, c3858cs);
                int i7 = c3858cs.f17939a;
                if (i7 >= 0) {
                    if (i7 <= bArr.length - m5828a) {
                        if (i7 == 0) {
                            c3980gx.m5314a(i, AbstractC3859ct.f17943a);
                        } else {
                            c3980gx.m5314a(i, AbstractC3859ct.m5810a(bArr, m5828a, i7));
                        }
                        i6 = m5828a + i7;
                        break;
                    } else {
                        throw zzft.m4854a();
                    }
                } else {
                    throw zzft.m4853b();
                }
            case 3:
                C3980gx m5309b = C3980gx.m5309b();
                int i8 = (i & (-8)) | 4;
                int i9 = 0;
                while (true) {
                    i4 = i9;
                    i5 = i2;
                    if (i2 < i3) {
                        i5 = m5828a(bArr, i2, c3858cs);
                        int i10 = c3858cs.f17939a;
                        if (i10 != i8) {
                            int m5834a = m5834a(i10, bArr, i5, i3, m5309b, c3858cs);
                            i9 = i10;
                            i2 = m5834a;
                        } else {
                            i4 = i10;
                        }
                    }
                }
                if (i5 <= i3 && i4 == i8) {
                    c3980gx.m5314a(i, m5309b);
                    i6 = i5;
                    break;
                } else {
                    throw zzft.m4848g();
                }
                break;
            case 4:
            default:
                throw zzft.m4851d();
            case 5:
                c3980gx.m5314a(i, Integer.valueOf(m5829a(bArr, i2)));
                i6 = i2 + 4;
                break;
        }
        return i6;
    }

    /* renamed from: a */
    public static int m5833a(int i, byte[] bArr, int i2, C3858cs c3858cs) {
        int i3;
        int i4 = i & 127;
        int i5 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            c3858cs.f17939a = i4 | (b << 7);
        } else {
            int i6 = ((b & Byte.MAX_VALUE) << 7) | i4;
            int i7 = i5 + 1;
            byte b2 = bArr[i5];
            if (b2 >= 0) {
                c3858cs.f17939a = (b2 << 14) | i6;
                i5 = i7;
            } else {
                int i8 = ((b2 & Byte.MAX_VALUE) << 14) | i6;
                int i9 = i7 + 1;
                byte b3 = bArr[i7];
                if (b3 >= 0) {
                    c3858cs.f17939a = i8 | (b3 << 21);
                    i5 = i9;
                } else {
                    int i10 = ((b3 & Byte.MAX_VALUE) << 21) | i8;
                    i5 = i9 + 1;
                    byte b4 = bArr[i9];
                    if (b4 >= 0) {
                        c3858cs.f17939a = i10 | (b4 << 28);
                    } else {
                        while (true) {
                            i3 = i5 + 1;
                            if (bArr[i5] >= 0) {
                                break;
                            }
                            i5 = i3;
                        }
                        c3858cs.f17939a = ((b4 & Byte.MAX_VALUE) << 28) | i10;
                        i5 = i3;
                    }
                }
            }
        }
        return i5;
    }

    /* renamed from: a */
    public static int m5832a(AbstractC3960gd<?> abstractC3960gd, int i, byte[] bArr, int i2, int i3, AbstractC3914el<?> abstractC3914el, C3858cs c3858cs) {
        int m5830a = m5830a(abstractC3960gd, bArr, i2, i3, c3858cs);
        abstractC3914el.add(c3858cs.f17941c);
        while (m5830a < i3) {
            int m5828a = m5828a(bArr, m5830a, c3858cs);
            if (i != c3858cs.f17939a) {
                break;
            }
            m5830a = m5830a(abstractC3960gd, bArr, m5828a, i3, c3858cs);
            abstractC3914el.add(c3858cs.f17941c);
        }
        return m5830a;
    }

    /* renamed from: a */
    public static int m5831a(AbstractC3960gd abstractC3960gd, byte[] bArr, int i, int i2, int i3, C3858cs c3858cs) {
        C3947fr c3947fr = (C3947fr) abstractC3960gd;
        Object mo5472a = c3947fr.mo5472a();
        int m5512a = c3947fr.m5512a((C3947fr) mo5472a, bArr, i, i2, i3, c3858cs);
        c3947fr.mo5464c((C3947fr) mo5472a);
        c3858cs.f17941c = mo5472a;
        return m5512a;
    }

    /* renamed from: a */
    public static int m5830a(AbstractC3960gd abstractC3960gd, byte[] bArr, int i, int i2, C3858cs c3858cs) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = m5833a(i4, bArr, i3, c3858cs);
            i4 = c3858cs.f17939a;
        }
        if (i4 < 0 || i4 > i2 - i3) {
            throw zzft.m4854a();
        }
        Object mo5472a = abstractC3960gd.mo5472a();
        abstractC3960gd.mo5467a(mo5472a, bArr, i3, i3 + i4, c3858cs);
        abstractC3960gd.mo5464c(mo5472a);
        c3858cs.f17941c = mo5472a;
        return i3 + i4;
    }

    /* renamed from: a */
    public static int m5829a(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    /* renamed from: a */
    public static int m5828a(byte[] bArr, int i, C3858cs c3858cs) {
        int m5833a;
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c3858cs.f17939a = b;
            m5833a = i2;
        } else {
            m5833a = m5833a(b, bArr, i2, c3858cs);
        }
        return m5833a;
    }

    /* renamed from: a */
    public static int m5827a(byte[] bArr, int i, AbstractC3914el<?> abstractC3914el, C3858cs c3858cs) {
        C3909eg c3909eg = (C3909eg) abstractC3914el;
        int m5828a = m5828a(bArr, i, c3858cs);
        int i2 = c3858cs.f17939a + m5828a;
        while (m5828a < i2) {
            m5828a = m5828a(bArr, m5828a, c3858cs);
            c3909eg.m5603d(c3858cs.f17939a);
        }
        if (m5828a != i2) {
            throw zzft.m4854a();
        }
        return m5828a;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: b */
    public static int m5825b(byte[] bArr, int i, C3858cs c3858cs) {
        byte b;
        int i2;
        int i3 = 7;
        int i4 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c3858cs.f17940b = j;
            i2 = i4;
        } else {
            char c = (127 & j) | ((b & Byte.MAX_VALUE) << 7);
            i2 = i4 + 1;
            byte b2 = bArr[i4];
            while (b2 < 0) {
                b2 = bArr[i2];
                i3 += 7;
                c |= (b2 & Byte.MAX_VALUE) << i3;
                i2++;
            }
            c3858cs.f17940b = c;
        }
        return i2;
    }

    /* renamed from: b */
    public static long m5826b(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    /* renamed from: c */
    public static double m5824c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m5826b(bArr, i));
    }

    /* renamed from: c */
    public static int m5823c(byte[] bArr, int i, C3858cs c3858cs) {
        int m5828a = m5828a(bArr, i, c3858cs);
        int i2 = c3858cs.f17939a;
        if (i2 < 0) {
            throw zzft.m4853b();
        }
        if (i2 == 0) {
            c3858cs.f17941c = "";
        } else {
            c3858cs.f17941c = new String(bArr, m5828a, i2, C3908ef.f18107a);
            m5828a += i2;
        }
        return m5828a;
    }

    /* renamed from: d */
    public static float m5822d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m5829a(bArr, i));
    }

    /* renamed from: d */
    public static int m5821d(byte[] bArr, int i, C3858cs c3858cs) {
        int m5828a = m5828a(bArr, i, c3858cs);
        int i2 = c3858cs.f17939a;
        if (i2 < 0) {
            throw zzft.m4853b();
        }
        if (i2 == 0) {
            c3858cs.f17941c = "";
        } else {
            c3858cs.f17941c = C3991hd.m5236b(bArr, m5828a, i2);
            m5828a += i2;
        }
        return m5828a;
    }

    /* renamed from: e */
    public static int m5820e(byte[] bArr, int i, C3858cs c3858cs) {
        int m5828a = m5828a(bArr, i, c3858cs);
        int i2 = c3858cs.f17939a;
        if (i2 < 0) {
            throw zzft.m4853b();
        }
        if (i2 > bArr.length - m5828a) {
            throw zzft.m4854a();
        }
        if (i2 == 0) {
            c3858cs.f17941c = AbstractC3859ct.f17943a;
        } else {
            c3858cs.f17941c = AbstractC3859ct.m5810a(bArr, m5828a, i2);
            m5828a += i2;
        }
        return m5828a;
    }
}
