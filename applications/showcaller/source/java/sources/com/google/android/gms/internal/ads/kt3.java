package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kt3.class */
public final class kt3 implements uq3 {

    /* renamed from: a */
    public static final br3 f25350a = ft3.f23135b;

    /* renamed from: b */
    private static final byte[] f25351b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c */
    private static final byte[] f25352c = C7101wa.m9704X("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: d */
    private static final byte[] f25353d = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: e */
    private static final UUID f25354e = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: f */
    private static final Map<String, Integer> f25355f;

    /* renamed from: A */
    private boolean f25356A;

    /* renamed from: B */
    private int f25357B;

    /* renamed from: C */
    private long f25358C;

    /* renamed from: D */
    private boolean f25359D;

    /* renamed from: H */
    private C6989t9 f25363H;

    /* renamed from: I */
    private C6989t9 f25364I;

    /* renamed from: J */
    private boolean f25365J;

    /* renamed from: K */
    private boolean f25366K;

    /* renamed from: L */
    private int f25367L;

    /* renamed from: M */
    private long f25368M;

    /* renamed from: N */
    private long f25369N;

    /* renamed from: O */
    private int f25370O;

    /* renamed from: P */
    private int f25371P;

    /* renamed from: R */
    private int f25373R;

    /* renamed from: S */
    private int f25374S;

    /* renamed from: T */
    private int f25375T;

    /* renamed from: U */
    private int f25376U;

    /* renamed from: V */
    private boolean f25377V;

    /* renamed from: W */
    private int f25378W;

    /* renamed from: X */
    private int f25379X;

    /* renamed from: Y */
    private int f25380Y;

    /* renamed from: Z */
    private boolean f25381Z;

    /* renamed from: a0 */
    private boolean f25382a0;

    /* renamed from: b0 */
    private boolean f25383b0;

    /* renamed from: c0 */
    private int f25384c0;

    /* renamed from: d0 */
    private byte f25385d0;

    /* renamed from: e0 */
    private boolean f25386e0;

    /* renamed from: f0 */
    private xq3 f25387f0;

    /* renamed from: g0 */
    private final dt3 f25389g0;

    /* renamed from: t */
    private ByteBuffer f25402t;

    /* renamed from: u */
    private long f25403u;

    /* renamed from: z */
    private it3 f25408z;

    /* renamed from: v */
    private long f25404v = -1;

    /* renamed from: w */
    private long f25405w = -9223372036854775807L;

    /* renamed from: x */
    private long f25406x = -9223372036854775807L;

    /* renamed from: y */
    private long f25407y = -9223372036854775807L;

    /* renamed from: E */
    private long f25360E = -1;

    /* renamed from: F */
    private long f25361F = -1;

    /* renamed from: G */
    private long f25362G = -9223372036854775807L;

    /* renamed from: i */
    private final boolean f25391i = true;

    /* renamed from: g */
    private final mt3 f25388g = new mt3();

    /* renamed from: h */
    private final SparseArray<it3> f25390h = new SparseArray<>();

    /* renamed from: l */
    private final C6694la f25394l = new C6694la(4);

    /* renamed from: m */
    private final C6694la f25395m = new C6694la(ByteBuffer.allocate(4).putInt(-1).array());

    /* renamed from: n */
    private final C6694la f25396n = new C6694la(4);

    /* renamed from: j */
    private final C6694la f25392j = new C6694la(C6322ba.f20319a);

    /* renamed from: k */
    private final C6694la f25393k = new C6694la(4);

    /* renamed from: o */
    private final C6694la f25397o = new C6694la();

    /* renamed from: p */
    private final C6694la f25398p = new C6694la();

    /* renamed from: q */
    private final C6694la f25399q = new C6694la(8);

    /* renamed from: r */
    private final C6694la f25400r = new C6694la();

    /* renamed from: s */
    private final C6694la f25401s = new C6694la();

    /* renamed from: Q */
    private int[] f25372Q = new int[1];

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f25355f = Collections.unmodifiableMap(hashMap);
    }

    public kt3(int i) {
        dt3 dt3Var = new dt3();
        this.f25389g0 = dt3Var;
        dt3Var.m15688a(new gt3(this, null));
    }

    /* renamed from: n */
    public static final int m13794n(int i) {
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
            case 238:
            case 241:
            case 251:
            case 16871:
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
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
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
            case 165:
            case 16877:
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
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: o */
    public static final boolean m13793o(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @EnsuresNonNull({"currentTrack"})
    /* renamed from: p */
    private final void m13792p(int i) {
        if (this.f25408z != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw zzaha.zzb(sb.toString(), null);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    /* renamed from: q */
    private final void m13791q(int i) {
        if (this.f25363H == null || this.f25364I == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw zzaha.zzb(sb.toString(), null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012d A[EDGE_INSN: B:53:0x012d->B:41:0x012d ?: BREAK  , SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m13790r(com.google.android.gms.internal.ads.it3 r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kt3.m13790r(com.google.android.gms.internal.ads.it3, long, int, int, int):void");
    }

    /* renamed from: s */
    private final void m13789s(vq3 vq3Var, int i) {
        if (this.f25394l.m13638m() >= i) {
            return;
        }
        if (this.f25394l.m13633r() < i) {
            C6694la c6694la = this.f25394l;
            int m13633r = c6694la.m13633r();
            c6694la.m13640k(Math.max(m13633r + m13633r, i));
        }
        ((pq3) vq3Var).mo9883k(this.f25394l.m13634q(), this.f25394l.m13638m(), i - this.f25394l.m13638m(), false);
        this.f25394l.m13637n(i);
    }

    @RequiresNonNull({"#2.output"})
    /* renamed from: t */
    private final int m13788t(vq3 vq3Var, it3 it3Var, int i) {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(it3Var.f24455b)) {
            m13786v(vq3Var, f25351b, i);
            int i4 = this.f25379X;
            m13787u();
            return i4;
        } else if ("S_TEXT/ASS".equals(it3Var.f24455b)) {
            m13786v(vq3Var, f25353d, i);
            int i5 = this.f25379X;
            m13787u();
            return i5;
        } else {
            yr3 yr3Var = it3Var.f24452X;
            boolean z = true;
            if (!this.f25381Z) {
                if (it3Var.f24461h) {
                    this.f25375T &= -1073741825;
                    int i6 = 128;
                    if (!this.f25382a0) {
                        ((pq3) vq3Var).mo9883k(this.f25394l.m13634q(), 0, 1, false);
                        this.f25378W++;
                        if ((this.f25394l.m13634q()[0] & 128) == 128) {
                            throw zzaha.zzb("Extension bit is set in signal byte", null);
                        }
                        this.f25385d0 = this.f25394l.m13634q()[0];
                        this.f25382a0 = true;
                    }
                    byte b = this.f25385d0;
                    if ((b & 1) == 1) {
                        int i7 = b & 2;
                        this.f25375T |= 1073741824;
                        if (!this.f25386e0) {
                            ((pq3) vq3Var).mo9883k(this.f25399q.m13634q(), 0, 8, false);
                            this.f25378W += 8;
                            this.f25386e0 = true;
                            byte[] m13634q = this.f25394l.m13634q();
                            if (i7 != 2) {
                                i6 = 0;
                            }
                            m13634q[0] = (byte) (i6 | 8);
                            this.f25394l.m13635p(0);
                            yr3Var.mo8702f(this.f25394l, 1, 1);
                            this.f25379X++;
                            this.f25399q.m13635p(0);
                            yr3Var.mo8702f(this.f25399q, 8, 1);
                            this.f25379X += 8;
                        }
                        if (i7 == 2) {
                            if (!this.f25383b0) {
                                ((pq3) vq3Var).mo9883k(this.f25394l.m13634q(), 0, 1, false);
                                this.f25378W++;
                                this.f25394l.m13635p(0);
                                this.f25384c0 = this.f25394l.m13629v();
                                this.f25383b0 = true;
                            }
                            int i8 = this.f25384c0 * 4;
                            this.f25394l.m13642i(i8);
                            ((pq3) vq3Var).mo9883k(this.f25394l.m13634q(), 0, i8, false);
                            this.f25378W += i8;
                            int i9 = (this.f25384c0 >> 1) + 1;
                            int i10 = (i9 * 6) + 2;
                            ByteBuffer byteBuffer = this.f25402t;
                            if (byteBuffer == null || byteBuffer.capacity() < i10) {
                                this.f25402t = ByteBuffer.allocate(i10);
                            }
                            this.f25402t.position(0);
                            this.f25402t.putShort((short) i9);
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                i2 = i12;
                                i3 = this.f25384c0;
                                if (i11 >= i3) {
                                    break;
                                }
                                int m13649b = this.f25394l.m13649b();
                                if (i11 % 2 == 0) {
                                    this.f25402t.putShort((short) (m13649b - i2));
                                } else {
                                    this.f25402t.putInt(m13649b - i2);
                                }
                                i11++;
                                i12 = m13649b;
                            }
                            int i13 = (i - this.f25378W) - i2;
                            if ((i3 & 1) == 1) {
                                this.f25402t.putInt(i13);
                            } else {
                                this.f25402t.putShort((short) i13);
                                this.f25402t.putInt(0);
                            }
                            this.f25400r.m13641j(this.f25402t.array(), i10);
                            yr3Var.mo8702f(this.f25400r, i10, 1);
                            this.f25379X += i10;
                        }
                    }
                } else {
                    byte[] bArr = it3Var.f24462i;
                    if (bArr != null) {
                        this.f25397o.m13641j(bArr, bArr.length);
                    }
                }
                if (it3Var.f24459f > 0) {
                    this.f25375T |= 268435456;
                    this.f25401s.m13642i(0);
                    this.f25394l.m13642i(4);
                    this.f25394l.m13634q()[0] = (byte) ((i >> 24) & 255);
                    this.f25394l.m13634q()[1] = (byte) ((i >> 16) & 255);
                    this.f25394l.m13634q()[2] = (byte) ((i >> 8) & 255);
                    this.f25394l.m13634q()[3] = (byte) (i & 255);
                    yr3Var.mo8702f(this.f25394l, 4, 2);
                    this.f25379X += 4;
                }
                this.f25381Z = true;
            }
            int m13638m = i + this.f25397o.m13638m();
            if (!"V_MPEG4/ISO/AVC".equals(it3Var.f24455b) && !"V_MPEGH/ISO/HEVC".equals(it3Var.f24455b)) {
                if (it3Var.f24448T != null) {
                    if (this.f25397o.m13638m() != 0) {
                        z = false;
                    }
                    C7173y8.m8895d(z);
                    it3Var.f24448T.m14039b(vq3Var);
                }
                while (true) {
                    int i14 = this.f25378W;
                    if (i14 >= m13638m) {
                        break;
                    }
                    int m13784x = m13784x(vq3Var, yr3Var, m13638m - i14);
                    this.f25378W += m13784x;
                    this.f25379X += m13784x;
                }
            } else {
                byte[] m13634q2 = this.f25393k.m13634q();
                m13634q2[0] = (byte) 0;
                m13634q2[1] = (byte) 0;
                m13634q2[2] = (byte) 0;
                int i15 = it3Var.f24453Y;
                int i16 = 4 - i15;
                while (this.f25378W < m13638m) {
                    int i17 = this.f25380Y;
                    if (i17 == 0) {
                        int min = Math.min(i15, this.f25397o.m13639l());
                        ((pq3) vq3Var).mo9883k(m13634q2, i16 + min, i15 - min, false);
                        if (min > 0) {
                            this.f25397o.m13630u(m13634q2, i16, min);
                        }
                        this.f25378W += i15;
                        this.f25393k.m13635p(0);
                        this.f25380Y = this.f25393k.m13649b();
                        this.f25392j.m13635p(0);
                        wr3.m9478b(yr3Var, this.f25392j, 4);
                        this.f25379X += 4;
                    } else {
                        int m13784x2 = m13784x(vq3Var, yr3Var, i17);
                        this.f25378W += m13784x2;
                        this.f25379X += m13784x2;
                        this.f25380Y -= m13784x2;
                    }
                }
            }
            if ("A_VORBIS".equals(it3Var.f24455b)) {
                this.f25395m.m13635p(0);
                wr3.m9478b(yr3Var, this.f25395m, 4);
                this.f25379X += 4;
            }
            int i18 = this.f25379X;
            m13787u();
            return i18;
        }
    }

    /* renamed from: u */
    private final void m13787u() {
        this.f25378W = 0;
        this.f25379X = 0;
        this.f25380Y = 0;
        this.f25381Z = false;
        this.f25382a0 = false;
        this.f25383b0 = false;
        this.f25384c0 = 0;
        this.f25385d0 = (byte) 0;
        this.f25386e0 = false;
        this.f25397o.m13642i(0);
    }

    /* renamed from: v */
    private final void m13786v(vq3 vq3Var, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = i + 32;
        if (this.f25398p.m13633r() < i2) {
            C6694la c6694la = this.f25398p;
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            c6694la.m13641j(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.f25398p.m13634q(), 0, 32);
        }
        ((pq3) vq3Var).mo9883k(this.f25398p.m13634q(), 32, i, false);
        this.f25398p.m13635p(0);
        this.f25398p.m13637n(i2);
    }

    /* renamed from: w */
    private static byte[] m13785w(long j, String str, long j2) {
        C7173y8.m8898a(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return C7101wa.m9704X(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    /* renamed from: x */
    private final int m13784x(vq3 vq3Var, yr3 yr3Var, int i) {
        int i2;
        int m13639l = this.f25397o.m13639l();
        if (m13639l > 0) {
            i2 = Math.min(i, m13639l);
            wr3.m9478b(yr3Var, this.f25397o, i2);
        } else {
            i2 = wr3.m9479a(yr3Var, vq3Var, i, false);
        }
        return i2;
    }

    /* renamed from: y */
    private final long m13783y(long j) {
        long j2 = this.f25405w;
        if (j2 != -9223372036854775807L) {
            return C7101wa.m9689h(j, j2, 1000L);
        }
        throw zzaha.zzb("Can't scale timecode prior to timecodeScale being set.", null);
    }

    /* renamed from: z */
    private static int[] m13782z(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    /* renamed from: d */
    public final void m13800d(int i, long j, long j2) {
        C7173y8.m8894e(this.f25387f0);
        if (i == 160) {
            this.f25377V = false;
        } else if (i == 174) {
            this.f25408z = new it3(null);
        } else if (i == 187) {
            this.f25365J = false;
        } else if (i == 19899) {
            this.f25357B = -1;
            this.f25358C = -1L;
        } else if (i == 20533) {
            m13792p(i);
            this.f25408z.f24461h = true;
        } else if (i == 21968) {
            m13792p(i);
            this.f25408z.f24477x = true;
        } else if (i == 408125543) {
            long j3 = this.f25404v;
            if (j3 != -1 && j3 != j) {
                throw zzaha.zzb("Multiple Segment elements not supported", null);
            }
            this.f25404v = j;
            this.f25403u = j2;
        } else if (i == 475249515) {
            this.f25363H = new C6989t9(32);
            this.f25364I = new C6989t9(32);
        } else if (i != 524531317 || this.f25356A) {
        } else {
            if (this.f25391i && this.f25360E != -1) {
                this.f25359D = true;
                return;
            }
            this.f25387f0.mo8689r(new tr3(this.f25407y, 0L));
            this.f25356A = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (r9 >= r5.f25390h.size()) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
        r0 = r5.f25390h.valueAt(r9);
        java.util.Objects.requireNonNull(r0.f24452X);
        r0 = r0.f24448T;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0089, code lost:
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008c, code lost:
        r0.m14037d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r6, com.google.android.gms.internal.ads.rr3 r7) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            r1 = 0
            r0.f25366K = r1
        L7:
            r0 = r5
            boolean r0 = r0.f25366K
            if (r0 != 0) goto L99
            r0 = r8
            r9 = r0
            r0 = r5
            com.google.android.gms.internal.ads.dt3 r0 = r0.f25389g0
            r1 = r6
            boolean r0 = r0.m15686c(r1)
            if (r0 == 0) goto L66
            r0 = r6
            long r0 = r0.mo9465m()
            r10 = r0
            r0 = r5
            boolean r0 = r0.f25359D
            if (r0 == 0) goto L41
            r0 = r5
            r1 = r10
            r0.f25361F = r1
            r0 = r7
            r1 = r5
            long r1 = r1.f25360E
            r0.f29206a = r1
            r0 = r5
            r1 = 0
            r0.f25359D = r1
            goto L64
        L41:
            r0 = r5
            boolean r0 = r0.f25356A
            if (r0 == 0) goto L7
            r0 = r5
            long r0 = r0.f25361F
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L7
            r0 = r7
            r1 = r10
            r0.f29206a = r1
            r0 = r5
            r1 = -1
            r0.f25361F = r1
        L64:
            r0 = 1
            return r0
        L66:
            r0 = r9
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.it3> r1 = r1.f25390h
            int r1 = r1.size()
            if (r0 >= r1) goto L97
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.it3> r0 = r0.f25390h
            r1 = r9
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.gms.internal.ads.it3 r0 = (com.google.android.gms.internal.ads.it3) r0
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.it3.m14277e(r0)
            r0 = r6
            com.google.android.gms.internal.ads.jt3 r0 = r0.f24448T
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L91
            r0 = r7
            r1 = r6
            r0.m14037d(r1)
        L91:
            int r9 = r9 + 1
            goto L66
        L97:
            r0 = -1
            return r0
        L99:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kt3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        return new lt3().m13418a(vq3Var);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f25387f0 = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f25362G = -9223372036854775807L;
        this.f25367L = 0;
        this.f25389g0.m15687b();
        this.f25388g.m13083a();
        m13787u();
        for (int i = 0; i < this.f25390h.size(); i++) {
            jt3 jt3Var = this.f25390h.valueAt(i).f24448T;
            if (jt3Var != null) {
                jt3Var.m14040a();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: i */
    public final void m13799i(int i) {
        int i2;
        int i3;
        boolean z;
        nq3 nq3Var;
        int i4;
        C7173y8.m8894e(this.f25387f0);
        if (i == 160) {
            if (this.f25367L != 2) {
                return;
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.f25371P; i6++) {
                i5 += this.f25372Q[i6];
            }
            it3 it3Var = this.f25390h.get(this.f25373R);
            Objects.requireNonNull(it3Var.f24452X);
            int i7 = 0;
            int i8 = i5;
            while (i7 < this.f25371P) {
                long j = this.f25368M;
                long j2 = (it3Var.f24458e * i7) / 1000;
                int i9 = this.f25375T;
                if (i7 == 0) {
                    int i10 = i9;
                    if (!this.f25377V) {
                        i10 = i9 | 1;
                    }
                    i2 = i10;
                    i3 = 0;
                } else {
                    i3 = i7;
                    i2 = i9;
                }
                int i11 = this.f25372Q[i3];
                i8 -= i11;
                m13790r(it3Var, j + j2, i2, i11, i8);
                i7 = i3 + 1;
            }
            this.f25367L = 0;
        } else if (i == 174) {
            it3 it3Var2 = this.f25408z;
            C7173y8.m8894e(it3Var2);
            String str = it3Var2.f24455b;
            if (str == null) {
                throw zzaha.zzb("CodecId is missing in TrackEntry element", null);
            }
            switch (str.hashCode()) {
                case -2095576542:
                    if (str.equals("V_MPEG4/ISO/AP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -2095575984:
                    if (str.equals("V_MPEG4/ISO/SP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1985379776:
                    if (str.equals("A_MS/ACM")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1784763192:
                    if (str.equals("A_TRUEHD")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1730367663:
                    if (str.equals("A_VORBIS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641358:
                    if (str.equals("A_MPEG/L2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641357:
                    if (str.equals("A_MPEG/L3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1373388978:
                    if (str.equals("V_MS/VFW/FOURCC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -933872740:
                    if (str.equals("S_DVBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363189:
                    if (str.equals("V_MPEG4/ISO/ASP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363109:
                    if (str.equals("V_MPEG4/ISO/AVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -425012669:
                    if (str.equals("S_VOBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -356037306:
                    if (str.equals("A_DTS/LOSSLESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923557:
                    if (str.equals("A_AAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923603:
                    if (str.equals("A_AC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62927045:
                    if (str.equals("A_DTS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82318131:
                    if (str.equals("V_AV1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82338133:
                    if (str.equals("V_VP8")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 82338134:
                    if (str.equals("V_VP9")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 99146302:
                    if (str.equals("S_HDMV/PGS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 444813526:
                    if (str.equals("V_THEORA")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 542569478:
                    if (str.equals("A_DTS/EXPRESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 635596514:
                    if (str.equals("A_PCM/FLOAT/IEEE")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 725948237:
                    if (str.equals("A_PCM/INT/BIG")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 725957860:
                    if (str.equals("A_PCM/INT/LIT")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 738597099:
                    if (str.equals("S_TEXT/ASS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 855502857:
                    if (str.equals("V_MPEGH/ISO/HEVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1422270023:
                    if (str.equals("S_TEXT/UTF8")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1809237540:
                    if (str.equals("V_MPEG2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950749482:
                    if (str.equals("A_EAC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950789798:
                    if (str.equals("A_FLAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1951062397:
                    if (str.equals("A_OPUS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                case true:
                    it3Var2.m14278d(this.f25387f0, it3Var2.f24456c);
                    this.f25390h.put(it3Var2.f24456c, it3Var2);
                    break;
            }
            this.f25408z = null;
        } else if (i == 19899) {
            int i12 = this.f25357B;
            if (i12 != -1) {
                long j3 = this.f25358C;
                if (j3 != -1) {
                    if (i12 != 475249515) {
                        return;
                    }
                    this.f25360E = j3;
                    return;
                }
            }
            throw zzaha.zzb("Mandatory element SeekID or SeekPosition not found", null);
        } else if (i == 25152) {
            m13792p(i);
            it3 it3Var3 = this.f25408z;
            if (!it3Var3.f24461h) {
                return;
            }
            if (it3Var3.f24463j == null) {
                throw zzaha.zzb("Encrypted Track found but ContentEncKeyID was not found", null);
            }
            it3Var3.f24465l = new zzn(null, new zzm(C7130x2.f31884a, null, "video/webm", this.f25408z.f24463j.f32273b));
        } else if (i == 28032) {
            m13792p(i);
            it3 it3Var4 = this.f25408z;
            if (it3Var4.f24461h && it3Var4.f24462i != null) {
                throw zzaha.zzb("Combining encryption and compression is not supported", null);
            }
        } else if (i == 357149030) {
            if (this.f25405w == -9223372036854775807L) {
                this.f25405w = 1000000L;
            }
            long j4 = this.f25406x;
            if (j4 == -9223372036854775807L) {
                return;
            }
            this.f25407y = m13783y(j4);
        } else if (i == 374648427) {
            if (this.f25390h.size() == 0) {
                throw zzaha.zzb("No valid tracks were found", null);
            }
            this.f25387f0.mo8688t();
        } else if (i == 475249515) {
            if (!this.f25356A) {
                xq3 xq3Var = this.f25387f0;
                C6989t9 c6989t9 = this.f25363H;
                C6989t9 c6989t92 = this.f25364I;
                if (this.f25404v == -1 || this.f25407y == -9223372036854775807L || c6989t9 == null || c6989t9.m10763c() == 0 || c6989t92 == null || c6989t92.m10763c() != c6989t9.m10763c()) {
                    nq3Var = new tr3(this.f25407y, 0L);
                } else {
                    int m10763c = c6989t9.m10763c();
                    int[] iArr = new int[m10763c];
                    long[] jArr = new long[m10763c];
                    long[] jArr2 = new long[m10763c];
                    long[] jArr3 = new long[m10763c];
                    for (int i13 = 0; i13 < m10763c; i13++) {
                        jArr3[i13] = c6989t9.m10764b(i13);
                        jArr[i13] = this.f25404v + c6989t92.m10764b(i13);
                    }
                    int i14 = 0;
                    while (true) {
                        int i15 = i14;
                        i4 = m10763c - 1;
                        if (i15 >= i4) {
                            break;
                        }
                        int i16 = i15 + 1;
                        iArr[i15] = (int) (jArr[i16] - jArr[i15]);
                        jArr2[i15] = jArr3[i16] - jArr3[i15];
                        i14 = i16;
                    }
                    iArr[i4] = (int) ((this.f25404v + this.f25403u) - jArr[i4]);
                    long j5 = this.f25407y - jArr3[i4];
                    jArr2[i4] = j5;
                    int[] iArr2 = iArr;
                    long[] jArr4 = jArr;
                    long[] jArr5 = jArr2;
                    long[] jArr6 = jArr3;
                    if (j5 <= 0) {
                        StringBuilder sb = new StringBuilder(72);
                        sb.append("Discarding last cue point with unexpected duration: ");
                        sb.append(j5);
                        Log.w("MatroskaExtractor", sb.toString());
                        iArr2 = Arrays.copyOf(iArr, i4);
                        jArr4 = Arrays.copyOf(jArr, i4);
                        jArr5 = Arrays.copyOf(jArr2, i4);
                        jArr6 = Arrays.copyOf(jArr3, i4);
                    }
                    nq3Var = new nq3(iArr2, jArr4, jArr5, jArr6);
                }
                xq3Var.mo8689r(nq3Var);
                this.f25356A = true;
            }
            this.f25363H = null;
            this.f25364I = null;
        }
    }

    /* renamed from: j */
    public final void m13798j(int i, long j) {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw zzaha.zzb(sb.toString(), null);
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw zzaha.zzb(sb2.toString(), null);
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    m13792p(i);
                    this.f25408z.f24457d = (int) j;
                    return;
                case 136:
                    m13792p(i);
                    it3 it3Var = this.f25408z;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    it3Var.f24450V = z2;
                    return;
                case 155:
                    this.f25369N = m13783y(j);
                    return;
                case 159:
                    m13792p(i);
                    this.f25408z.f24443O = (int) j;
                    return;
                case 176:
                    m13792p(i);
                    this.f25408z.f24466m = (int) j;
                    return;
                case 179:
                    m13791q(i);
                    this.f25363H.m10765a(m13783y(j));
                    return;
                case 186:
                    m13792p(i);
                    this.f25408z.f24467n = (int) j;
                    return;
                case 215:
                    m13792p(i);
                    this.f25408z.f24456c = (int) j;
                    return;
                case 231:
                    this.f25362G = m13783y(j);
                    return;
                case 238:
                    this.f25376U = (int) j;
                    return;
                case 241:
                    if (this.f25365J) {
                        return;
                    }
                    m13791q(i);
                    this.f25364I.m10765a(j);
                    this.f25365J = true;
                    return;
                case 251:
                    this.f25377V = true;
                    return;
                case 16871:
                    m13792p(i);
                    this.f25408z.f24460g = (int) j;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j);
                    sb3.append(" not supported");
                    throw zzaha.zzb(sb3.toString(), null);
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw zzaha.zzb(sb4.toString(), null);
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j);
                    sb5.append(" not supported");
                    throw zzaha.zzb(sb5.toString(), null);
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw zzaha.zzb(sb6.toString(), null);
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw zzaha.zzb(sb7.toString(), null);
                case 21420:
                    this.f25358C = j + this.f25404v;
                    return;
                case 21432:
                    m13792p(i);
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.f25408z.f24476w = 0;
                        return;
                    } else if (i2 == 1) {
                        this.f25408z.f24476w = 2;
                        return;
                    } else if (i2 == 3) {
                        this.f25408z.f24476w = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.f25408z.f24476w = 3;
                        return;
                    }
                case 21680:
                    m13792p(i);
                    this.f25408z.f24468o = (int) j;
                    return;
                case 21682:
                    m13792p(i);
                    this.f25408z.f24470q = (int) j;
                    return;
                case 21690:
                    m13792p(i);
                    this.f25408z.f24469p = (int) j;
                    return;
                case 21930:
                    m13792p(i);
                    it3 it3Var2 = this.f25408z;
                    if (j == 1) {
                        z = true;
                    }
                    it3Var2.f24449U = z;
                    return;
                case 21998:
                    m13792p(i);
                    this.f25408z.f24459f = (int) j;
                    return;
                case 22186:
                    m13792p(i);
                    this.f25408z.f24446R = j;
                    return;
                case 22203:
                    m13792p(i);
                    this.f25408z.f24447S = j;
                    return;
                case 25188:
                    m13792p(i);
                    this.f25408z.f24444P = (int) j;
                    return;
                case 30321:
                    m13792p(i);
                    int i3 = (int) j;
                    if (i3 == 0) {
                        this.f25408z.f24471r = 0;
                        return;
                    } else if (i3 == 1) {
                        this.f25408z.f24471r = 1;
                        return;
                    } else if (i3 == 2) {
                        this.f25408z.f24471r = 2;
                        return;
                    } else if (i3 != 3) {
                        return;
                    } else {
                        this.f25408z.f24471r = 3;
                        return;
                    }
                case 2352003:
                    m13792p(i);
                    this.f25408z.f24458e = (int) j;
                    return;
                case 2807729:
                    this.f25405w = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            m13792p(i);
                            int i4 = (int) j;
                            if (i4 == 1) {
                                this.f25408z.f24429A = 2;
                                return;
                            } else if (i4 != 2) {
                                return;
                            } else {
                                this.f25408z.f24429A = 1;
                                return;
                            }
                        case 21946:
                            m13792p(i);
                            int m14889b = gm3.m14889b((int) j);
                            if (m14889b == -1) {
                                return;
                            }
                            this.f25408z.f24479z = m14889b;
                            return;
                        case 21947:
                            m13792p(i);
                            this.f25408z.f24477x = true;
                            int m14890a = gm3.m14890a((int) j);
                            if (m14890a == -1) {
                                return;
                            }
                            this.f25408z.f24478y = m14890a;
                            return;
                        case 21948:
                            m13792p(i);
                            this.f25408z.f24430B = (int) j;
                            return;
                        case 21949:
                            m13792p(i);
                            this.f25408z.f24431C = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: k */
    public final void m13797k(int i, double d) {
        if (i == 181) {
            m13792p(i);
            this.f25408z.f24445Q = (int) d;
        } else if (i == 17545) {
            this.f25406x = (long) d;
        } else {
            switch (i) {
                case 21969:
                    m13792p(i);
                    this.f25408z.f24432D = (float) d;
                    return;
                case 21970:
                    m13792p(i);
                    this.f25408z.f24433E = (float) d;
                    return;
                case 21971:
                    m13792p(i);
                    this.f25408z.f24434F = (float) d;
                    return;
                case 21972:
                    m13792p(i);
                    this.f25408z.f24435G = (float) d;
                    return;
                case 21973:
                    m13792p(i);
                    this.f25408z.f24436H = (float) d;
                    return;
                case 21974:
                    m13792p(i);
                    this.f25408z.f24437I = (float) d;
                    return;
                case 21975:
                    m13792p(i);
                    this.f25408z.f24438J = (float) d;
                    return;
                case 21976:
                    m13792p(i);
                    this.f25408z.f24439K = (float) d;
                    return;
                case 21977:
                    m13792p(i);
                    this.f25408z.f24440L = (float) d;
                    return;
                case 21978:
                    m13792p(i);
                    this.f25408z.f24441M = (float) d;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            m13792p(i);
                            this.f25408z.f24472s = (float) d;
                            return;
                        case 30324:
                            m13792p(i);
                            this.f25408z.f24473t = (float) d;
                            return;
                        case 30325:
                            m13792p(i);
                            this.f25408z.f24474u = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: l */
    public final void m13796l(int i, String str) {
        if (i == 134) {
            m13792p(i);
            this.f25408z.f24455b = str;
        } else if (i == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(str.length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw zzaha.zzb(sb.toString(), null);
        } else if (i == 21358) {
            m13792p(i);
            this.f25408z.f24454a = str;
        } else if (i != 2274716) {
        } else {
            m13792p(i);
            this.f25408z.f24451W = str;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0490, code lost:
        throw com.google.android.gms.internal.ads.zzaha.zzb("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13795m(int r9, int r10, com.google.android.gms.internal.ads.vq3 r11) {
        /*
            Method dump skipped, instructions count: 1462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kt3.m13795m(int, int, com.google.android.gms.internal.ads.vq3):void");
    }
}
