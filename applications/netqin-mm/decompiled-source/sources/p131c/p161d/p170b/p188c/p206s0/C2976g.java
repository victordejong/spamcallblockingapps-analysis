package p131c.p161d.p170b.p188c.p206s0;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.s0.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/g.class */
public final class C2976g {

    /* renamed from: a */
    public static final int[] f10711a = {1, 2, 3, 6};

    /* renamed from: b */
    public static final int[] f10712b = {48000, 44100, 32000};

    /* renamed from: c */
    public static final int[] f10713c = {24000, 22050, 16000};

    /* renamed from: d */
    public static final int[] f10714d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    public static final int[] f10715e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, 576, 640};

    /* renamed from: f */
    public static final int[] f10716f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: c.d.b.c.s0.g$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/g$b.class */
    public static final class C2978b {

        /* renamed from: a */
        public final String f10717a;

        /* renamed from: b */
        public final int f10718b;

        /* renamed from: c */
        public final int f10719c;

        /* renamed from: d */
        public final int f10720d;

        /* renamed from: e */
        public final int f10721e;

        public C2978b(String str, int i, int i2, int i3, int i4, int i5) {
            this.f10717a = str;
            this.f10719c = i2;
            this.f10718b = i3;
            this.f10720d = i4;
            this.f10721e = i5;
        }
    }

    /* renamed from: a */
    public static int m28316a() {
        return 1536;
    }

    /* renamed from: a */
    public static int m28315a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = f10712b;
        if (i >= iArr.length || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f10716f;
        if (i3 >= iArr2.length) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return (iArr2[i3] + (i2 % 2)) * 2;
        }
        int i5 = f10715e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    /* renamed from: a */
    public static int m28312a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        for (int i = position; i <= limit - 10; i++) {
            if ((byteBuffer.getInt(i + 4) & (-16777217)) == -1167101192) {
                return i - position;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static int m28311a(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    /* renamed from: a */
    public static int m28310a(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (!(((bArr[5] & 255) >> 3) == 16)) {
            return m28315a((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
    }

    /* renamed from: a */
    public static C2978b m28314a(C2903u uVar) {
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int i6;
        int d = uVar.m28555d();
        uVar.m28556c(40);
        boolean z = uVar.m28565a(5) == 16;
        uVar.m28558b(d);
        int i7 = -1;
        if (z) {
            uVar.m28556c(16);
            int a = uVar.m28565a(2);
            if (a == 0) {
                i7 = 0;
            } else if (a == 1) {
                i7 = 1;
            } else if (a == 2) {
                i7 = 2;
            }
            uVar.m28556c(3);
            int a2 = uVar.m28565a(11);
            int a3 = uVar.m28565a(2);
            if (a3 == 3) {
                i4 = f10713c[uVar.m28565a(2)];
                i6 = 3;
                i5 = 6;
            } else {
                i6 = uVar.m28565a(2);
                i5 = f10711a[i6];
                i4 = f10712b[a3];
            }
            int a4 = uVar.m28565a(3);
            boolean e = uVar.m28554e();
            int i8 = f10714d[a4];
            uVar.m28556c(10);
            if (uVar.m28554e()) {
                uVar.m28556c(8);
            }
            if (a4 == 0) {
                uVar.m28556c(5);
                if (uVar.m28554e()) {
                    uVar.m28556c(8);
                }
            }
            if (i7 == 1 && uVar.m28554e()) {
                uVar.m28556c(16);
            }
            if (uVar.m28554e()) {
                if (a4 > 2) {
                    uVar.m28556c(2);
                }
                if ((a4 & 1) != 0 && a4 > 2) {
                    uVar.m28556c(6);
                }
                if ((a4 & 4) != 0) {
                    uVar.m28556c(6);
                }
                if (e && uVar.m28554e()) {
                    uVar.m28556c(5);
                }
                if (i7 == 0) {
                    if (uVar.m28554e()) {
                        uVar.m28556c(6);
                    }
                    if (a4 == 0 && uVar.m28554e()) {
                        uVar.m28556c(6);
                    }
                    if (uVar.m28554e()) {
                        uVar.m28556c(6);
                    }
                    int a5 = uVar.m28565a(2);
                    if (a5 == 1) {
                        uVar.m28556c(5);
                    } else if (a5 == 2) {
                        uVar.m28556c(12);
                    } else if (a5 == 3) {
                        int a6 = uVar.m28565a(5);
                        if (uVar.m28554e()) {
                            uVar.m28556c(5);
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                uVar.m28556c(4);
                            }
                            if (uVar.m28554e()) {
                                if (uVar.m28554e()) {
                                    uVar.m28556c(4);
                                }
                                if (uVar.m28554e()) {
                                    uVar.m28556c(4);
                                }
                            }
                        }
                        if (uVar.m28554e()) {
                            uVar.m28556c(5);
                            if (uVar.m28554e()) {
                                uVar.m28556c(7);
                                if (uVar.m28554e()) {
                                    uVar.m28556c(8);
                                }
                            }
                        }
                        uVar.m28556c((a6 + 2) * 8);
                        uVar.m28557c();
                    }
                    if (a4 < 2) {
                        if (uVar.m28554e()) {
                            uVar.m28556c(14);
                        }
                        if (a4 == 0 && uVar.m28554e()) {
                            uVar.m28556c(14);
                        }
                    }
                    if (uVar.m28554e()) {
                        if (i6 == 0) {
                            uVar.m28556c(5);
                        } else {
                            for (int i9 = 0; i9 < i5; i9++) {
                                if (uVar.m28554e()) {
                                    uVar.m28556c(5);
                                }
                            }
                        }
                    }
                }
            }
            if (uVar.m28554e()) {
                uVar.m28556c(5);
                if (a4 == 2) {
                    uVar.m28556c(4);
                }
                if (a4 >= 6) {
                    uVar.m28556c(2);
                }
                if (uVar.m28554e()) {
                    uVar.m28556c(8);
                }
                if (a4 == 0 && uVar.m28554e()) {
                    uVar.m28556c(8);
                }
                if (a3 < 3) {
                    uVar.m28553f();
                }
            }
            if (i7 == 0 && i6 != 3) {
                uVar.m28553f();
            }
            if (i7 == 2 && (i6 == 3 || uVar.m28554e())) {
                uVar.m28556c(6);
            }
            str = (uVar.m28554e() && uVar.m28565a(6) == 1 && uVar.m28565a(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = (a2 + 1) * 2;
            i2 = i5 * 256;
            i3 = i8 + (e ? 1 : 0);
        } else {
            uVar.m28556c(32);
            int a7 = uVar.m28565a(2);
            str = a7 == 3 ? null : "audio/ac3";
            i = m28315a(a7, uVar.m28565a(6));
            uVar.m28556c(8);
            int a8 = uVar.m28565a(3);
            if (!((a8 & 1) == 0 || a8 == 1)) {
                uVar.m28556c(2);
            }
            if ((a8 & 4) != 0) {
                uVar.m28556c(2);
            }
            if (a8 == 2) {
                uVar.m28556c(2);
            }
            int[] iArr = f10712b;
            i4 = a7 < iArr.length ? iArr[a7] : -1;
            i3 = f10714d[a8] + (uVar.m28554e() ? 1 : 0);
            i7 = -1;
            i2 = 1536;
        }
        return new C2978b(str, i7, i3, i4, i, i2);
    }

    /* renamed from: a */
    public static Format m28313a(C2904v vVar, String str, String str2, DrmInitData drmInitData) {
        int i = f10712b[(vVar.m28524r() & 192) >> 6];
        int r = vVar.m28524r();
        int i2 = f10714d[(r & 56) >> 3];
        int i3 = i2;
        if ((r & 4) != 0) {
            i3 = i2 + 1;
        }
        return Format.m18698a(str, "audio/ac3", null, -1, -1, i3, i, null, drmInitData, 0, str2);
    }

    /* renamed from: b */
    public static int m28308b(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f10711a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    /* renamed from: b */
    public static int m28307b(byte[] bArr) {
        boolean z = false;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        if ((bArr[7] & 255) == 187) {
            z = true;
        }
        return 40 << ((bArr[z ? '\t' : '\b'] >> 4) & 7);
    }

    /* renamed from: b */
    public static Format m28309b(C2904v vVar, String str, String str2, DrmInitData drmInitData) {
        vVar.m28536f(2);
        int i = f10712b[(vVar.m28524r() & 192) >> 6];
        int r = vVar.m28524r();
        int i2 = f10714d[(r & 14) >> 1];
        int i3 = i2;
        if ((r & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((vVar.m28524r() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & vVar.m28524r()) != 0) {
                i4 = i3 + 2;
            }
        }
        return Format.m18698a(str, (vVar.m28552a() <= 0 || (vVar.m28524r() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc", null, -1, -1, i4, i, null, drmInitData, 0, str2);
    }
}
