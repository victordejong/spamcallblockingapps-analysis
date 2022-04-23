package com.googlecode.mp4parser.b.b.a;

import com.b.a.c;
import com.mopub.mobileads.VastVideoViewController;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
@g(a = {5}, b = 64)
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a.class */
public class a extends com.googlecode.mp4parser.b.b.a.b {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Integer, Integer> f33097a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static Map<Integer, String> f33098b = new HashMap();
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    byte[] W;

    /* renamed from: c  reason: collision with root package name */
    public C0529a f33099c;

    /* renamed from: d  reason: collision with root package name */
    public int f33100d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;
    public int l = -1;
    public int s = -1;
    public int t = -1;
    public int u = -1;
    boolean X = false;

    /* renamed from: com.googlecode.mp4parser.b.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a$a.class */
    public final class C0529a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f33101a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f33102b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f33103c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f33104d;
        public boolean e;
        public boolean f;
        public boolean g;

        public C0529a(int i, c cVar) {
            int i2;
            this.f33101a = cVar.a();
            this.f33102b = cVar.a();
            this.f33103c = cVar.a();
            this.f33104d = cVar.a();
            boolean a2 = cVar.a();
            this.e = a2;
            if (a2) {
                this.f = cVar.a();
                this.g = cVar.a();
                a(i, cVar);
            }
            while (cVar.a(4) != 0) {
                int a3 = cVar.a(4);
                if (a3 == 15) {
                    i2 = cVar.a(8);
                    a3 += i2;
                } else {
                    i2 = 0;
                }
                int i3 = 0;
                int i4 = a3;
                if (i2 == 255) {
                    i4 = a3 + cVar.a(16);
                    i3 = 0;
                }
                while (i3 < i4) {
                    cVar.a(8);
                    i3++;
                }
            }
        }

        private void a(int i, c cVar) {
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
                new b(cVar);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/a$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f33105a;

        /* renamed from: b  reason: collision with root package name */
        public int f33106b;

        /* renamed from: c  reason: collision with root package name */
        public int f33107c;

        /* renamed from: d  reason: collision with root package name */
        public int f33108d;
        public int e;
        public boolean f;
        public boolean g;
        public int h;
        public boolean i;
        public int j;
        public int k;
        public int l;
        public boolean m;
        public boolean n;

        public b(c cVar) {
            this.f33105a = cVar.a();
            this.f33106b = cVar.a(4);
            this.f33107c = cVar.a(4);
            this.f33108d = cVar.a(3);
            this.e = cVar.a(2);
            this.f = cVar.a();
            this.g = cVar.a();
            if (this.f) {
                this.h = cVar.a(2);
                this.i = cVar.a();
                this.j = cVar.a(2);
            }
            if (this.g) {
                this.k = cVar.a(2);
                this.l = cVar.a(2);
                this.m = cVar.a();
            }
            this.n = cVar.a();
        }
    }

    static {
        f33097a.put(0, 96000);
        f33097a.put(1, 88200);
        f33097a.put(2, 64000);
        f33097a.put(3, 48000);
        f33097a.put(4, 44100);
        f33097a.put(5, 32000);
        f33097a.put(6, 24000);
        f33097a.put(7, 22050);
        f33097a.put(8, Integer.valueOf((int) VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON));
        f33097a.put(9, 12000);
        f33097a.put(10, 11025);
        f33097a.put(11, 8000);
        f33098b.put(1, "AAC main");
        f33098b.put(2, "AAC LC");
        f33098b.put(3, "AAC SSR");
        f33098b.put(4, "AAC LTP");
        f33098b.put(5, "SBR");
        f33098b.put(6, "AAC Scalable");
        f33098b.put(7, "TwinVQ");
        f33098b.put(8, "CELP");
        f33098b.put(9, "HVXC");
        f33098b.put(10, "(reserved)");
        f33098b.put(11, "(reserved)");
        f33098b.put(12, "TTSI");
        f33098b.put(13, "Main synthetic");
        f33098b.put(14, "Wavetable synthesis");
        f33098b.put(15, "General MIDI");
        f33098b.put(16, "Algorithmic Synthesis and Audio FX");
        f33098b.put(17, "ER AAC LC");
        f33098b.put(18, "(reserved)");
        f33098b.put(19, "ER AAC LTP");
        f33098b.put(20, "ER AAC Scalable");
        f33098b.put(21, "ER TwinVQ");
        f33098b.put(22, "ER BSAC");
        f33098b.put(23, "ER AAC LD");
        f33098b.put(24, "ER CELP");
        f33098b.put(25, "ER HVXC");
        f33098b.put(26, "ER HILN");
        f33098b.put(27, "ER Parametric");
        f33098b.put(28, "SSC");
        f33098b.put(29, "PS");
        f33098b.put(30, "MPEG Surround");
        f33098b.put(31, "(escape)");
        f33098b.put(32, "Layer-1");
        f33098b.put(33, "Layer-2");
        f33098b.put(34, "Layer-3");
        f33098b.put(35, "DST");
        f33098b.put(36, "ALS");
        f33098b.put(37, "SLS");
        f33098b.put(38, "SLS non-core");
        f33098b.put(39, "ER AAC ELD");
        f33098b.put(40, "SMR Simple");
        f33098b.put(41, "SMR Main");
    }

    public a() {
        this.Y = 5;
    }

    private static int a(c cVar) throws IOException {
        int a2 = cVar.a(5);
        int i = a2;
        if (a2 == 31) {
            i = cVar.a(6) + 32;
        }
        return i;
    }

    public static void a(int i, d dVar) {
        if (i >= 32) {
            dVar.a(31, 5);
            dVar.a(i - 32, 6);
            return;
        }
        dVar.a(i, 5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (r0 == 20) goto L_0x002e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
        if (r0 == 23) goto L_0x0065;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int c() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.w
            r1 = 1
            if (r0 != r1) goto L_0x000e
            r0 = 16
            r5 = r0
            goto L_0x0010
        L_0x000e:
            r0 = 2
            r5 = r0
        L_0x0010:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            int r0 = r0.h
            if (r0 == 0) goto L_0x0088
            r0 = r4
            int r0 = r0.f33100d
            r7 = r0
            r0 = r7
            r1 = 6
            if (r0 == r1) goto L_0x002e
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 20
            if (r0 != r1) goto L_0x0032
        L_0x002e:
            r0 = r6
            r1 = 3
            int r0 = r0 + r1
            r5 = r0
        L_0x0032:
            r0 = r5
            r6 = r0
            r0 = r4
            int r0 = r0.y
            r1 = 1
            if (r0 != r1) goto L_0x0086
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 22
            if (r0 != r1) goto L_0x004b
            r0 = r5
            r1 = 5
            int r0 = r0 + r1
            r1 = 11
            int r0 = r0 + r1
            r6 = r0
        L_0x004b:
            r0 = r7
            r1 = 17
            if (r0 == r1) goto L_0x0065
            r0 = r7
            r1 = 19
            if (r0 == r1) goto L_0x0065
            r0 = r7
            r1 = 20
            if (r0 == r1) goto L_0x0065
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 23
            if (r0 != r1) goto L_0x006d
        L_0x0065:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 + r1
            r5 = r0
        L_0x006d:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            int r0 = r0.F
            r1 = 1
            if (r0 == r1) goto L_0x007c
            goto L_0x0086
        L_0x007c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "Not implemented"
            r1.<init>(r2)
            throw r0
        L_0x0086:
            r0 = r6
            return r0
        L_0x0088:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            java.lang.String r2 = "can't parse program_config_element yet"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.b.b.a.a.c():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (r0 == 29) goto L_0x003b;
     */
    @Override // com.googlecode.mp4parser.b.b.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.b.b.a.a.a():int");
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        this.X = true;
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.Z);
        byteBuffer.position(byteBuffer.position() + this.Z);
        byte[] bArr = new byte[this.Z];
        this.W = bArr;
        slice.get(bArr);
        slice.rewind();
        c cVar = new c(slice);
        int a2 = a(cVar);
        this.f33100d = a2;
        this.e = a2;
        int a3 = cVar.a(4);
        this.f = a3;
        if (a3 == 15) {
            this.g = cVar.a(24);
        }
        this.h = cVar.a(4);
        int i = this.f33100d;
        if (i == 5 || i == 29) {
            this.i = 5;
            this.j = true;
            if (i == 29) {
                this.k = true;
            }
            int a4 = cVar.a(4);
            this.l = a4;
            if (a4 == 15) {
                this.m = cVar.a(24);
            }
            int a5 = a(cVar);
            this.f33100d = a5;
            if (a5 == 22) {
                this.n = cVar.a(4);
            }
        } else {
            this.i = 0;
        }
        int i2 = this.f33100d;
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
                int i3 = this.h;
                this.v = cVar.a(1);
                int a6 = cVar.a(1);
                this.w = a6;
                if (a6 == 1) {
                    this.x = cVar.a(14);
                }
                this.y = cVar.a(1);
                if (i3 != 0) {
                    if (i2 == 6 || i2 == 20) {
                        this.z = cVar.a(3);
                    }
                    if (this.y == 1) {
                        if (i2 == 22) {
                            this.A = cVar.a(5);
                            this.B = cVar.a(11);
                        }
                        if (i2 == 17 || i2 == 19 || i2 == 20 || i2 == 23) {
                            this.C = cVar.a();
                            this.D = cVar.a();
                            this.E = cVar.a();
                        }
                        int a7 = cVar.a(1);
                        this.F = a7;
                        if (a7 == 1) {
                            throw new RuntimeException("not yet implemented");
                        }
                    }
                    this.G = true;
                    break;
                } else {
                    throw new UnsupportedOperationException("can't parse program_config_element yet");
                }
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
                int a8 = cVar.a(1);
                this.H = a8;
                if (a8 != 1) {
                    int a9 = cVar.a(1);
                    this.T = a9;
                    if (a9 == 1) {
                        this.U = cVar.a(2);
                        break;
                    }
                } else {
                    int a10 = cVar.a(2);
                    this.I = a10;
                    if (a10 != 1) {
                        this.K = cVar.a(1);
                        this.L = cVar.a(2);
                        int a11 = cVar.a(1);
                        this.M = a11;
                        if (a11 == 1) {
                            this.N = cVar.a(1);
                        }
                    }
                    if (this.I != 0) {
                        this.O = cVar.a(1);
                        this.P = cVar.a(8);
                        this.Q = cVar.a(4);
                        this.R = cVar.a(12);
                        this.S = cVar.a(2);
                    }
                    this.J = cVar.a(1);
                    this.V = true;
                    break;
                }
                break;
            case 28:
                throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
            case 30:
                this.o = cVar.a(1);
                throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
            case 32:
            case 33:
            case 34:
                throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
            case 35:
                throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
            case 36:
                this.p = cVar.a(5);
                throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
            case 37:
            case 38:
                throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
            case 39:
                this.f33099c = new C0529a(this.h, cVar);
                break;
            case 40:
            case 41:
                throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
        }
        int i4 = this.f33100d;
        if (!(i4 == 17 || i4 == 39)) {
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
                    if (this.i != 5 && cVar.b() >= 16) {
                        int a12 = cVar.a(11);
                        this.s = a12;
                        this.u = a12;
                        if (a12 == 695) {
                            int a13 = a(cVar);
                            this.i = a13;
                            if (a13 == 5) {
                                boolean a14 = cVar.a();
                                this.j = a14;
                                if (a14) {
                                    int a15 = cVar.a(4);
                                    this.l = a15;
                                    if (a15 == 15) {
                                        this.m = cVar.a(24);
                                    }
                                    if (cVar.b() >= 12) {
                                        int a16 = cVar.a(11);
                                        this.s = a16;
                                        this.t = a16;
                                        if (a16 == 1352) {
                                            this.k = cVar.a();
                                        }
                                    }
                                }
                            }
                            if (this.i == 22) {
                                boolean a17 = cVar.a();
                                this.j = a17;
                                if (a17) {
                                    int a18 = cVar.a(4);
                                    this.l = a18;
                                    if (a18 == 15) {
                                        this.m = cVar.a(24);
                                    }
                                }
                                this.n = cVar.a(4);
                                return;
                            }
                            return;
                        }
                        return;
                    }
            }
        }
        int a19 = cVar.a(2);
        this.q = a19;
        if (a19 == 2 || a19 == 3) {
            throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
        }
        if (a19 == 3) {
            int a20 = cVar.a(1);
            this.r = a20;
            if (a20 == 0) {
                throw new RuntimeException("not implemented");
            }
        }
        if (this.i != 5) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.D == aVar.D && this.C == aVar.C && this.E == aVar.E && this.f33100d == aVar.f33100d && this.h == aVar.h && this.x == aVar.x && this.w == aVar.w && this.r == aVar.r && this.q == aVar.q && this.M == aVar.M && this.i == aVar.i && this.n == aVar.n && this.y == aVar.y && this.F == aVar.F && this.m == aVar.m && this.l == aVar.l && this.p == aVar.p && this.v == aVar.v && this.G == aVar.G && this.S == aVar.S && this.T == aVar.T && this.U == aVar.U && this.R == aVar.R && this.P == aVar.P && this.O == aVar.O && this.Q == aVar.Q && this.L == aVar.L && this.K == aVar.K && this.H == aVar.H && this.z == aVar.z && this.B == aVar.B && this.A == aVar.A && this.J == aVar.J && this.I == aVar.I && this.V == aVar.V && this.k == aVar.k && this.o == aVar.o && this.g == aVar.g && this.f == aVar.f && this.j == aVar.j && this.s == aVar.s && this.N == aVar.N && Arrays.equals(this.W, aVar.W);
    }

    public int hashCode() {
        byte[] bArr = this.W;
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((bArr != null ? Arrays.hashCode(bArr) : 0) * 31) + this.f33100d) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + (this.j ? 1 : 0)) * 31) + (this.k ? 1 : 0)) * 31) + this.l) * 31) + this.m) * 31) + this.n) * 31) + this.o) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31) + this.s) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31) + this.z) * 31) + this.A) * 31) + this.B) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + this.F) * 31) + (this.G ? 1 : 0)) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.M) * 31) + this.N) * 31) + this.O) * 31) + this.P) * 31) + this.Q) * 31) + this.R) * 31) + this.S) * 31) + this.T) * 31) + this.U) * 31) + (this.V ? 1 : 0);
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AudioSpecificConfig");
        sb.append("{configBytes=");
        sb.append(c.a(this.W));
        sb.append(", audioObjectType=");
        sb.append(this.f33100d);
        sb.append(" (");
        sb.append(f33098b.get(Integer.valueOf(this.f33100d)));
        sb.append(")");
        sb.append(", samplingFrequencyIndex=");
        sb.append(this.f);
        sb.append(" (");
        sb.append(f33097a.get(Integer.valueOf(this.f)));
        sb.append(")");
        sb.append(", samplingFrequency=");
        sb.append(this.g);
        sb.append(", channelConfiguration=");
        sb.append(this.h);
        if (this.i > 0) {
            sb.append(", extensionAudioObjectType=");
            sb.append(this.i);
            sb.append(" (");
            sb.append(f33098b.get(Integer.valueOf(this.i)));
            sb.append(")");
            sb.append(", sbrPresentFlag=");
            sb.append(this.j);
            sb.append(", psPresentFlag=");
            sb.append(this.k);
            sb.append(", extensionSamplingFrequencyIndex=");
            sb.append(this.l);
            sb.append(" (");
            sb.append(f33097a.get(Integer.valueOf(this.l)));
            sb.append(")");
            sb.append(", extensionSamplingFrequency=");
            sb.append(this.m);
            sb.append(", extensionChannelConfiguration=");
            sb.append(this.n);
        }
        sb.append(", syncExtensionType=");
        sb.append(this.s);
        if (this.G) {
            sb.append(", frameLengthFlag=");
            sb.append(this.v);
            sb.append(", dependsOnCoreCoder=");
            sb.append(this.w);
            sb.append(", coreCoderDelay=");
            sb.append(this.x);
            sb.append(", extensionFlag=");
            sb.append(this.y);
            sb.append(", layerNr=");
            sb.append(this.z);
            sb.append(", numOfSubFrame=");
            sb.append(this.A);
            sb.append(", layer_length=");
            sb.append(this.B);
            sb.append(", aacSectionDataResilienceFlag=");
            sb.append(this.C);
            sb.append(", aacScalefactorDataResilienceFlag=");
            sb.append(this.D);
            sb.append(", aacSpectralDataResilienceFlag=");
            sb.append(this.E);
            sb.append(", extensionFlag3=");
            sb.append(this.F);
        }
        if (this.V) {
            sb.append(", isBaseLayer=");
            sb.append(this.H);
            sb.append(", paraMode=");
            sb.append(this.I);
            sb.append(", paraExtensionFlag=");
            sb.append(this.J);
            sb.append(", hvxcVarMode=");
            sb.append(this.K);
            sb.append(", hvxcRateMode=");
            sb.append(this.L);
            sb.append(", erHvxcExtensionFlag=");
            sb.append(this.M);
            sb.append(", var_ScalableFlag=");
            sb.append(this.N);
            sb.append(", hilnQuantMode=");
            sb.append(this.O);
            sb.append(", hilnMaxNumLine=");
            sb.append(this.P);
            sb.append(", hilnSampleRateCode=");
            sb.append(this.Q);
            sb.append(", hilnFrameLength=");
            sb.append(this.R);
            sb.append(", hilnContMode=");
            sb.append(this.S);
            sb.append(", hilnEnhaLayer=");
            sb.append(this.T);
            sb.append(", hilnEnhaQuantMode=");
            sb.append(this.U);
        }
        sb.append('}');
        return sb.toString();
    }
}
