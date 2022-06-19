package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aq3.class */
public final class aq3 {

    /* renamed from: a */
    private static final int[] f20085a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f20086b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f20087c = {24000, 22050, 16000};

    /* renamed from: d */
    private static final int[] f20088d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f20089e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f20090f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: g */
    public static final /* synthetic */ int f20091g = 0;

    /* renamed from: a */
    public static C7021u4 m16498a(C6694la c6694la, String str, String str2, zzn zznVar) {
        int i = f20086b[(c6694la.m13629v() & 192) >> 6];
        int m13629v = c6694la.m13629v();
        int i2 = f20088d[(m13629v & 56) >> 3];
        int i3 = i2;
        if ((m13629v & 4) != 0) {
            i3 = i2 + 1;
        }
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d(str);
        c6947s4.m11129n("audio/ac3");
        c6947s4.m11175B(i3);
        c6947s4.m11174C(i);
        c6947s4.m11126q(zznVar);
        c6947s4.m11138g(str2);
        return c6947s4.m11168I();
    }

    /* renamed from: b */
    public static C7021u4 m16497b(C6694la c6694la, String str, String str2, zzn zznVar) {
        c6694la.m13632s(2);
        int i = f20086b[(c6694la.m13629v() & 192) >> 6];
        int m13629v = c6694la.m13629v();
        int i2 = f20088d[(m13629v & 14) >> 1];
        int i3 = i2;
        if ((m13629v & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((c6694la.m13629v() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & c6694la.m13629v()) != 0) {
                i4 = i3 + 2;
            }
        }
        String str3 = (c6694la.m13639l() <= 0 || (c6694la.m13629v() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc";
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d(str);
        c6947s4.m11129n(str3);
        c6947s4.m11175B(i4);
        c6947s4.m11174C(i);
        c6947s4.m11126q(zznVar);
        c6947s4.m11138g(str2);
        return c6947s4.m11168I();
    }

    /* renamed from: c */
    public static zp3 m16496c(C6657ka c6657ka) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int m13952c = c6657ka.m13952c();
        c6657ka.m13949f(40);
        int m13947h = c6657ka.m13947h(5);
        c6657ka.m13951d(m13952c);
        int i11 = -1;
        if (m13947h > 10) {
            c6657ka.m13949f(16);
            int m13947h2 = c6657ka.m13947h(2);
            if (m13947h2 == 0) {
                i11 = 0;
            } else if (m13947h2 == 1) {
                i11 = 1;
            } else if (m13947h2 == 2) {
                i11 = 2;
            }
            c6657ka.m13949f(3);
            int m13947h3 = c6657ka.m13947h(11) + 1;
            int m13947h4 = c6657ka.m13947h(2);
            if (m13947h4 == 3) {
                i8 = f20087c[c6657ka.m13947h(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = c6657ka.m13947h(2);
                i6 = f20085a[i7];
                i8 = f20086b[m13947h4];
            }
            int m13947h5 = c6657ka.m13947h(3);
            boolean m13948g = c6657ka.m13948g();
            int i12 = f20088d[m13947h5];
            c6657ka.m13949f(10);
            if (c6657ka.m13948g()) {
                c6657ka.m13949f(8);
            }
            if (m13947h5 == 0) {
                c6657ka.m13949f(5);
                if (c6657ka.m13948g()) {
                    c6657ka.m13949f(8);
                }
                i9 = 0;
                m13947h5 = 0;
            } else {
                i9 = m13947h5;
            }
            if (i11 == 1) {
                if (c6657ka.m13948g()) {
                    c6657ka.m13949f(16);
                }
                i10 = 1;
            } else {
                i10 = i11;
            }
            int i13 = i10;
            int i14 = i7;
            if (c6657ka.m13948g()) {
                if (i9 > 2) {
                    c6657ka.m13949f(2);
                }
                if ((i9 & 1) != 0 && i9 > 2) {
                    c6657ka.m13949f(6);
                }
                if ((i9 & 4) != 0) {
                    c6657ka.m13949f(6);
                }
                if (m13948g && c6657ka.m13948g()) {
                    c6657ka.m13949f(5);
                }
                i13 = i10;
                i14 = i7;
                if (i10 == 0) {
                    if (c6657ka.m13948g()) {
                        c6657ka.m13949f(6);
                    }
                    if (i9 == 0 && c6657ka.m13948g()) {
                        c6657ka.m13949f(6);
                    }
                    if (c6657ka.m13948g()) {
                        c6657ka.m13949f(6);
                    }
                    int m13947h6 = c6657ka.m13947h(2);
                    if (m13947h6 == 1) {
                        c6657ka.m13949f(5);
                    } else if (m13947h6 == 2) {
                        c6657ka.m13949f(12);
                    } else if (m13947h6 == 3) {
                        int m13947h7 = c6657ka.m13947h(5);
                        if (c6657ka.m13948g()) {
                            c6657ka.m13949f(5);
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(4);
                            }
                            if (c6657ka.m13948g()) {
                                if (c6657ka.m13948g()) {
                                    c6657ka.m13949f(4);
                                }
                                if (c6657ka.m13948g()) {
                                    c6657ka.m13949f(4);
                                }
                            }
                        }
                        if (c6657ka.m13948g()) {
                            c6657ka.m13949f(5);
                            if (c6657ka.m13948g()) {
                                c6657ka.m13949f(7);
                                if (c6657ka.m13948g()) {
                                    c6657ka.m13949f(8);
                                }
                            }
                        }
                        c6657ka.m13949f((m13947h7 + 2) * 8);
                        c6657ka.m13945j();
                    }
                    if (i9 < 2) {
                        if (c6657ka.m13948g()) {
                            c6657ka.m13949f(14);
                        }
                        if (m13947h5 == 0 && c6657ka.m13948g()) {
                            c6657ka.m13949f(14);
                        }
                    }
                    if (c6657ka.m13948g()) {
                        if (i7 == 0) {
                            c6657ka.m13949f(5);
                            i13 = 0;
                            i14 = 0;
                        } else {
                            for (int i15 = 0; i15 < i6; i15++) {
                                if (c6657ka.m13948g()) {
                                    c6657ka.m13949f(5);
                                }
                            }
                        }
                    }
                    i13 = 0;
                    i14 = i7;
                }
            }
            if (c6657ka.m13948g()) {
                c6657ka.m13949f(5);
                int i16 = i9;
                if (i9 == 2) {
                    c6657ka.m13949f(4);
                    i16 = 2;
                }
                if (i16 >= 6) {
                    c6657ka.m13949f(2);
                }
                if (c6657ka.m13948g()) {
                    c6657ka.m13949f(8);
                }
                if (i16 == 0 && c6657ka.m13948g()) {
                    c6657ka.m13949f(8);
                }
                if (m13947h4 < 3) {
                    c6657ka.m13950e();
                }
            }
            if (i13 == 0 && i14 != 3) {
                c6657ka.m13950e();
            }
            if (i13 == 2 && (i14 == 3 || c6657ka.m13948g())) {
                c6657ka.m13949f(6);
            }
            String str2 = (c6657ka.m13948g() && c6657ka.m13947h(6) == 1 && c6657ka.m13947h(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i2 = i12 + (m13948g ? 1 : 0);
            str = str2;
            i3 = i11;
            i = i8;
            i4 = m13947h3 + m13947h3;
            i5 = i6 * 256;
        } else {
            c6657ka.m13949f(32);
            int m13947h8 = c6657ka.m13947h(2);
            str = m13947h8 == 3 ? null : "audio/ac3";
            i4 = m16494e(m13947h8, c6657ka.m13947h(6));
            c6657ka.m13949f(8);
            int m13947h9 = c6657ka.m13947h(3);
            if ((m13947h9 & 1) != 0 && m13947h9 != 1) {
                c6657ka.m13949f(2);
            }
            if ((m13947h9 & 4) != 0) {
                c6657ka.m13949f(2);
            }
            if (m13947h9 == 2) {
                c6657ka.m13949f(2);
            }
            int i17 = m13947h8 < 3 ? f20086b[m13947h8] : -1;
            boolean m13948g2 = c6657ka.m13948g();
            int i18 = f20088d[m13947h9];
            int i19 = i17;
            i2 = i18 + (m13948g2 ? 1 : 0);
            i5 = 1536;
            i = i19;
            i3 = -1;
        }
        return new zp3(str, i3, i2, i, i4, i5, null);
    }

    /* renamed from: d */
    public static int m16495d(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b = bArr[4];
            return m16494e((b & 192) >> 6, b & 63);
        }
        int i = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
        return i + i;
    }

    /* renamed from: e */
    private static int m16494e(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= 3 || i2 < 0 || i3 >= 19) {
            return -1;
        }
        int i4 = f20086b[i];
        if (i4 == 44100) {
            int i5 = f20090f[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = f20089e[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}
