package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.audio.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/g.class */
public final class C4819g {

    /* renamed from: a */
    private static final int[] f14598a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f14599b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f14600c = {24000, 22050, 16000};

    /* renamed from: d */
    private static final int[] f14601d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f14602e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f14603f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: com.google.android.exoplayer2.audio.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/g$b.class */
    public static final class C4821b {

        /* renamed from: a */
        public final String f14604a;

        /* renamed from: b */
        public final int f14605b;

        /* renamed from: c */
        public final int f14606c;

        /* renamed from: d */
        public final int f14607d;

        /* renamed from: e */
        public final int f14608e;

        /* renamed from: f */
        public final int f14609f;

        private C4821b(String str, int i, int i2, int i3, int i4, int i5) {
            this.f14604a = str;
            this.f14605b = i;
            this.f14607d = i2;
            this.f14606c = i3;
            this.f14608e = i4;
            this.f14609f = i5;
        }
    }

    /* renamed from: a */
    public static int m21596a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((byteBuffer.getInt(i + 4) & (-16777217)) == -1167101192) {
                return i - position;
            }
        }
        return -1;
    }

    /* renamed from: b */
    private static int m21595b(int i, int i2) {
        int i3 = i2 / 2;
        if (i >= 0) {
            int[] iArr = f14599b;
            if (i >= iArr.length || i2 < 0) {
                return -1;
            }
            int[] iArr2 = f14603f;
            if (i3 >= iArr2.length) {
                return -1;
            }
            int i4 = iArr[i];
            if (i4 == 44100) {
                return (iArr2[i3] + (i2 % 2)) * 2;
            }
            int i5 = f14602e[i3];
            return i4 == 32000 ? i5 * 6 : i5 * 4;
        }
        return -1;
    }

    /* renamed from: c */
    public static Format m21594c(C5536v c5536v, String str, String str2, DrmInitData drmInitData) {
        int i = f14599b[(c5536v.m18653z() & 192) >> 6];
        int m18653z = c5536v.m18653z();
        int i2 = f14601d[(m18653z & 56) >> 3];
        int i3 = i2;
        if ((m18653z & 4) != 0) {
            i3 = i2 + 1;
        }
        return Format.m21740o(str, "audio/ac3", null, -1, -1, i3, i, null, drmInitData, 0, str2);
    }

    /* renamed from: d */
    public static int m21593d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f14598a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) == 3 ? 3 : (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] * 256;
        }
        return 1536;
    }

    /* renamed from: e */
    public static C4821b m21592e(C5535u c5535u) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str;
        int i6;
        int i7;
        int m18706e = c5535u.m18706e();
        c5535u.m18694q(40);
        Object[] objArr = c5535u.m18703h(5) > 10 ? 1 : null;
        c5535u.m18696o(m18706e);
        if (objArr != null) {
            c5535u.m18694q(16);
            int m18703h = c5535u.m18703h(2);
            int i8 = m18703h != 0 ? m18703h != 1 ? m18703h != 2 ? -1 : 2 : 1 : 0;
            c5535u.m18694q(3);
            int m18703h2 = c5535u.m18703h(11);
            int m18703h3 = c5535u.m18703h(2);
            if (m18703h3 == 3) {
                i5 = f14600c[c5535u.m18703h(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = c5535u.m18703h(2);
                i6 = f14598a[i7];
                i5 = f14599b[m18703h3];
            }
            int m18703h4 = c5535u.m18703h(3);
            boolean m18704g = c5535u.m18704g();
            int i9 = f14601d[m18703h4];
            c5535u.m18694q(10);
            if (c5535u.m18704g()) {
                c5535u.m18694q(8);
            }
            if (m18703h4 == 0) {
                c5535u.m18694q(5);
                if (c5535u.m18704g()) {
                    c5535u.m18694q(8);
                }
            }
            if (i8 == 1 && c5535u.m18704g()) {
                c5535u.m18694q(16);
            }
            if (c5535u.m18704g()) {
                if (m18703h4 > 2) {
                    c5535u.m18694q(2);
                }
                if ((m18703h4 & 1) != 0 && m18703h4 > 2) {
                    c5535u.m18694q(6);
                }
                if ((m18703h4 & 4) != 0) {
                    c5535u.m18694q(6);
                }
                if (m18704g && c5535u.m18704g()) {
                    c5535u.m18694q(5);
                }
                if (i8 == 0) {
                    if (c5535u.m18704g()) {
                        c5535u.m18694q(6);
                    }
                    if (m18703h4 == 0 && c5535u.m18704g()) {
                        c5535u.m18694q(6);
                    }
                    if (c5535u.m18704g()) {
                        c5535u.m18694q(6);
                    }
                    int m18703h5 = c5535u.m18703h(2);
                    if (m18703h5 == 1) {
                        c5535u.m18694q(5);
                    } else if (m18703h5 == 2) {
                        c5535u.m18694q(12);
                    } else if (m18703h5 == 3) {
                        int m18703h6 = c5535u.m18703h(5);
                        if (c5535u.m18704g()) {
                            c5535u.m18694q(5);
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(4);
                            }
                            if (c5535u.m18704g()) {
                                if (c5535u.m18704g()) {
                                    c5535u.m18694q(4);
                                }
                                if (c5535u.m18704g()) {
                                    c5535u.m18694q(4);
                                }
                            }
                        }
                        if (c5535u.m18704g()) {
                            c5535u.m18694q(5);
                            if (c5535u.m18704g()) {
                                c5535u.m18694q(7);
                                if (c5535u.m18704g()) {
                                    c5535u.m18694q(8);
                                }
                            }
                        }
                        c5535u.m18694q((m18703h6 + 2) * 8);
                        c5535u.m18708c();
                    }
                    if (m18703h4 < 2) {
                        if (c5535u.m18704g()) {
                            c5535u.m18694q(14);
                        }
                        if (m18703h4 == 0 && c5535u.m18704g()) {
                            c5535u.m18694q(14);
                        }
                    }
                    if (c5535u.m18704g()) {
                        if (i7 == 0) {
                            c5535u.m18694q(5);
                        } else {
                            for (int i10 = 0; i10 < i6; i10++) {
                                if (c5535u.m18704g()) {
                                    c5535u.m18694q(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c5535u.m18704g()) {
                c5535u.m18694q(5);
                if (m18703h4 == 2) {
                    c5535u.m18694q(4);
                }
                if (m18703h4 >= 6) {
                    c5535u.m18694q(2);
                }
                if (c5535u.m18704g()) {
                    c5535u.m18694q(8);
                }
                if (m18703h4 == 0 && c5535u.m18704g()) {
                    c5535u.m18694q(8);
                }
                if (m18703h3 < 3) {
                    c5535u.m18695p();
                }
            }
            if (i8 == 0 && i7 != 3) {
                c5535u.m18695p();
            }
            if (i8 == 2 && (i7 == 3 || c5535u.m18704g())) {
                c5535u.m18694q(6);
            }
            str = (c5535u.m18704g() && c5535u.m18703h(6) == 1 && c5535u.m18703h(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            int i11 = i6 * 256;
            i = (m18703h2 + 1) * 2;
            i2 = i9 + (m18704g ? 1 : 0);
            i3 = i8;
            i4 = i11;
        } else {
            c5535u.m18694q(32);
            int m18703h7 = c5535u.m18703h(2);
            String str2 = m18703h7 == 3 ? null : "audio/ac3";
            int m21595b = m21595b(m18703h7, c5535u.m18703h(6));
            c5535u.m18694q(8);
            int m18703h8 = c5535u.m18703h(3);
            if ((m18703h8 & 1) != 0 && m18703h8 != 1) {
                c5535u.m18694q(2);
            }
            if ((m18703h8 & 4) != 0) {
                c5535u.m18694q(2);
            }
            if (m18703h8 == 2) {
                c5535u.m18694q(2);
            }
            int[] iArr = f14599b;
            int i12 = m18703h7 < iArr.length ? iArr[m18703h7] : -1;
            boolean m18704g2 = c5535u.m18704g();
            int i13 = f14601d[m18703h8];
            int i14 = i12;
            i3 = -1;
            i4 = 1536;
            i = m21595b;
            i5 = i14;
            i2 = i13 + (m18704g2 ? 1 : 0);
            str = str2;
        }
        return new C4821b(str, i3, i2, i5, i, i4);
    }

    /* renamed from: f */
    public static int m21591f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 248) >> 3) > 10)) {
            return m21595b((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    /* renamed from: g */
    public static Format m21590g(C5536v c5536v, String str, String str2, DrmInitData drmInitData) {
        c5536v.m18679N(2);
        int i = f14599b[(c5536v.m18653z() & 192) >> 6];
        int m18653z = c5536v.m18653z();
        int i2 = f14601d[(m18653z & 14) >> 1];
        int i3 = i2;
        if ((m18653z & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((c5536v.m18653z() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & c5536v.m18653z()) != 0) {
                i4 = i3 + 2;
            }
        }
        return Format.m21740o(str, (c5536v.m18678a() <= 0 || (c5536v.m18653z() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", null, -1, -1, i4, i, null, drmInitData, 0, str2);
    }

    /* renamed from: h */
    public static int m21589h(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public static int m21588i(byte[] bArr) {
        Object[] objArr = null;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            if ((bArr[7] & 255) == 187) {
                objArr = 1;
            }
            return 40 << ((bArr[(objArr != null ? 9 : 8) == 1 ? 1 : 0] >> 4) & 7);
        }
        return 0;
    }
}
