package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* renamed from: com.google.android.gms.internal.ads.fe */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fe.class */
public final class C6475fe implements AbstractC6771nd {

    /* renamed from: a */
    public static final AbstractC6845pd f22802a = new C6326be();

    /* renamed from: b */
    private static final byte[] f22803b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c */
    private static final byte[] f22804c = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: d */
    private static final UUID f22805d = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    private boolean f22806A;

    /* renamed from: E */
    private C6479fi f22810E;

    /* renamed from: F */
    private C6479fi f22811F;

    /* renamed from: G */
    private boolean f22812G;

    /* renamed from: H */
    private int f22813H;

    /* renamed from: I */
    private long f22814I;

    /* renamed from: J */
    private long f22815J;

    /* renamed from: K */
    private int f22816K;

    /* renamed from: L */
    private int f22817L;

    /* renamed from: M */
    private int[] f22818M;

    /* renamed from: N */
    private int f22819N;

    /* renamed from: O */
    private int f22820O;

    /* renamed from: P */
    private int f22821P;

    /* renamed from: Q */
    private int f22822Q;

    /* renamed from: R */
    private boolean f22823R;

    /* renamed from: S */
    private boolean f22824S;

    /* renamed from: T */
    private boolean f22825T;

    /* renamed from: U */
    private boolean f22826U;

    /* renamed from: V */
    private byte f22827V;

    /* renamed from: W */
    private int f22828W;

    /* renamed from: X */
    private int f22829X;

    /* renamed from: Y */
    private int f22830Y;

    /* renamed from: Z */
    private boolean f22831Z;

    /* renamed from: a0 */
    private boolean f22832a0;

    /* renamed from: b0 */
    private AbstractC6808od f22833b0;

    /* renamed from: c0 */
    private final C6289ae f22834c0;

    /* renamed from: q */
    private ByteBuffer f22847q;

    /* renamed from: r */
    private long f22848r;

    /* renamed from: w */
    private C6438ee f22853w;

    /* renamed from: x */
    private boolean f22854x;

    /* renamed from: y */
    private int f22855y;

    /* renamed from: z */
    private long f22856z;

    /* renamed from: s */
    private long f22849s = -1;

    /* renamed from: t */
    private long f22850t = -9223372036854775807L;

    /* renamed from: u */
    private long f22851u = -9223372036854775807L;

    /* renamed from: v */
    private long f22852v = -9223372036854775807L;

    /* renamed from: B */
    private long f22807B = -1;

    /* renamed from: C */
    private long f22808C = -1;

    /* renamed from: D */
    private long f22809D = -9223372036854775807L;

    /* renamed from: g */
    private final boolean f22837g = true;

    /* renamed from: e */
    private final C6549he f22835e = new C6549he();

    /* renamed from: f */
    private final SparseArray<C6438ee> f22836f = new SparseArray<>();

    /* renamed from: j */
    private final C6665ki f22840j = new C6665ki(4);

    /* renamed from: k */
    private final C6665ki f22841k = new C6665ki(ByteBuffer.allocate(4).putInt(-1).array());

    /* renamed from: l */
    private final C6665ki f22842l = new C6665ki(4);

    /* renamed from: h */
    private final C6665ki f22838h = new C6665ki(C6591ii.f24281a);

    /* renamed from: i */
    private final C6665ki f22839i = new C6665ki(4);

    /* renamed from: m */
    private final C6665ki f22843m = new C6665ki();

    /* renamed from: n */
    private final C6665ki f22844n = new C6665ki();

    /* renamed from: o */
    private final C6665ki f22845o = new C6665ki(8);

    /* renamed from: p */
    private final C6665ki f22846p = new C6665ki();

    public C6475fe(int i) {
        C6289ae c6289ae = new C6289ae();
        this.f22834c0 = c6289ae;
        c6289ae.m16622b(new C6363ce(this, null));
    }

    /* renamed from: l */
    public static final int m15265l(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: m */
    public static final boolean m15264m(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* renamed from: n */
    private final void m15263n(C6438ee c6438ee, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(c6438ee.f22089a)) {
            byte[] bArr2 = this.f22844n.f25221a;
            long j2 = this.f22815J;
            if (j2 == -9223372036854775807L) {
                bArr = f22804c;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = C6961si.m11018d(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (i * 1000000)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            AbstractC7104wd abstractC7104wd = c6438ee.f22087O;
            C6665ki c6665ki = this.f22844n;
            abstractC7104wd.mo9665d(c6665ki, c6665ki.m13903e());
            this.f22830Y += this.f22844n.m13903e();
        }
        c6438ee.f22087O.mo9668a(j, this.f22821P, this.f22830Y, 0, c6438ee.f22095g);
        this.f22831Z = true;
        m15262o();
    }

    /* renamed from: o */
    private final void m15262o() {
        this.f22822Q = 0;
        this.f22830Y = 0;
        this.f22829X = 0;
        this.f22823R = false;
        this.f22824S = false;
        this.f22826U = false;
        this.f22828W = 0;
        this.f22827V = (byte) 0;
        this.f22825T = false;
        this.f22843m.m13905c();
    }

    /* renamed from: p */
    private final long m15261p(long j) {
        long j2 = this.f22850t;
        if (j2 != -9223372036854775807L) {
            return C6961si.m11012j(j, j2, 1000L);
        }
        throw new zzanp("Can't scale timecode prior to timecodeScale being set.");
    }

    /* renamed from: q */
    private static int[] m15260q(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    /* renamed from: r */
    private final void m15259r(C6734md c6734md, int i) {
        if (this.f22840j.m13903e() >= i) {
            return;
        }
        if (this.f22840j.m13900h() < i) {
            C6665ki c6665ki = this.f22840j;
            byte[] bArr = c6665ki.f25221a;
            int length = bArr.length;
            c6665ki.m13906b(Arrays.copyOf(bArr, Math.max(length + length, i)), this.f22840j.m13903e());
        }
        C6665ki c6665ki2 = this.f22840j;
        c6734md.m13295b(c6665ki2.f25221a, c6665ki2.m13903e(), i - this.f22840j.m13903e(), false);
        this.f22840j.m13902f(i);
    }

    /* renamed from: s */
    private final void m15258s(C6734md c6734md, C6438ee c6438ee, int i) {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(c6438ee.f22089a)) {
            int i4 = i + 32;
            if (this.f22844n.m13900h() < i4) {
                this.f22844n.f25221a = Arrays.copyOf(f22803b, i4 + i);
            }
            c6734md.m13295b(this.f22844n.f25221a, 32, i, false);
            this.f22844n.m13899i(0);
            this.f22844n.m13902f(i4);
            return;
        }
        AbstractC7104wd abstractC7104wd = c6438ee.f22087O;
        if (!this.f22823R) {
            if (c6438ee.f22093e) {
                this.f22821P &= -1073741825;
                int i5 = 128;
                if (!this.f22824S) {
                    c6734md.m13295b(this.f22840j.f25221a, 0, 1, false);
                    this.f22822Q++;
                    byte b = this.f22840j.f25221a[0];
                    if ((b & 128) == 128) {
                        throw new zzanp("Extension bit is set in signal byte");
                    }
                    this.f22827V = b;
                    this.f22824S = true;
                }
                byte b2 = this.f22827V;
                if ((b2 & 1) == 1) {
                    int i6 = b2 & 2;
                    this.f22821P |= 1073741824;
                    if (!this.f22825T) {
                        c6734md.m13295b(this.f22845o.f25221a, 0, 8, false);
                        this.f22822Q += 8;
                        this.f22825T = true;
                        C6665ki c6665ki = this.f22840j;
                        byte[] bArr = c6665ki.f25221a;
                        if (i6 != 2) {
                            i5 = 0;
                        }
                        bArr[0] = (byte) (i5 | 8);
                        c6665ki.m13899i(0);
                        abstractC7104wd.mo9665d(this.f22840j, 1);
                        this.f22830Y++;
                        this.f22845o.m13899i(0);
                        abstractC7104wd.mo9665d(this.f22845o, 8);
                        this.f22830Y += 8;
                    }
                    if (i6 == 2) {
                        if (!this.f22826U) {
                            c6734md.m13295b(this.f22840j.f25221a, 0, 1, false);
                            this.f22822Q++;
                            this.f22840j.m13899i(0);
                            this.f22828W = this.f22840j.m13896l();
                            this.f22826U = true;
                        }
                        int i7 = this.f22828W * 4;
                        this.f22840j.m13907a(i7);
                        c6734md.m13295b(this.f22840j.f25221a, 0, i7, false);
                        this.f22822Q += i7;
                        int i8 = (this.f22828W >> 1) + 1;
                        int i9 = (i8 * 6) + 2;
                        ByteBuffer byteBuffer = this.f22847q;
                        if (byteBuffer == null || byteBuffer.capacity() < i9) {
                            this.f22847q = ByteBuffer.allocate(i9);
                        }
                        this.f22847q.position(0);
                        this.f22847q.putShort((short) i8);
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            i2 = i11;
                            i3 = this.f22828W;
                            if (i10 >= i3) {
                                break;
                            }
                            int m13887u = this.f22840j.m13887u();
                            if (i10 % 2 == 0) {
                                this.f22847q.putShort((short) (m13887u - i2));
                            } else {
                                this.f22847q.putInt(m13887u - i2);
                            }
                            i10++;
                            i11 = m13887u;
                        }
                        int i12 = (i - this.f22822Q) - i2;
                        if ((i3 & 1) == 1) {
                            this.f22847q.putInt(i12);
                        } else {
                            this.f22847q.putShort((short) i12);
                            this.f22847q.putInt(0);
                        }
                        this.f22846p.m13906b(this.f22847q.array(), i9);
                        abstractC7104wd.mo9665d(this.f22846p, i9);
                        this.f22830Y += i9;
                    }
                }
            } else {
                byte[] bArr2 = c6438ee.f22094f;
                if (bArr2 != null) {
                    this.f22843m.m13906b(bArr2, bArr2.length);
                }
            }
            this.f22823R = true;
        }
        int m13903e = i + this.f22843m.m13903e();
        if (!"V_MPEG4/ISO/AVC".equals(c6438ee.f22089a) && !"V_MPEGH/ISO/HEVC".equals(c6438ee.f22089a)) {
            while (true) {
                int i13 = this.f22822Q;
                if (i13 >= m13903e) {
                    break;
                }
                m15257t(c6734md, abstractC7104wd, m13903e - i13);
            }
        } else {
            byte[] bArr3 = this.f22839i.f25221a;
            bArr3[0] = (byte) 0;
            bArr3[1] = (byte) 0;
            bArr3[2] = (byte) 0;
            int i14 = c6438ee.f22088P;
            int i15 = 4 - i14;
            while (this.f22822Q < m13903e) {
                int i16 = this.f22829X;
                if (i16 == 0) {
                    int min = Math.min(i14, this.f22843m.m13904d());
                    c6734md.m13295b(bArr3, i15 + min, i14 - min, false);
                    if (min > 0) {
                        this.f22843m.m13897k(bArr3, i15, min);
                    }
                    this.f22822Q += i14;
                    this.f22839i.m13899i(0);
                    this.f22829X = this.f22839i.m13887u();
                    this.f22838h.m13899i(0);
                    abstractC7104wd.mo9665d(this.f22838h, 4);
                    this.f22830Y += 4;
                } else {
                    this.f22829X = i16 - m15257t(c6734md, abstractC7104wd, i16);
                }
            }
        }
        if (!"A_VORBIS".equals(c6438ee.f22089a)) {
            return;
        }
        this.f22841k.m13899i(0);
        abstractC7104wd.mo9665d(this.f22841k, 4);
        this.f22830Y += 4;
    }

    /* renamed from: t */
    private final int m15257t(C6734md c6734md, AbstractC7104wd abstractC7104wd, int i) {
        int i2;
        int m13904d = this.f22843m.m13904d();
        if (m13904d > 0) {
            i2 = Math.min(i, m13904d);
            abstractC7104wd.mo9665d(this.f22843m, i2);
        } else {
            i2 = abstractC7104wd.mo9667b(c6734md, i, false);
        }
        this.f22822Q += i2;
        this.f22830Y += i2;
        return i2;
    }

    /* renamed from: b */
    public final void m15271b(int i, long j, long j2) {
        if (i == 160) {
            this.f22832a0 = false;
        } else if (i == 174) {
            this.f22853w = new C6438ee(null);
        } else if (i == 187) {
            this.f22812G = false;
        } else if (i == 19899) {
            this.f22855y = -1;
            this.f22856z = -1L;
        } else if (i == 20533) {
            this.f22853w.f22093e = true;
        } else if (i == 21968) {
            this.f22853w.f22105q = true;
        } else if (i == 408125543) {
            long j3 = this.f22849s;
            if (j3 != -1 && j3 != j) {
                throw new zzanp("Multiple Segment elements not supported");
            }
            this.f22849s = j;
            this.f22848r = j2;
        } else if (i == 475249515) {
            this.f22810E = new C6479fi(32);
            this.f22811F = new C6479fi(32);
        } else if (i != 524531317 || this.f22854x) {
        } else {
            if (this.f22837g && this.f22807B != -1) {
                this.f22806A = true;
                return;
            }
            this.f22833b0.mo12696b(new C6993td(this.f22852v));
            this.f22854x = true;
        }
    }

    /* renamed from: c */
    public final void m15270c(int i) {
        C6697ld c6697ld;
        C6479fi c6479fi;
        C6479fi c6479fi2;
        int i2;
        int i3;
        if (i == 160) {
            if (this.f22813H != 2) {
                return;
            }
            if (!this.f22832a0) {
                this.f22821P |= 1;
            }
            m15263n(this.f22836f.get(this.f22819N), this.f22814I);
            this.f22813H = 0;
        } else if (i == 174) {
            String str = this.f22853w.f22089a;
            if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                C6438ee c6438ee = this.f22853w;
                c6438ee.m15521b(this.f22833b0, c6438ee.f22090b);
                SparseArray<C6438ee> sparseArray = this.f22836f;
                C6438ee c6438ee2 = this.f22853w;
                sparseArray.put(c6438ee2.f22090b, c6438ee2);
            }
            this.f22853w = null;
        } else if (i == 19899) {
            int i4 = this.f22855y;
            if (i4 != -1) {
                long j = this.f22856z;
                if (j != -1) {
                    if (i4 != 475249515) {
                        return;
                    }
                    this.f22807B = j;
                    return;
                }
            }
            throw new zzanp("Mandatory element SeekID or SeekPosition not found");
        } else if (i == 25152) {
            C6438ee c6438ee3 = this.f22853w;
            if (!c6438ee3.f22093e) {
                return;
            }
            if (c6438ee3.f22095g == null) {
                throw new zzanp("Encrypted Track found but ContentEncKeyID was not found");
            }
            c6438ee3.f22097i = new zzapk(new zzapj(C6397db.f21567b, "video/webm", this.f22853w.f22095g.f31138b, false));
        } else if (i == 28032) {
            C6438ee c6438ee4 = this.f22853w;
            if (c6438ee4.f22093e && c6438ee4.f22094f != null) {
                throw new zzanp("Combining encryption and compression is not supported");
            }
        } else if (i == 357149030) {
            if (this.f22850t == -9223372036854775807L) {
                this.f22850t = 1000000L;
            }
            long j2 = this.f22851u;
            if (j2 == -9223372036854775807L) {
                return;
            }
            this.f22852v = m15261p(j2);
        } else if (i == 374648427) {
            if (this.f22836f.size() == 0) {
                throw new zzanp("No valid tracks were found");
            }
            this.f22833b0.mo12695h();
        } else if (i != 475249515 || this.f22854x) {
        } else {
            AbstractC6808od abstractC6808od = this.f22833b0;
            if (this.f22849s == -1 || this.f22852v == -9223372036854775807L || (c6479fi = this.f22810E) == null || c6479fi.m15184c() == 0 || (c6479fi2 = this.f22811F) == null || c6479fi2.m15184c() != this.f22810E.m15184c()) {
                this.f22810E = null;
                this.f22811F = null;
                c6697ld = new C6993td(this.f22852v);
            } else {
                int m15184c = this.f22810E.m15184c();
                int[] iArr = new int[m15184c];
                long[] jArr = new long[m15184c];
                long[] jArr2 = new long[m15184c];
                long[] jArr3 = new long[m15184c];
                int i5 = 0;
                while (true) {
                    i2 = 0;
                    if (i5 < m15184c) {
                        jArr3[i5] = this.f22810E.m15185b(i5);
                        jArr[i5] = this.f22849s + this.f22811F.m15185b(i5);
                        i5++;
                    }
                }
                while (true) {
                    i3 = m15184c - 1;
                    if (i2 >= i3) {
                        break;
                    }
                    int i6 = i2 + 1;
                    iArr[i2] = (int) (jArr[i6] - jArr[i2]);
                    jArr2[i2] = jArr3[i6] - jArr3[i2];
                    i2 = i6;
                }
                iArr[i3] = (int) ((this.f22849s + this.f22848r) - jArr[i3]);
                jArr2[i3] = this.f22852v - jArr3[i3];
                this.f22810E = null;
                this.f22811F = null;
                c6697ld = new C6697ld(iArr, jArr, jArr2, jArr3);
            }
            abstractC6808od.mo12696b(c6697ld);
            this.f22854x = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: d */
    public final void mo9615d(long j, long j2) {
        this.f22809D = -9223372036854775807L;
        this.f22813H = 0;
        this.f22834c0.m16623a();
        this.f22835e.m14700a();
        m15262o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: e */
    public final int mo9614e(C6734md c6734md, C6956sd c6956sd) {
        this.f22831Z = false;
        while (!this.f22831Z) {
            if (!this.f22834c0.m16621c(c6734md)) {
                return -1;
            }
            long m13289h = c6734md.m13289h();
            if (this.f22806A) {
                this.f22808C = m13289h;
                c6956sd.f29450a = this.f22807B;
                this.f22806A = false;
                return 1;
            } else if (this.f22854x) {
                long j = this.f22808C;
                if (j != -1) {
                    c6956sd.f29450a = j;
                    this.f22808C = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: f */
    public final boolean mo9613f(C6734md c6734md) {
        return new C6512ge().m14960a(c6734md);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: g */
    public final void mo9612g(AbstractC6808od abstractC6808od) {
        this.f22833b0 = abstractC6808od;
    }

    /* renamed from: h */
    public final void m15269h(int i, long j) {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw new zzanp(sb.toString());
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw new zzanp(sb2.toString());
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    this.f22853w.f22091c = (int) j;
                    return;
                case 136:
                    C6438ee c6438ee = this.f22853w;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    c6438ee.f22084L = z2;
                    return;
                case 155:
                    this.f22815J = m15261p(j);
                    return;
                case 159:
                    this.f22853w.f22079G = (int) j;
                    return;
                case 176:
                    this.f22853w.f22098j = (int) j;
                    return;
                case 179:
                    this.f22810E.m15186a(m15261p(j));
                    return;
                case 186:
                    this.f22853w.f22099k = (int) j;
                    return;
                case 215:
                    this.f22853w.f22090b = (int) j;
                    return;
                case 231:
                    this.f22809D = m15261p(j);
                    return;
                case 241:
                    if (this.f22812G) {
                        return;
                    }
                    this.f22811F.m15186a(j);
                    this.f22812G = true;
                    return;
                case 251:
                    this.f22832a0 = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j);
                    sb3.append(" not supported");
                    throw new zzanp(sb3.toString());
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw new zzanp(sb4.toString());
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j);
                    sb5.append(" not supported");
                    throw new zzanp(sb5.toString());
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw new zzanp(sb6.toString());
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw new zzanp(sb7.toString());
                case 21420:
                    this.f22856z = j + this.f22849s;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.f22853w.f22104p = 0;
                        return;
                    } else if (i2 == 1) {
                        this.f22853w.f22104p = 2;
                        return;
                    } else if (i2 == 3) {
                        this.f22853w.f22104p = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.f22853w.f22104p = 3;
                        return;
                    }
                case 21680:
                    this.f22853w.f22100l = (int) j;
                    return;
                case 21682:
                    this.f22853w.f22102n = (int) j;
                    return;
                case 21690:
                    this.f22853w.f22101m = (int) j;
                    return;
                case 21930:
                    C6438ee c6438ee2 = this.f22853w;
                    if (j == 1) {
                        z = true;
                    }
                    c6438ee2.f22085M = z;
                    return;
                case 22186:
                    this.f22853w.f22082J = j;
                    return;
                case 22203:
                    this.f22853w.f22083K = j;
                    return;
                case 25188:
                    this.f22853w.f22080H = (int) j;
                    return;
                case 2352003:
                    this.f22853w.f22092d = (int) j;
                    return;
                case 2807729:
                    this.f22850t = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                this.f22853w.f22108t = 2;
                                return;
                            } else if (i3 != 2) {
                                return;
                            } else {
                                this.f22853w.f22108t = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    this.f22853w.f22107s = 6;
                                    return;
                                } else if (i4 == 18) {
                                    this.f22853w.f22107s = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            this.f22853w.f22107s = 3;
                            return;
                        case 21947:
                            C6438ee c6438ee3 = this.f22853w;
                            c6438ee3.f22105q = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                c6438ee3.f22106r = 1;
                                return;
                            } else if (i5 == 9) {
                                c6438ee3.f22106r = 6;
                                return;
                            } else if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
                                return;
                            } else {
                                c6438ee3.f22106r = 2;
                                return;
                            }
                        case 21948:
                            this.f22853w.f22109u = (int) j;
                            return;
                        case 21949:
                            this.f22853w.f22110v = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: i */
    public final void m15268i(int i, double d) {
        if (i == 181) {
            this.f22853w.f22081I = (int) d;
        } else if (i == 17545) {
            this.f22851u = (long) d;
        } else {
            switch (i) {
                case 21969:
                    this.f22853w.f22111w = (float) d;
                    return;
                case 21970:
                    this.f22853w.f22112x = (float) d;
                    return;
                case 21971:
                    this.f22853w.f22113y = (float) d;
                    return;
                case 21972:
                    this.f22853w.f22114z = (float) d;
                    return;
                case 21973:
                    this.f22853w.f22073A = (float) d;
                    return;
                case 21974:
                    this.f22853w.f22074B = (float) d;
                    return;
                case 21975:
                    this.f22853w.f22075C = (float) d;
                    return;
                case 21976:
                    this.f22853w.f22076D = (float) d;
                    return;
                case 21977:
                    this.f22853w.f22077E = (float) d;
                    return;
                case 21978:
                    this.f22853w.f22078F = (float) d;
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: j */
    public final void m15267j(int i, String str) {
        if (i == 134) {
            this.f22853w.f22089a = str;
        } else if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            this.f22853w.f22086N = str;
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            StringBuilder sb = new StringBuilder(str.length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzanp(sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0456  */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15266k(int r9, int r10, com.google.android.gms.internal.ads.C6734md r11) {
        /*
            Method dump skipped, instructions count: 1251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6475fe.m15266k(int, int, com.google.android.gms.internal.ads.md):void");
    }
}
