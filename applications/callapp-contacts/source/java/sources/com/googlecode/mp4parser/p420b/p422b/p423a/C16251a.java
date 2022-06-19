package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.mopub.mobileads.VastVideoViewController;
import com.p102b.p103a.C3513c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
@AbstractC16259g(m7537a = {5}, m7536b = 64)
/* renamed from: com.googlecode.mp4parser.b.b.a.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a.class */
public class C16251a extends AbstractC16254b {

    /* renamed from: a */
    public static Map<Integer, Integer> f57361a = new HashMap();

    /* renamed from: b */
    public static Map<Integer, String> f57362b = new HashMap();

    /* renamed from: A */
    public int f57363A;

    /* renamed from: B */
    public int f57364B;

    /* renamed from: C */
    public boolean f57365C;

    /* renamed from: D */
    public boolean f57366D;

    /* renamed from: E */
    public boolean f57367E;

    /* renamed from: F */
    public int f57368F;

    /* renamed from: G */
    public boolean f57369G;

    /* renamed from: H */
    public int f57370H;

    /* renamed from: I */
    public int f57371I;

    /* renamed from: J */
    public int f57372J;

    /* renamed from: K */
    public int f57373K;

    /* renamed from: L */
    public int f57374L;

    /* renamed from: M */
    public int f57375M;

    /* renamed from: N */
    public int f57376N;

    /* renamed from: O */
    public int f57377O;

    /* renamed from: P */
    public int f57378P;

    /* renamed from: Q */
    public int f57379Q;

    /* renamed from: R */
    public int f57380R;

    /* renamed from: S */
    public int f57381S;

    /* renamed from: T */
    public int f57382T;

    /* renamed from: U */
    public int f57383U;

    /* renamed from: V */
    public boolean f57384V;

    /* renamed from: W */
    byte[] f57385W;

    /* renamed from: c */
    public C16252a f57387c;

    /* renamed from: d */
    public int f57388d;

    /* renamed from: e */
    public int f57389e;

    /* renamed from: f */
    public int f57390f;

    /* renamed from: g */
    public int f57391g;

    /* renamed from: h */
    public int f57392h;

    /* renamed from: i */
    public int f57393i;

    /* renamed from: j */
    public boolean f57394j;

    /* renamed from: k */
    public boolean f57395k;

    /* renamed from: m */
    public int f57397m;

    /* renamed from: n */
    public int f57398n;

    /* renamed from: o */
    public int f57399o;

    /* renamed from: p */
    public int f57400p;

    /* renamed from: q */
    public int f57401q;

    /* renamed from: r */
    public int f57402r;

    /* renamed from: v */
    public int f57406v;

    /* renamed from: w */
    public int f57407w;

    /* renamed from: x */
    public int f57408x;

    /* renamed from: y */
    public int f57409y;

    /* renamed from: z */
    public int f57410z;

    /* renamed from: l */
    public int f57396l = -1;

    /* renamed from: s */
    public int f57403s = -1;

    /* renamed from: t */
    public int f57404t = -1;

    /* renamed from: u */
    public int f57405u = -1;

    /* renamed from: X */
    boolean f57386X = false;

    /* renamed from: com.googlecode.mp4parser.b.b.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a$a.class */
    public final class C16252a {

        /* renamed from: a */
        public boolean f57411a;

        /* renamed from: b */
        public boolean f57412b;

        /* renamed from: c */
        public boolean f57413c;

        /* renamed from: d */
        public boolean f57414d;

        /* renamed from: e */
        public boolean f57415e;

        /* renamed from: f */
        public boolean f57416f;

        /* renamed from: g */
        public boolean f57417g;

        public C16252a(int i, C16255c c16255c) {
            int i2;
            C16251a.this = r5;
            this.f57411a = c16255c.m7542a();
            this.f57412b = c16255c.m7542a();
            this.f57413c = c16255c.m7542a();
            this.f57414d = c16255c.m7542a();
            boolean m7542a = c16255c.m7542a();
            this.f57415e = m7542a;
            if (m7542a) {
                this.f57416f = c16255c.m7542a();
                this.f57417g = c16255c.m7542a();
                m7547a(i, c16255c);
            }
            while (c16255c.m7541a(4) != 0) {
                int m7541a = c16255c.m7541a(4);
                if (m7541a == 15) {
                    i2 = c16255c.m7541a(8);
                    m7541a += i2;
                } else {
                    i2 = 0;
                }
                int i3 = 0;
                int i4 = m7541a;
                if (i2 == 255) {
                    i4 = m7541a + c16255c.m7541a(16);
                    i3 = 0;
                }
                while (i3 < i4) {
                    c16255c.m7541a(8);
                    i3++;
                }
            }
        }

        /* renamed from: a */
        private void m7547a(int i, C16255c c16255c) {
            int i2;
            switch (i) {
                case 1:
                case 2:
                    i2 = 1;
                    break;
                case 3:
                    i2 = 2;
                    break;
                case 4:
                case 5:
                case 6:
                    i2 = 3;
                    break;
                case 7:
                    i2 = 4;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                new C16253b(c16255c);
            }
        }
    }

    /* renamed from: com.googlecode.mp4parser.b.b.a.a$b */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a$b.class */
    public final class C16253b {

        /* renamed from: a */
        public boolean f57419a;

        /* renamed from: b */
        public int f57420b;

        /* renamed from: c */
        public int f57421c;

        /* renamed from: d */
        public int f57422d;

        /* renamed from: e */
        public int f57423e;

        /* renamed from: f */
        public boolean f57424f;

        /* renamed from: g */
        public boolean f57425g;

        /* renamed from: h */
        public int f57426h;

        /* renamed from: i */
        public boolean f57427i;

        /* renamed from: j */
        public int f57428j;

        /* renamed from: k */
        public int f57429k;

        /* renamed from: l */
        public int f57430l;

        /* renamed from: m */
        public boolean f57431m;

        /* renamed from: n */
        public boolean f57432n;

        public C16253b(C16255c c16255c) {
            C16251a.this = r5;
            this.f57419a = c16255c.m7542a();
            this.f57420b = c16255c.m7541a(4);
            this.f57421c = c16255c.m7541a(4);
            this.f57422d = c16255c.m7541a(3);
            this.f57423e = c16255c.m7541a(2);
            this.f57424f = c16255c.m7542a();
            this.f57425g = c16255c.m7542a();
            if (this.f57424f) {
                this.f57426h = c16255c.m7541a(2);
                this.f57427i = c16255c.m7542a();
                this.f57428j = c16255c.m7541a(2);
            }
            if (this.f57425g) {
                this.f57429k = c16255c.m7541a(2);
                this.f57430l = c16255c.m7541a(2);
                this.f57431m = c16255c.m7542a();
            }
            this.f57432n = c16255c.m7542a();
        }
    }

    static {
        f57361a.put(0, 96000);
        f57361a.put(1, 88200);
        f57361a.put(2, 64000);
        f57361a.put(3, 48000);
        f57361a.put(4, 44100);
        f57361a.put(5, 32000);
        f57361a.put(6, 24000);
        f57361a.put(7, 22050);
        f57361a.put(8, Integer.valueOf((int) VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON));
        f57361a.put(9, 12000);
        f57361a.put(10, 11025);
        f57361a.put(11, 8000);
        f57362b.put(1, "AAC main");
        f57362b.put(2, "AAC LC");
        f57362b.put(3, "AAC SSR");
        f57362b.put(4, "AAC LTP");
        f57362b.put(5, "SBR");
        f57362b.put(6, "AAC Scalable");
        f57362b.put(7, "TwinVQ");
        f57362b.put(8, "CELP");
        f57362b.put(9, "HVXC");
        f57362b.put(10, "(reserved)");
        f57362b.put(11, "(reserved)");
        f57362b.put(12, "TTSI");
        f57362b.put(13, "Main synthetic");
        f57362b.put(14, "Wavetable synthesis");
        f57362b.put(15, "General MIDI");
        f57362b.put(16, "Algorithmic Synthesis and Audio FX");
        f57362b.put(17, "ER AAC LC");
        f57362b.put(18, "(reserved)");
        f57362b.put(19, "ER AAC LTP");
        f57362b.put(20, "ER AAC Scalable");
        f57362b.put(21, "ER TwinVQ");
        f57362b.put(22, "ER BSAC");
        f57362b.put(23, "ER AAC LD");
        f57362b.put(24, "ER CELP");
        f57362b.put(25, "ER HVXC");
        f57362b.put(26, "ER HILN");
        f57362b.put(27, "ER Parametric");
        f57362b.put(28, "SSC");
        f57362b.put(29, "PS");
        f57362b.put(30, "MPEG Surround");
        f57362b.put(31, "(escape)");
        f57362b.put(32, "Layer-1");
        f57362b.put(33, "Layer-2");
        f57362b.put(34, "Layer-3");
        f57362b.put(35, "DST");
        f57362b.put(36, "ALS");
        f57362b.put(37, "SLS");
        f57362b.put(38, "SLS non-core");
        f57362b.put(39, "ER AAC ELD");
        f57362b.put(40, "SMR Simple");
        f57362b.put(41, "SMR Main");
    }

    public C16251a() {
        this.f57435Y = 5;
    }

    /* renamed from: a */
    private static int m7549a(C16255c c16255c) throws IOException {
        int m7541a = c16255c.m7541a(5);
        int i = m7541a;
        if (m7541a == 31) {
            i = c16255c.m7541a(6) + 32;
        }
        return i;
    }

    /* renamed from: a */
    public static void m7550a(int i, C16256d c16256d) {
        if (i < 32) {
            c16256d.m7539a(i, 5);
            return;
        }
        c16256d.m7539a(31, 5);
        c16256d.m7539a(i - 32, 6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (r0 == 20) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
        if (r0 == 23) goto L26;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m7548c() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f57407w
            r1 = 1
            if (r0 != r1) goto Le
            r0 = 16
            r5 = r0
            goto L10
        Le:
            r0 = 2
            r5 = r0
        L10:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            int r0 = r0.f57392h
            if (r0 == 0) goto L88
            r0 = r4
            int r0 = r0.f57388d
            r7 = r0
            r0 = r7
            r1 = 6
            if (r0 == r1) goto L2e
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 20
            if (r0 != r1) goto L32
        L2e:
            r0 = r6
            r1 = 3
            int r0 = r0 + r1
            r5 = r0
        L32:
            r0 = r5
            r6 = r0
            r0 = r4
            int r0 = r0.f57409y
            r1 = 1
            if (r0 != r1) goto L86
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 22
            if (r0 != r1) goto L4b
            r0 = r5
            r1 = 5
            int r0 = r0 + r1
            r1 = 11
            int r0 = r0 + r1
            r6 = r0
        L4b:
            r0 = r7
            r1 = 17
            if (r0 == r1) goto L65
            r0 = r7
            r1 = 19
            if (r0 == r1) goto L65
            r0 = r7
            r1 = 20
            if (r0 == r1) goto L65
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 23
            if (r0 != r1) goto L6d
        L65:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 + r1
            r5 = r0
        L6d:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            int r0 = r0.f57368F
            r1 = 1
            if (r0 == r1) goto L7c
            goto L86
        L7c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "Not implemented"
            r1.<init>(r2)
            throw r0
        L86:
            r0 = r6
            return r0
        L88:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            java.lang.String r2 = "can't parse program_config_element yet"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.p420b.p422b.p423a.C16251a.m7548c():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (r0 == 29) goto L13;
     */
    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo7534a() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.p420b.p422b.p423a.C16251a.mo7534a():int");
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57386X = true;
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.f57436Z);
        byteBuffer.position(byteBuffer.position() + this.f57436Z);
        byte[] bArr = new byte[this.f57436Z];
        this.f57385W = bArr;
        slice.get(bArr);
        slice.rewind();
        C16255c c16255c = new C16255c(slice);
        int m7549a = m7549a(c16255c);
        this.f57388d = m7549a;
        this.f57389e = m7549a;
        int m7541a = c16255c.m7541a(4);
        this.f57390f = m7541a;
        if (m7541a == 15) {
            this.f57391g = c16255c.m7541a(24);
        }
        this.f57392h = c16255c.m7541a(4);
        int i = this.f57388d;
        if (i == 5 || i == 29) {
            this.f57393i = 5;
            this.f57394j = true;
            if (i == 29) {
                this.f57395k = true;
            }
            int m7541a2 = c16255c.m7541a(4);
            this.f57396l = m7541a2;
            if (m7541a2 == 15) {
                this.f57397m = c16255c.m7541a(24);
            }
            int m7549a2 = m7549a(c16255c);
            this.f57388d = m7549a2;
            if (m7549a2 == 22) {
                this.f57398n = c16255c.m7541a(4);
            }
        } else {
            this.f57393i = 0;
        }
        int i2 = this.f57388d;
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                int i3 = this.f57392h;
                this.f57406v = c16255c.m7541a(1);
                int m7541a3 = c16255c.m7541a(1);
                this.f57407w = m7541a3;
                if (m7541a3 == 1) {
                    this.f57408x = c16255c.m7541a(14);
                }
                this.f57409y = c16255c.m7541a(1);
                if (i3 == 0) {
                    throw new UnsupportedOperationException("can't parse program_config_element yet");
                }
                if (i2 == 6 || i2 == 20) {
                    this.f57410z = c16255c.m7541a(3);
                }
                if (this.f57409y == 1) {
                    if (i2 == 22) {
                        this.f57363A = c16255c.m7541a(5);
                        this.f57364B = c16255c.m7541a(11);
                    }
                    if (i2 == 17 || i2 == 19 || i2 == 20 || i2 == 23) {
                        this.f57365C = c16255c.m7542a();
                        this.f57366D = c16255c.m7542a();
                        this.f57367E = c16255c.m7542a();
                    }
                    int m7541a4 = c16255c.m7541a(1);
                    this.f57368F = m7541a4;
                    if (m7541a4 == 1) {
                        throw new RuntimeException("not yet implemented");
                    }
                }
                this.f57369G = true;
                break;
                break;
            case 8:
                throw new UnsupportedOperationException("can't parse CelpSpecificConfig yet");
            case 9:
                throw new UnsupportedOperationException("can't parse HvxcSpecificConfig yet");
            case 12:
                throw new UnsupportedOperationException("can't parse TTSSpecificConfig yet");
            case 13:
            case 14:
            case 15:
            case 16:
                throw new UnsupportedOperationException("can't parse StructuredAudioSpecificConfig yet");
            case 24:
                throw new UnsupportedOperationException("can't parse ErrorResilientCelpSpecificConfig yet");
            case 25:
                throw new UnsupportedOperationException("can't parse ErrorResilientHvxcSpecificConfig yet");
            case 26:
            case 27:
                int m7541a5 = c16255c.m7541a(1);
                this.f57370H = m7541a5;
                if (m7541a5 != 1) {
                    int m7541a6 = c16255c.m7541a(1);
                    this.f57382T = m7541a6;
                    if (m7541a6 == 1) {
                        this.f57383U = c16255c.m7541a(2);
                        break;
                    }
                } else {
                    int m7541a7 = c16255c.m7541a(2);
                    this.f57371I = m7541a7;
                    if (m7541a7 != 1) {
                        this.f57373K = c16255c.m7541a(1);
                        this.f57374L = c16255c.m7541a(2);
                        int m7541a8 = c16255c.m7541a(1);
                        this.f57375M = m7541a8;
                        if (m7541a8 == 1) {
                            this.f57376N = c16255c.m7541a(1);
                        }
                    }
                    if (this.f57371I != 0) {
                        this.f57377O = c16255c.m7541a(1);
                        this.f57378P = c16255c.m7541a(8);
                        this.f57379Q = c16255c.m7541a(4);
                        this.f57380R = c16255c.m7541a(12);
                        this.f57381S = c16255c.m7541a(2);
                    }
                    this.f57372J = c16255c.m7541a(1);
                    this.f57384V = true;
                    break;
                }
                break;
            case 28:
                throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
            case 30:
                this.f57399o = c16255c.m7541a(1);
                throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
            case 32:
            case 33:
            case 34:
                throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
            case 35:
                throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
            case 36:
                this.f57400p = c16255c.m7541a(5);
                throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
            case 37:
            case 38:
                throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
            case 39:
                this.f57387c = new C16252a(this.f57392h, c16255c);
                break;
            case 40:
            case 41:
                throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
        }
        int i4 = this.f57388d;
        if (i4 != 17 && i4 != 39) {
            switch (i4) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    if (this.f57393i == 5 || c16255c.m7540b() < 16) {
                    }
                    int m7541a9 = c16255c.m7541a(11);
                    this.f57403s = m7541a9;
                    this.f57405u = m7541a9;
                    if (m7541a9 != 695) {
                        return;
                    }
                    int m7549a3 = m7549a(c16255c);
                    this.f57393i = m7549a3;
                    if (m7549a3 == 5) {
                        boolean m7542a = c16255c.m7542a();
                        this.f57394j = m7542a;
                        if (m7542a) {
                            int m7541a10 = c16255c.m7541a(4);
                            this.f57396l = m7541a10;
                            if (m7541a10 == 15) {
                                this.f57397m = c16255c.m7541a(24);
                            }
                            if (c16255c.m7540b() >= 12) {
                                int m7541a11 = c16255c.m7541a(11);
                                this.f57403s = m7541a11;
                                this.f57404t = m7541a11;
                                if (m7541a11 == 1352) {
                                    this.f57395k = c16255c.m7542a();
                                }
                            }
                        }
                    }
                    if (this.f57393i != 22) {
                        return;
                    }
                    boolean m7542a2 = c16255c.m7542a();
                    this.f57394j = m7542a2;
                    if (m7542a2) {
                        int m7541a12 = c16255c.m7541a(4);
                        this.f57396l = m7541a12;
                        if (m7541a12 == 15) {
                            this.f57397m = c16255c.m7541a(24);
                        }
                    }
                    this.f57398n = c16255c.m7541a(4);
                    return;
            }
        }
        int m7541a13 = c16255c.m7541a(2);
        this.f57401q = m7541a13;
        if (m7541a13 == 2 || m7541a13 == 3) {
            throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
        }
        if (m7541a13 == 3) {
            int m7541a14 = c16255c.m7541a(1);
            this.f57402r = m7541a14;
            if (m7541a14 == 0) {
                throw new RuntimeException("not implemented");
            }
        }
        if (this.f57393i == 5) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16251a c16251a = (C16251a) obj;
        return this.f57366D == c16251a.f57366D && this.f57365C == c16251a.f57365C && this.f57367E == c16251a.f57367E && this.f57388d == c16251a.f57388d && this.f57392h == c16251a.f57392h && this.f57408x == c16251a.f57408x && this.f57407w == c16251a.f57407w && this.f57402r == c16251a.f57402r && this.f57401q == c16251a.f57401q && this.f57375M == c16251a.f57375M && this.f57393i == c16251a.f57393i && this.f57398n == c16251a.f57398n && this.f57409y == c16251a.f57409y && this.f57368F == c16251a.f57368F && this.f57397m == c16251a.f57397m && this.f57396l == c16251a.f57396l && this.f57400p == c16251a.f57400p && this.f57406v == c16251a.f57406v && this.f57369G == c16251a.f57369G && this.f57381S == c16251a.f57381S && this.f57382T == c16251a.f57382T && this.f57383U == c16251a.f57383U && this.f57380R == c16251a.f57380R && this.f57378P == c16251a.f57378P && this.f57377O == c16251a.f57377O && this.f57379Q == c16251a.f57379Q && this.f57374L == c16251a.f57374L && this.f57373K == c16251a.f57373K && this.f57370H == c16251a.f57370H && this.f57410z == c16251a.f57410z && this.f57364B == c16251a.f57364B && this.f57363A == c16251a.f57363A && this.f57372J == c16251a.f57372J && this.f57371I == c16251a.f57371I && this.f57384V == c16251a.f57384V && this.f57395k == c16251a.f57395k && this.f57399o == c16251a.f57399o && this.f57391g == c16251a.f57391g && this.f57390f == c16251a.f57390f && this.f57394j == c16251a.f57394j && this.f57403s == c16251a.f57403s && this.f57376N == c16251a.f57376N && Arrays.equals(this.f57385W, c16251a.f57385W);
    }

    public int hashCode() {
        byte[] bArr = this.f57385W;
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((bArr != null ? Arrays.hashCode(bArr) : 0) * 31) + this.f57388d) * 31) + this.f57390f) * 31) + this.f57391g) * 31) + this.f57392h) * 31) + this.f57393i) * 31) + (this.f57394j ? 1 : 0)) * 31) + (this.f57395k ? 1 : 0)) * 31) + this.f57396l) * 31) + this.f57397m) * 31) + this.f57398n) * 31) + this.f57399o) * 31) + this.f57400p) * 31) + this.f57401q) * 31) + this.f57402r) * 31) + this.f57403s) * 31) + this.f57406v) * 31) + this.f57407w) * 31) + this.f57408x) * 31) + this.f57409y) * 31) + this.f57410z) * 31) + this.f57363A) * 31) + this.f57364B) * 31) + (this.f57365C ? 1 : 0)) * 31) + (this.f57366D ? 1 : 0)) * 31) + (this.f57367E ? 1 : 0)) * 31) + this.f57368F) * 31) + (this.f57369G ? 1 : 0)) * 31) + this.f57370H) * 31) + this.f57371I) * 31) + this.f57372J) * 31) + this.f57373K) * 31) + this.f57374L) * 31) + this.f57375M) * 31) + this.f57376N) * 31) + this.f57377O) * 31) + this.f57378P) * 31) + this.f57379Q) * 31) + this.f57380R) * 31) + this.f57381S) * 31) + this.f57382T) * 31) + this.f57383U) * 31) + (this.f57384V ? 1 : 0);
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AudioSpecificConfig");
        sb.append("{configBytes=");
        sb.append(C3513c.m37856a(this.f57385W));
        sb.append(", audioObjectType=");
        sb.append(this.f57388d);
        sb.append(" (");
        sb.append(f57362b.get(Integer.valueOf(this.f57388d)));
        sb.append(")");
        sb.append(", samplingFrequencyIndex=");
        sb.append(this.f57390f);
        sb.append(" (");
        sb.append(f57361a.get(Integer.valueOf(this.f57390f)));
        sb.append(")");
        sb.append(", samplingFrequency=");
        sb.append(this.f57391g);
        sb.append(", channelConfiguration=");
        sb.append(this.f57392h);
        if (this.f57393i > 0) {
            sb.append(", extensionAudioObjectType=");
            sb.append(this.f57393i);
            sb.append(" (");
            sb.append(f57362b.get(Integer.valueOf(this.f57393i)));
            sb.append(")");
            sb.append(", sbrPresentFlag=");
            sb.append(this.f57394j);
            sb.append(", psPresentFlag=");
            sb.append(this.f57395k);
            sb.append(", extensionSamplingFrequencyIndex=");
            sb.append(this.f57396l);
            sb.append(" (");
            sb.append(f57361a.get(Integer.valueOf(this.f57396l)));
            sb.append(")");
            sb.append(", extensionSamplingFrequency=");
            sb.append(this.f57397m);
            sb.append(", extensionChannelConfiguration=");
            sb.append(this.f57398n);
        }
        sb.append(", syncExtensionType=");
        sb.append(this.f57403s);
        if (this.f57369G) {
            sb.append(", frameLengthFlag=");
            sb.append(this.f57406v);
            sb.append(", dependsOnCoreCoder=");
            sb.append(this.f57407w);
            sb.append(", coreCoderDelay=");
            sb.append(this.f57408x);
            sb.append(", extensionFlag=");
            sb.append(this.f57409y);
            sb.append(", layerNr=");
            sb.append(this.f57410z);
            sb.append(", numOfSubFrame=");
            sb.append(this.f57363A);
            sb.append(", layer_length=");
            sb.append(this.f57364B);
            sb.append(", aacSectionDataResilienceFlag=");
            sb.append(this.f57365C);
            sb.append(", aacScalefactorDataResilienceFlag=");
            sb.append(this.f57366D);
            sb.append(", aacSpectralDataResilienceFlag=");
            sb.append(this.f57367E);
            sb.append(", extensionFlag3=");
            sb.append(this.f57368F);
        }
        if (this.f57384V) {
            sb.append(", isBaseLayer=");
            sb.append(this.f57370H);
            sb.append(", paraMode=");
            sb.append(this.f57371I);
            sb.append(", paraExtensionFlag=");
            sb.append(this.f57372J);
            sb.append(", hvxcVarMode=");
            sb.append(this.f57373K);
            sb.append(", hvxcRateMode=");
            sb.append(this.f57374L);
            sb.append(", erHvxcExtensionFlag=");
            sb.append(this.f57375M);
            sb.append(", var_ScalableFlag=");
            sb.append(this.f57376N);
            sb.append(", hilnQuantMode=");
            sb.append(this.f57377O);
            sb.append(", hilnMaxNumLine=");
            sb.append(this.f57378P);
            sb.append(", hilnSampleRateCode=");
            sb.append(this.f57379Q);
            sb.append(", hilnFrameLength=");
            sb.append(this.f57380R);
            sb.append(", hilnContMode=");
            sb.append(this.f57381S);
            sb.append(", hilnEnhaLayer=");
            sb.append(this.f57382T);
            sb.append(", hilnEnhaQuantMode=");
            sb.append(this.f57383U);
        }
        sb.append('}');
        return sb.toString();
    }
}
