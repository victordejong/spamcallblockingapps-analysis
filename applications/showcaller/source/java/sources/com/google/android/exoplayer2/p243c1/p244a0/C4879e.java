package com.google.android.exoplayer2.p243c1.p244a0;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C4819g;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4896c;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5527p;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import com.google.android.exoplayer2.video.C5558h;
import com.google.android.exoplayer2.video.C5560j;
import com.google.android.exoplayer2.video.ColorInfo;
import com.zhy.http.okhttp.OkHttpUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.c1.a0.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/e.class */
public class C4879e implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f14866a = C4873a.f14856a;

    /* renamed from: b */
    private static final byte[] f14867b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c */
    private static final byte[] f14868c = C5515h0.m18854R("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: d */
    private static final byte[] f14869d = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: e */
    private static final UUID f14870e = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    private boolean f14871A;

    /* renamed from: B */
    private int f14872B;

    /* renamed from: C */
    private long f14873C;

    /* renamed from: D */
    private boolean f14874D;

    /* renamed from: E */
    private long f14875E;

    /* renamed from: F */
    private long f14876F;

    /* renamed from: G */
    private long f14877G;

    /* renamed from: H */
    private C5527p f14878H;

    /* renamed from: I */
    private C5527p f14879I;

    /* renamed from: J */
    private boolean f14880J;

    /* renamed from: K */
    private boolean f14881K;

    /* renamed from: L */
    private int f14882L;

    /* renamed from: M */
    private long f14883M;

    /* renamed from: N */
    private long f14884N;

    /* renamed from: O */
    private int f14885O;

    /* renamed from: P */
    private int f14886P;

    /* renamed from: Q */
    private int[] f14887Q;

    /* renamed from: R */
    private int f14888R;

    /* renamed from: S */
    private int f14889S;

    /* renamed from: T */
    private int f14890T;

    /* renamed from: U */
    private int f14891U;

    /* renamed from: V */
    private boolean f14892V;

    /* renamed from: W */
    private int f14893W;

    /* renamed from: X */
    private int f14894X;

    /* renamed from: Y */
    private int f14895Y;

    /* renamed from: Z */
    private boolean f14896Z;

    /* renamed from: a0 */
    private boolean f14897a0;

    /* renamed from: b0 */
    private boolean f14898b0;

    /* renamed from: c0 */
    private int f14899c0;

    /* renamed from: d0 */
    private byte f14900d0;

    /* renamed from: e0 */
    private boolean f14901e0;

    /* renamed from: f */
    private final AbstractC4878d f14902f;

    /* renamed from: f0 */
    private AbstractC4980j f14903f0;

    /* renamed from: g */
    private final C4885g f14904g;

    /* renamed from: h */
    private final SparseArray<C4882c> f14905h;

    /* renamed from: i */
    private final boolean f14906i;

    /* renamed from: j */
    private final C5536v f14907j;

    /* renamed from: k */
    private final C5536v f14908k;

    /* renamed from: l */
    private final C5536v f14909l;

    /* renamed from: m */
    private final C5536v f14910m;

    /* renamed from: n */
    private final C5536v f14911n;

    /* renamed from: o */
    private final C5536v f14912o;

    /* renamed from: p */
    private final C5536v f14913p;

    /* renamed from: q */
    private final C5536v f14914q;

    /* renamed from: r */
    private final C5536v f14915r;

    /* renamed from: s */
    private final C5536v f14916s;

    /* renamed from: t */
    private ByteBuffer f14917t;

    /* renamed from: u */
    private long f14918u;

    /* renamed from: v */
    private long f14919v;

    /* renamed from: w */
    private long f14920w;

    /* renamed from: x */
    private long f14921x;

    /* renamed from: y */
    private long f14922y;

    /* renamed from: z */
    private C4882c f14923z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.a0.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/e$b.class */
    public final class C4881b implements AbstractC4877c {
        private C4881b() {
            C4879e.this = r4;
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: a */
        public void mo21298a(int i) {
            C4879e.this.m21314k(i);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: b */
        public int mo21297b(int i) {
            return C4879e.this.m21309p(i);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: c */
        public boolean mo21296c(int i) {
            return C4879e.this.m21305t(i);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: d */
        public void mo21295d(int i, int i2, AbstractC4979i abstractC4979i) {
            C4879e.this.m21317e(i, i2, abstractC4979i);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: e */
        public void mo21294e(int i, String str) {
            C4879e.this.m21324B(i, str);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: f */
        public void mo21293f(int i, double d) {
            C4879e.this.m21311n(i, d);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: g */
        public void mo21292g(int i, long j, long j2) {
            C4879e.this.m21325A(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4877c
        /* renamed from: h */
        public void mo21291h(int i, long j) {
            C4879e.this.m21307r(i, j);
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a0.e$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/e$c.class */
    public static final class C4882c {

        /* renamed from: A */
        public int f14925A;

        /* renamed from: B */
        public int f14926B;

        /* renamed from: C */
        public float f14927C;

        /* renamed from: D */
        public float f14928D;

        /* renamed from: E */
        public float f14929E;

        /* renamed from: F */
        public float f14930F;

        /* renamed from: G */
        public float f14931G;

        /* renamed from: H */
        public float f14932H;

        /* renamed from: I */
        public float f14933I;

        /* renamed from: J */
        public float f14934J;

        /* renamed from: K */
        public float f14935K;

        /* renamed from: L */
        public float f14936L;

        /* renamed from: M */
        public int f14937M;

        /* renamed from: N */
        public int f14938N;

        /* renamed from: O */
        public int f14939O;

        /* renamed from: P */
        public long f14940P;

        /* renamed from: Q */
        public long f14941Q;

        /* renamed from: R */
        public C4883d f14942R;

        /* renamed from: S */
        public boolean f14943S;

        /* renamed from: T */
        public boolean f14944T;

        /* renamed from: U */
        private String f14945U;

        /* renamed from: V */
        public AbstractC4996v f14946V;

        /* renamed from: W */
        public int f14947W;

        /* renamed from: a */
        public String f14948a;

        /* renamed from: b */
        public String f14949b;

        /* renamed from: c */
        public int f14950c;

        /* renamed from: d */
        public int f14951d;

        /* renamed from: e */
        public int f14952e;

        /* renamed from: f */
        public int f14953f;

        /* renamed from: g */
        public boolean f14954g;

        /* renamed from: h */
        public byte[] f14955h;

        /* renamed from: i */
        public AbstractC4996v.C4997a f14956i;

        /* renamed from: j */
        public byte[] f14957j;

        /* renamed from: k */
        public DrmInitData f14958k;

        /* renamed from: l */
        public int f14959l;

        /* renamed from: m */
        public int f14960m;

        /* renamed from: n */
        public int f14961n;

        /* renamed from: o */
        public int f14962o;

        /* renamed from: p */
        public int f14963p;

        /* renamed from: q */
        public int f14964q;

        /* renamed from: r */
        public float f14965r;

        /* renamed from: s */
        public float f14966s;

        /* renamed from: t */
        public float f14967t;

        /* renamed from: u */
        public byte[] f14968u;

        /* renamed from: v */
        public int f14969v;

        /* renamed from: w */
        public boolean f14970w;

        /* renamed from: x */
        public int f14971x;

        /* renamed from: y */
        public int f14972y;

        /* renamed from: z */
        public int f14973z;

        private C4882c() {
            this.f14959l = -1;
            this.f14960m = -1;
            this.f14961n = -1;
            this.f14962o = -1;
            this.f14963p = 0;
            this.f14964q = -1;
            this.f14965r = 0.0f;
            this.f14966s = 0.0f;
            this.f14967t = 0.0f;
            this.f14968u = null;
            this.f14969v = -1;
            this.f14970w = false;
            this.f14971x = -1;
            this.f14972y = -1;
            this.f14973z = -1;
            this.f14925A = 1000;
            this.f14926B = 200;
            this.f14927C = -1.0f;
            this.f14928D = -1.0f;
            this.f14929E = -1.0f;
            this.f14930F = -1.0f;
            this.f14931G = -1.0f;
            this.f14932H = -1.0f;
            this.f14933I = -1.0f;
            this.f14934J = -1.0f;
            this.f14935K = -1.0f;
            this.f14936L = -1.0f;
            this.f14937M = 1;
            this.f14938N = -1;
            this.f14939O = 8000;
            this.f14940P = 0L;
            this.f14941Q = 0L;
            this.f14944T = true;
            this.f14945U = "eng";
        }

        /* renamed from: b */
        private byte[] m21289b() {
            if (this.f14927C == -1.0f || this.f14928D == -1.0f || this.f14929E == -1.0f || this.f14930F == -1.0f || this.f14931G == -1.0f || this.f14932H == -1.0f || this.f14933I == -1.0f || this.f14934J == -1.0f || this.f14935K == -1.0f || this.f14936L == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((this.f14927C * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14928D * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14929E * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14930F * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14931G * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14932H * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14933I * 50000.0f) + 0.5f));
            order.putShort((short) ((this.f14934J * 50000.0f) + 0.5f));
            order.putShort((short) (this.f14935K + 0.5f));
            order.putShort((short) (this.f14936L + 0.5f));
            order.putShort((short) this.f14925A);
            order.putShort((short) this.f14926B);
            return bArr;
        }

        /* renamed from: e */
        private static Pair<String, List<byte[]>> m21286e(C5536v c5536v) {
            try {
                c5536v.m18679N(16);
                long m18663p = c5536v.m18663p();
                if (m18663p == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (m18663p == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (m18663p != 826496599) {
                    C5526o.m18742f("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>("video/x-unknown", null);
                }
                byte[] bArr = c5536v.f17941a;
                for (int m18676c = c5536v.m18676c() + 20; m18676c < bArr.length - 4; m18676c++) {
                    if (bArr[m18676c] == 0 && bArr[m18676c + 1] == 0 && bArr[m18676c + 2] == 1 && bArr[m18676c + 3] == 15) {
                        return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, m18676c, bArr.length)));
                    }
                }
                throw new ParserException("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
            if (r5.m18660s() == com.google.android.exoplayer2.p243c1.p244a0.C4879e.f14870e.getLeastSignificantBits()) goto L14;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean m21285f(com.google.android.exoplayer2.util.C5536v r5) {
            /*
                r0 = r5
                int r0 = r0.m18661r()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                r1 = 1
                if (r0 != r1) goto Le
                r0 = 1
                return r0
            Le:
                r0 = r6
                r1 = 65534(0xfffe, float:9.1833E-41)
                if (r0 != r1) goto L43
                r0 = r5
                r1 = 24
                r0.m18680M(r1)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                r0 = r5
                long r0 = r0.m18660s()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                java.util.UUID r1 = com.google.android.exoplayer2.p243c1.p244a0.C4879e.m21318d()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                long r1 = r1.getMostSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L3f
                r0 = r5
                long r0 = r0.m18660s()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                r8 = r0
                java.util.UUID r0 = com.google.android.exoplayer2.p243c1.p244a0.C4879e.m21318d()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                long r0 = r0.getLeastSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
                r10 = r0
                r0 = r8
                r1 = r10
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L3f
                goto L41
            L3f:
                r0 = 0
                r7 = r0
            L41:
                r0 = r7
                return r0
            L43:
                r0 = 0
                return r0
            L45:
                r5 = move-exception
                com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
                r1 = r0
                java.lang.String r2 = "Error parsing MS/ACM codec private"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p244a0.C4879e.C4882c.m21285f(com.google.android.exoplayer2.util.v):boolean");
        }

        /* renamed from: g */
        private static List<byte[]> m21284g(byte[] bArr) {
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i = 1;
                int i2 = 0;
                while (bArr[i] == -1) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + bArr[i];
                int i5 = 0;
                int i6 = i3;
                while (bArr[i6] == -1) {
                    i5 += 255;
                    i6++;
                }
                int i7 = i6 + 1;
                byte b = bArr[i6];
                if (bArr[i7] != 1) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i7, bArr2, 0, i4);
                int i8 = i7 + i4;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i8 + i5 + b;
                if (bArr[i9] != 5) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: c */
        public void m21288c(AbstractC4980j abstractC4980j, int i) {
            boolean z;
            int i2;
            String str;
            int i3;
            ArrayList arrayList;
            Format format;
            int i4;
            int i5;
            int i6;
            List<byte[]> singletonList;
            String str2;
            String str3 = this.f14949b;
            str3.hashCode();
            switch (str3.hashCode()) {
                case -2095576542:
                    if (str3.equals("V_MPEG4/ISO/AP")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -2095575984:
                    if (str3.equals("V_MPEG4/ISO/SP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1985379776:
                    if (str3.equals("A_MS/ACM")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1784763192:
                    if (str3.equals("A_TRUEHD")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1730367663:
                    if (str3.equals("A_VORBIS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641358:
                    if (str3.equals("A_MPEG/L2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1482641357:
                    if (str3.equals("A_MPEG/L3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -1373388978:
                    if (str3.equals("V_MS/VFW/FOURCC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -933872740:
                    if (str3.equals("S_DVBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363189:
                    if (str3.equals("V_MPEG4/ISO/ASP")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -538363109:
                    if (str3.equals("V_MPEG4/ISO/AVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -425012669:
                    if (str3.equals("S_VOBSUB")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -356037306:
                    if (str3.equals("A_DTS/LOSSLESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923557:
                    if (str3.equals("A_AAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62923603:
                    if (str3.equals("A_AC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 62927045:
                    if (str3.equals("A_DTS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82318131:
                    if (str3.equals("V_AV1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82338133:
                    if (str3.equals("V_VP8")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 82338134:
                    if (str3.equals("V_VP9")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 99146302:
                    if (str3.equals("S_HDMV/PGS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 444813526:
                    if (str3.equals("V_THEORA")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 542569478:
                    if (str3.equals("A_DTS/EXPRESS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 725957860:
                    if (str3.equals("A_PCM/INT/LIT")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 738597099:
                    if (str3.equals("S_TEXT/ASS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 855502857:
                    if (str3.equals("V_MPEGH/ISO/HEVC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1422270023:
                    if (str3.equals("S_TEXT/UTF8")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1809237540:
                    if (str3.equals("V_MPEG2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950749482:
                    if (str3.equals("A_EAC3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1950789798:
                    if (str3.equals("A_FLAC")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1951062397:
                    if (str3.equals("A_OPUS")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            String str4 = "audio/x-unknown";
            switch (z) {
                case false:
                case true:
                case true:
                    byte[] bArr = this.f14957j;
                    singletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str = "video/mp4v-es";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    if (m21285f(new C5536v(this.f14957j))) {
                        int m18864H = C5515h0.m18864H(this.f14938N);
                        i3 = m18864H;
                        if (m18864H == 0) {
                            C5526o.m18742f("MatroskaExtractor", "Unsupported PCM bit depth: " + this.f14938N + ". Setting mimeType to audio/x-unknown");
                        }
                        str = "audio/raw";
                        singletonList = null;
                        i2 = -1;
                        arrayList = singletonList;
                        break;
                    } else {
                        C5526o.m18742f("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    }
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                case true:
                    this.f14942R = new C4883d();
                    str4 = "audio/true-hd";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    arrayList = m21284g(this.f14957j);
                    str = "audio/vorbis";
                    i3 = -1;
                    i2 = 8192;
                    break;
                case true:
                    str2 = "audio/mpeg-L2";
                    str = str2;
                    arrayList = null;
                    i3 = -1;
                    i2 = 4096;
                    break;
                case true:
                    str2 = "audio/mpeg";
                    str = str2;
                    arrayList = null;
                    i3 = -1;
                    i2 = 4096;
                    break;
                case true:
                    Pair<String, List<byte[]>> m21286e = m21286e(new C5536v(this.f14957j));
                    str = (String) m21286e.first;
                    singletonList = (List) m21286e.second;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    byte[] bArr2 = this.f14957j;
                    singletonList = Collections.singletonList(new byte[]{bArr2[0], bArr2[1], bArr2[2], bArr2[3]});
                    str = "application/dvbsubs";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    C5558h m18557b = C5558h.m18557b(new C5536v(this.f14957j));
                    singletonList = m18557b.f18049a;
                    this.f14947W = m18557b.f18050b;
                    str = "video/avc";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    singletonList = Collections.singletonList(this.f14957j);
                    str = "application/vobsub";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "audio/vnd.dts.hd";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    singletonList = Collections.singletonList(this.f14957j);
                    str = "audio/mp4a-latm";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "audio/ac3";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                case true:
                    str4 = "audio/vnd.dts";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "video/av01";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "video/x-vnd.on2.vp8";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "video/x-vnd.on2.vp9";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "application/pgs";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "video/x-unknown";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    int m18864H2 = C5515h0.m18864H(this.f14938N);
                    i3 = m18864H2;
                    if (m18864H2 == 0) {
                        C5526o.m18742f("MatroskaExtractor", "Unsupported PCM bit depth: " + this.f14938N + ". Setting mimeType to audio/x-unknown");
                        str = str4;
                        singletonList = null;
                        i3 = -1;
                        i2 = -1;
                        arrayList = singletonList;
                        break;
                    }
                    str = "audio/raw";
                    singletonList = null;
                    i2 = -1;
                    arrayList = singletonList;
                case true:
                    str4 = "text/x-ssa";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    C5560j m18555a = C5560j.m18555a(new C5536v(this.f14957j));
                    singletonList = m18555a.f18057a;
                    this.f14947W = m18555a.f18058b;
                    str = "video/hevc";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "application/x-subrip";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "video/mpeg2";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    str4 = "audio/eac3";
                    str = str4;
                    singletonList = null;
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    singletonList = Collections.singletonList(this.f14957j);
                    str = "audio/flac";
                    i3 = -1;
                    i2 = -1;
                    arrayList = singletonList;
                    break;
                case true:
                    ArrayList arrayList2 = new ArrayList(3);
                    arrayList2.add(this.f14957j);
                    ByteBuffer allocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    arrayList2.add(allocate.order(byteOrder).putLong(this.f14940P).array());
                    arrayList2.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.f14941Q).array());
                    str = "audio/opus";
                    i3 = -1;
                    i2 = 5760;
                    arrayList = arrayList2;
                    break;
                default:
                    throw new ParserException("Unrecognized codec identifier.");
            }
            int i7 = (this.f14944T ? 1 : 0) | 0 | (this.f14943S ? 2 : 0);
            if (C5529r.m18725l(str)) {
                format = Format.m21741n(Integer.toString(i), str, null, -1, i2, this.f14937M, this.f14939O, i3, arrayList, this.f14958k, i7, this.f14945U);
                i4 = 1;
            } else if (C5529r.m18723n(str)) {
                if (this.f14963p == 0) {
                    int i8 = this.f14961n;
                    int i9 = i8;
                    if (i8 == -1) {
                        i9 = this.f14959l;
                    }
                    this.f14961n = i9;
                    int i10 = this.f14962o;
                    int i11 = i10;
                    if (i10 == -1) {
                        i11 = this.f14960m;
                    }
                    this.f14962o = i11;
                }
                float f = (this.f14961n == -1 || (i6 = this.f14962o) == -1) ? -1.0f : (this.f14960m * i5) / (this.f14959l * i6);
                ColorInfo colorInfo = this.f14970w ? new ColorInfo(this.f14971x, this.f14973z, this.f14972y, m21289b()) : null;
                int i12 = "htc_video_rotA-000".equals(this.f14948a) ? 0 : "htc_video_rotA-090".equals(this.f14948a) ? 90 : "htc_video_rotA-180".equals(this.f14948a) ? 180 : "htc_video_rotA-270".equals(this.f14948a) ? 270 : -1;
                if (this.f14964q == 0 && Float.compare(this.f14965r, 0.0f) == 0 && Float.compare(this.f14966s, 0.0f) == 0) {
                    if (Float.compare(this.f14967t, 0.0f) == 0) {
                        i12 = 0;
                    } else if (Float.compare(this.f14966s, 90.0f) == 0) {
                        i12 = 90;
                    } else if (Float.compare(this.f14966s, -180.0f) == 0 || Float.compare(this.f14966s, 180.0f) == 0) {
                        i12 = 180;
                    } else if (Float.compare(this.f14966s, -90.0f) == 0) {
                        i12 = 270;
                    }
                }
                format = Format.m21757E(Integer.toString(i), str, null, -1, i2, this.f14959l, this.f14960m, -1.0f, arrayList, i12, f, this.f14968u, this.f14969v, colorInfo, this.f14958k);
                i4 = 2;
            } else {
                if ("application/x-subrip".equals(str)) {
                    format = Format.m21732z(Integer.toString(i), str, i7, this.f14945U, this.f14958k);
                } else if ("text/x-ssa".equals(str)) {
                    ArrayList arrayList3 = new ArrayList(2);
                    arrayList3.add(C4879e.f14868c);
                    arrayList3.add(this.f14957j);
                    format = Format.m21761A(Integer.toString(i), str, null, -1, i7, this.f14945U, -1, this.f14958k, Long.MAX_VALUE, arrayList3);
                } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                    throw new ParserException("Unexpected MIME type.");
                } else {
                    format = Format.m21738s(Integer.toString(i), str, null, -1, i7, arrayList, this.f14945U, this.f14958k);
                }
                i4 = 3;
            }
            AbstractC4996v mo19748t = abstractC4980j.mo19748t(this.f14950c, i4);
            this.f14946V = mo19748t;
            mo19748t.mo19983d(format);
        }

        /* renamed from: d */
        public void m21287d() {
            C4883d c4883d = this.f14942R;
            if (c4883d != null) {
                c4883d.m21282a(this);
            }
        }

        /* renamed from: h */
        public void m21283h() {
            C4883d c4883d = this.f14942R;
            if (c4883d != null) {
                c4883d.m21281b();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a0.e$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/e$d.class */
    public static final class C4883d {

        /* renamed from: a */
        private final byte[] f14974a = new byte[10];

        /* renamed from: b */
        private boolean f14975b;

        /* renamed from: c */
        private int f14976c;

        /* renamed from: d */
        private long f14977d;

        /* renamed from: e */
        private int f14978e;

        /* renamed from: f */
        private int f14979f;

        /* renamed from: g */
        private int f14980g;

        /* renamed from: a */
        public void m21282a(C4882c c4882c) {
            if (this.f14976c > 0) {
                c4882c.f14946V.mo19984c(this.f14977d, this.f14978e, this.f14979f, this.f14980g, c4882c.f14956i);
                this.f14976c = 0;
            }
        }

        /* renamed from: b */
        public void m21281b() {
            this.f14975b = false;
            this.f14976c = 0;
        }

        /* renamed from: c */
        public void m21280c(C4882c c4882c, long j, int i, int i2, int i3) {
            if (!this.f14975b) {
                return;
            }
            int i4 = this.f14976c;
            int i5 = i4 + 1;
            this.f14976c = i5;
            if (i4 == 0) {
                this.f14977d = j;
                this.f14978e = i;
                this.f14979f = 0;
            }
            this.f14979f += i2;
            this.f14980g = i3;
            if (i5 < 16) {
                return;
            }
            m21282a(c4882c);
        }

        /* renamed from: d */
        public void m21279d(AbstractC4979i abstractC4979i) {
            if (this.f14975b) {
                return;
            }
            abstractC4979i.mo21000j(this.f14974a, 0, 10);
            abstractC4979i.mo21003g();
            if (C4819g.m21588i(this.f14974a) == 0) {
                return;
            }
            this.f14975b = true;
        }
    }

    public C4879e() {
        this(0);
    }

    public C4879e(int i) {
        this(new C4874b(), i);
    }

    C4879e(AbstractC4878d abstractC4878d, int i) {
        this.f14919v = -1L;
        this.f14920w = -9223372036854775807L;
        this.f14921x = -9223372036854775807L;
        this.f14922y = -9223372036854775807L;
        this.f14875E = -1L;
        this.f14876F = -1L;
        this.f14877G = -9223372036854775807L;
        this.f14902f = abstractC4878d;
        abstractC4878d.mo21326c(new C4881b());
        this.f14906i = (i & 1) != 0 ? false : true;
        this.f14904g = new C4885g();
        this.f14905h = new SparseArray<>();
        this.f14909l = new C5536v(4);
        this.f14910m = new C5536v(ByteBuffer.allocate(4).putInt(-1).array());
        this.f14911n = new C5536v(4);
        this.f14907j = new C5536v(C5531s.f17917a);
        this.f14908k = new C5536v(4);
        this.f14912o = new C5536v();
        this.f14913p = new C5536v();
        this.f14914q = new C5536v(8);
        this.f14915r = new C5536v();
        this.f14916s = new C5536v();
    }

    /* renamed from: C */
    private int m21323C(AbstractC4979i abstractC4979i, C4882c c4882c, int i) {
        int i2;
        int i3;
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(c4882c.f14949b)) {
            m21322D(abstractC4979i, f14867b, i);
            return m21312m();
        } else if ("S_TEXT/ASS".equals(c4882c.f14949b)) {
            m21322D(abstractC4979i, f14869d, i);
            return m21312m();
        } else {
            AbstractC4996v abstractC4996v = c4882c.f14946V;
            boolean z = true;
            if (!this.f14896Z) {
                if (c4882c.f14954g) {
                    this.f14890T &= -1073741825;
                    int i4 = 128;
                    if (!this.f14897a0) {
                        abstractC4979i.readFully(this.f14909l.f17941a, 0, 1);
                        this.f14893W++;
                        if ((this.f14909l.f17941a[0] & 128) == 128) {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                        this.f14900d0 = bArr[0];
                        this.f14897a0 = true;
                    }
                    byte b = this.f14900d0;
                    if ((b & 1) == 1) {
                        boolean z2 = (b & 2) == 2;
                        this.f14890T |= 1073741824;
                        if (!this.f14901e0) {
                            abstractC4979i.readFully(this.f14914q.f17941a, 0, 8);
                            this.f14893W += 8;
                            this.f14901e0 = true;
                            C5536v c5536v = this.f14909l;
                            byte[] bArr2 = c5536v.f17941a;
                            if (!z2) {
                                i4 = 0;
                            }
                            bArr2[0] = (byte) (i4 | 8);
                            c5536v.m18680M(0);
                            abstractC4996v.mo19985b(this.f14909l, 1);
                            this.f14894X++;
                            this.f14914q.m18680M(0);
                            abstractC4996v.mo19985b(this.f14914q, 8);
                            this.f14894X += 8;
                        }
                        if (z2) {
                            if (!this.f14898b0) {
                                abstractC4979i.readFully(this.f14909l.f17941a, 0, 1);
                                this.f14893W++;
                                this.f14909l.m18680M(0);
                                this.f14899c0 = this.f14909l.m18653z();
                                this.f14898b0 = true;
                            }
                            int i5 = this.f14899c0 * 4;
                            this.f14909l.m18684I(i5);
                            abstractC4979i.readFully(this.f14909l.f17941a, 0, i5);
                            this.f14893W += i5;
                            short s = (short) ((this.f14899c0 / 2) + 1);
                            int i6 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.f14917t;
                            if (byteBuffer == null || byteBuffer.capacity() < i6) {
                                this.f14917t = ByteBuffer.allocate(i6);
                            }
                            this.f14917t.position(0);
                            this.f14917t.putShort(s);
                            int i7 = 0;
                            int i8 = 0;
                            while (true) {
                                i2 = i8;
                                i3 = this.f14899c0;
                                if (i7 >= i3) {
                                    break;
                                }
                                int m18689D = this.f14909l.m18689D();
                                if (i7 % 2 == 0) {
                                    this.f14917t.putShort((short) (m18689D - i2));
                                } else {
                                    this.f14917t.putInt(m18689D - i2);
                                }
                                i7++;
                                i8 = m18689D;
                            }
                            int i9 = (i - this.f14893W) - i2;
                            if (i3 % 2 == 1) {
                                this.f14917t.putInt(i9);
                            } else {
                                this.f14917t.putShort((short) i9);
                                this.f14917t.putInt(0);
                            }
                            this.f14915r.m18682K(this.f14917t.array(), i6);
                            abstractC4996v.mo19985b(this.f14915r, i6);
                            this.f14894X += i6;
                        }
                    }
                } else {
                    byte[] bArr3 = c4882c.f14955h;
                    if (bArr3 != null) {
                        this.f14912o.m18682K(bArr3, bArr3.length);
                    }
                }
                if (c4882c.f14953f > 0) {
                    this.f14890T |= 268435456;
                    this.f14916s.m18685H();
                    this.f14909l.m18684I(4);
                    C5536v c5536v2 = this.f14909l;
                    byte[] bArr4 = c5536v2.f17941a;
                    bArr4[0] = (byte) ((i >> 24) & 255);
                    bArr4[1] = (byte) ((i >> 16) & 255);
                    bArr4[2] = (byte) ((i >> 8) & 255);
                    bArr4[3] = (byte) (i & 255);
                    abstractC4996v.mo19985b(c5536v2, 4);
                    this.f14894X += 4;
                }
                this.f14896Z = true;
            }
            int m18675d = i + this.f14912o.m18675d();
            if (!"V_MPEG4/ISO/AVC".equals(c4882c.f14949b) && !"V_MPEGH/ISO/HEVC".equals(c4882c.f14949b)) {
                if (c4882c.f14942R != null) {
                    if (this.f14912o.m18675d() != 0) {
                        z = false;
                    }
                    C5508e.m18910f(z);
                    c4882c.f14942R.m21279d(abstractC4979i);
                }
                while (true) {
                    int i10 = this.f14893W;
                    if (i10 >= m18675d) {
                        break;
                    }
                    int m21321E = m21321E(abstractC4979i, abstractC4996v, m18675d - i10);
                    this.f14893W += m21321E;
                    this.f14894X += m21321E;
                }
            } else {
                byte[] bArr5 = this.f14908k.f17941a;
                bArr5[0] = (byte) 0;
                bArr5[1] = (byte) 0;
                bArr5[2] = (byte) 0;
                int i11 = c4882c.f14947W;
                while (this.f14893W < m18675d) {
                    int i12 = this.f14895Y;
                    if (i12 == 0) {
                        m21320F(abstractC4979i, bArr5, 4 - i11, i11);
                        this.f14893W += i11;
                        this.f14908k.m18680M(0);
                        this.f14895Y = this.f14908k.m18689D();
                        this.f14907j.m18680M(0);
                        abstractC4996v.mo19985b(this.f14907j, 4);
                        this.f14894X += 4;
                    } else {
                        int m21321E2 = m21321E(abstractC4979i, abstractC4996v, i12);
                        this.f14893W += m21321E2;
                        this.f14894X += m21321E2;
                        this.f14895Y -= m21321E2;
                    }
                }
            }
            if ("A_VORBIS".equals(c4882c.f14949b)) {
                this.f14910m.m18680M(0);
                abstractC4996v.mo19985b(this.f14910m, 4);
                this.f14894X += 4;
            }
            return m21312m();
        }
    }

    /* renamed from: D */
    private void m21322D(AbstractC4979i abstractC4979i, byte[] bArr, int i) {
        int length = bArr.length + i;
        if (this.f14913p.m18677b() < length) {
            this.f14913p.f17941a = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.f14913p.f17941a, 0, bArr.length);
        }
        abstractC4979i.readFully(this.f14913p.f17941a, bArr.length, i);
        this.f14913p.m18684I(length);
    }

    /* renamed from: E */
    private int m21321E(AbstractC4979i abstractC4979i, AbstractC4996v abstractC4996v, int i) {
        int i2;
        int m18678a = this.f14912o.m18678a();
        if (m18678a > 0) {
            i2 = Math.min(i, m18678a);
            abstractC4996v.mo19985b(this.f14912o, i2);
        } else {
            i2 = abstractC4996v.mo19986a(abstractC4979i, i, false);
        }
        return i2;
    }

    /* renamed from: F */
    private void m21320F(AbstractC4979i abstractC4979i, byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.f14912o.m18678a());
        abstractC4979i.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.f14912o.m18671h(bArr, i, min);
        }
    }

    /* renamed from: i */
    private AbstractC4992t m21316i() {
        C5527p c5527p;
        C5527p c5527p2;
        int i;
        int i2;
        if (this.f14919v == -1 || this.f14922y == -9223372036854775807L || (c5527p = this.f14878H) == null || c5527p.m18738c() == 0 || (c5527p2 = this.f14879I) == null || c5527p2.m18738c() != this.f14878H.m18738c()) {
            this.f14878H = null;
            this.f14879I = null;
            return new AbstractC4992t.C4994b(this.f14922y);
        }
        int m18738c = this.f14878H.m18738c();
        int[] iArr = new int[m18738c];
        long[] jArr = new long[m18738c];
        long[] jArr2 = new long[m18738c];
        long[] jArr3 = new long[m18738c];
        int i3 = 0;
        while (true) {
            i = 0;
            if (i3 < m18738c) {
                jArr3[i3] = this.f14878H.m18739b(i3);
                jArr[i3] = this.f14919v + this.f14879I.m18739b(i3);
                i3++;
            }
        }
        while (true) {
            i2 = m18738c - 1;
            if (i >= i2) {
                break;
            }
            int i4 = i + 1;
            iArr[i] = (int) (jArr[i4] - jArr[i]);
            jArr2[i] = jArr3[i4] - jArr3[i];
            i = i4;
        }
        iArr[i2] = (int) ((this.f14919v + this.f14918u) - jArr[i2]);
        jArr2[i2] = this.f14922y - jArr3[i2];
        long j = jArr2[i2];
        int[] iArr2 = iArr;
        long[] jArr4 = jArr;
        long[] jArr5 = jArr2;
        long[] jArr6 = jArr3;
        if (j <= 0) {
            C5526o.m18742f("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j);
            iArr2 = Arrays.copyOf(iArr, i2);
            jArr4 = Arrays.copyOf(jArr, i2);
            jArr5 = Arrays.copyOf(jArr2, i2);
            jArr6 = Arrays.copyOf(jArr3, i2);
        }
        this.f14878H = null;
        this.f14879I = null;
        return new C4896c(iArr2, jArr4, jArr5, jArr6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
        if ("S_TEXT/ASS".equals(r9.f14949b) != false) goto L9;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21315j(com.google.android.exoplayer2.p243c1.p244a0.C4879e.C4882c r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p244a0.C4879e.m21315j(com.google.android.exoplayer2.c1.a0.e$c, long, int, int, int):void");
    }

    /* renamed from: l */
    private static int[] m21313l(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* renamed from: m */
    private int m21312m() {
        int i = this.f14894X;
        m21301x();
        return i;
    }

    /* renamed from: o */
    private static byte[] m21310o(long j, String str, long j2) {
        C5508e.m18915a(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return C5515h0.m18854R(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    /* renamed from: s */
    private static boolean m21306s(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_AV1".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_TEXT/ASS".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str);
    }

    /* renamed from: u */
    public static /* synthetic */ AbstractC4978h[] m21304u() {
        return new AbstractC4978h[]{new C4879e()};
    }

    /* renamed from: v */
    private boolean m21303v(C4991s c4991s, long j) {
        if (this.f14874D) {
            this.f14876F = j;
            c4991s.f15517a = this.f14875E;
            this.f14874D = false;
            return true;
        } else if (!this.f14871A) {
            return false;
        } else {
            long j2 = this.f14876F;
            if (j2 == -1) {
                return false;
            }
            c4991s.f15517a = j2;
            this.f14876F = -1L;
            return true;
        }
    }

    /* renamed from: w */
    private void m21302w(AbstractC4979i abstractC4979i, int i) {
        if (this.f14909l.m18675d() >= i) {
            return;
        }
        if (this.f14909l.m18677b() < i) {
            C5536v c5536v = this.f14909l;
            byte[] bArr = c5536v.f17941a;
            c5536v.m18682K(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i)), this.f14909l.m18675d());
        }
        C5536v c5536v2 = this.f14909l;
        abstractC4979i.readFully(c5536v2.f17941a, c5536v2.m18675d(), i - this.f14909l.m18675d());
        this.f14909l.m18681L(i);
    }

    /* renamed from: x */
    private void m21301x() {
        this.f14893W = 0;
        this.f14894X = 0;
        this.f14895Y = 0;
        this.f14896Z = false;
        this.f14897a0 = false;
        this.f14898b0 = false;
        this.f14899c0 = 0;
        this.f14900d0 = (byte) 0;
        this.f14901e0 = false;
        this.f14912o.m18685H();
    }

    /* renamed from: y */
    private long m21300y(long j) {
        long j2 = this.f14920w;
        if (j2 != -9223372036854775807L) {
            return C5515h0.m18822l0(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    /* renamed from: z */
    private static void m21299z(String str, long j, byte[] bArr) {
        int i;
        byte[] bArr2;
        str.hashCode();
        if (str.equals("S_TEXT/ASS")) {
            bArr2 = m21310o(j, "%01d:%02d:%02d:%02d", OkHttpUtils.DEFAULT_MILLISECONDS);
            i = 21;
        } else if (!str.equals("S_TEXT/UTF8")) {
            throw new IllegalArgumentException();
        } else {
            bArr2 = m21310o(j, "%02d:%02d:%02d,%03d", 1000L);
            i = 19;
        }
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
    }

    /* renamed from: A */
    protected void m21325A(int i, long j, long j2) {
        if (i == 160) {
            this.f14892V = false;
        } else if (i == 174) {
            this.f14923z = new C4882c();
        } else if (i == 187) {
            this.f14880J = false;
        } else if (i == 19899) {
            this.f14872B = -1;
            this.f14873C = -1L;
        } else if (i == 20533) {
            this.f14923z.f14954g = true;
        } else if (i == 21968) {
            this.f14923z.f14970w = true;
        } else if (i == 408125543) {
            long j3 = this.f14919v;
            if (j3 != -1 && j3 != j) {
                throw new ParserException("Multiple Segment elements not supported");
            }
            this.f14919v = j;
            this.f14918u = j2;
        } else if (i == 475249515) {
            this.f14878H = new C5527p();
            this.f14879I = new C5527p();
        } else if (i != 524531317 || this.f14871A) {
        } else {
            if (this.f14906i && this.f14875E != -1) {
                this.f14874D = true;
                return;
            }
            this.f14903f0.mo19764c(new AbstractC4992t.C4994b(this.f14922y));
            this.f14871A = true;
        }
    }

    /* renamed from: B */
    protected void m21324B(int i, String str) {
        if (i == 134) {
            this.f14923z.f14949b = str;
        } else if (i != 17026) {
            if (i == 21358) {
                this.f14923z.f14948a = str;
            } else if (i != 2274716) {
            } else {
                this.f14923z.f14945U = str;
            }
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            throw new ParserException("DocType " + str + " not supported");
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public final void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public final boolean mo19972c(AbstractC4979i abstractC4979i) {
        return new C4884f().m21277b(abstractC4979i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x03ff, code lost:
        throw new com.google.android.exoplayer2.ParserException("EBML lacing sample size out of range.");
     */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m21317e(int r9, int r10, com.google.android.exoplayer2.p243c1.AbstractC4979i r11) {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p244a0.C4879e.m21317e(int, int, com.google.android.exoplayer2.c1.i):void");
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public final int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        this.f14881K = false;
        boolean z = true;
        while (z && !this.f14881K) {
            boolean mo21327b = this.f14902f.mo21327b(abstractC4979i);
            z = mo21327b;
            if (mo21327b) {
                z = mo21327b;
                if (m21303v(c4991s, abstractC4979i.mo20999k())) {
                    return 1;
                }
            }
        }
        if (!z) {
            for (int i = 0; i < this.f14905h.size(); i++) {
                this.f14905h.valueAt(i).m21287d();
            }
            return -1;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public final void mo19969g(AbstractC4980j abstractC4980j) {
        this.f14903f0 = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f14877G = -9223372036854775807L;
        this.f14882L = 0;
        this.f14902f.mo21328a();
        this.f14904g.m21272e();
        m21301x();
        for (int i = 0; i < this.f14905h.size(); i++) {
            this.f14905h.valueAt(i).m21283h();
        }
    }

    /* renamed from: k */
    protected void m21314k(int i) {
        if (i == 160) {
            if (this.f14882L != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f14886P; i3++) {
                i2 += this.f14887Q[i3];
            }
            C4882c c4882c = this.f14905h.get(this.f14888R);
            for (int i4 = 0; i4 < this.f14886P; i4++) {
                long j = this.f14883M;
                long j2 = (c4882c.f14952e * i4) / 1000;
                int i5 = this.f14890T;
                int i6 = i5;
                if (i4 == 0) {
                    i6 = i5;
                    if (!this.f14892V) {
                        i6 = i5 | 1;
                    }
                }
                int i7 = this.f14887Q[i4];
                i2 -= i7;
                m21315j(c4882c, j2 + j, i6, i7, i2);
            }
            this.f14882L = 0;
        } else if (i == 174) {
            if (m21306s(this.f14923z.f14949b)) {
                C4882c c4882c2 = this.f14923z;
                c4882c2.m21288c(this.f14903f0, c4882c2.f14950c);
                SparseArray<C4882c> sparseArray = this.f14905h;
                C4882c c4882c3 = this.f14923z;
                sparseArray.put(c4882c3.f14950c, c4882c3);
            }
            this.f14923z = null;
        } else if (i == 19899) {
            int i8 = this.f14872B;
            if (i8 != -1) {
                long j3 = this.f14873C;
                if (j3 != -1) {
                    if (i8 != 475249515) {
                        return;
                    }
                    this.f14875E = j3;
                    return;
                }
            }
            throw new ParserException("Mandatory element SeekID or SeekPosition not found");
        } else if (i == 25152) {
            C4882c c4882c4 = this.f14923z;
            if (!c4882c4.f14954g) {
                return;
            }
            if (c4882c4.f14956i == null) {
                throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
            }
            c4882c4.f14958k = new DrmInitData(new DrmInitData.SchemeData(C5543v.f17960a, "video/webm", this.f14923z.f14956i.f15526b));
        } else if (i == 28032) {
            C4882c c4882c5 = this.f14923z;
            if (c4882c5.f14954g && c4882c5.f14955h != null) {
                throw new ParserException("Combining encryption and compression is not supported");
            }
        } else if (i == 357149030) {
            if (this.f14920w == -9223372036854775807L) {
                this.f14920w = 1000000L;
            }
            long j4 = this.f14921x;
            if (j4 == -9223372036854775807L) {
                return;
            }
            this.f14922y = m21300y(j4);
        } else if (i == 374648427) {
            if (this.f14905h.size() == 0) {
                throw new ParserException("No valid tracks were found");
            }
            this.f14903f0.mo19752o();
        } else if (i == 475249515 && !this.f14871A) {
            this.f14903f0.mo19764c(m21316i());
            this.f14871A = true;
        }
    }

    /* renamed from: n */
    protected void m21311n(int i, double d) {
        if (i == 181) {
            this.f14923z.f14939O = (int) d;
        } else if (i == 17545) {
            this.f14921x = (long) d;
        } else {
            switch (i) {
                case 21969:
                    this.f14923z.f14927C = (float) d;
                    return;
                case 21970:
                    this.f14923z.f14928D = (float) d;
                    return;
                case 21971:
                    this.f14923z.f14929E = (float) d;
                    return;
                case 21972:
                    this.f14923z.f14930F = (float) d;
                    return;
                case 21973:
                    this.f14923z.f14931G = (float) d;
                    return;
                case 21974:
                    this.f14923z.f14932H = (float) d;
                    return;
                case 21975:
                    this.f14923z.f14933I = (float) d;
                    return;
                case 21976:
                    this.f14923z.f14934J = (float) d;
                    return;
                case 21977:
                    this.f14923z.f14935K = (float) d;
                    return;
                case 21978:
                    this.f14923z.f14936L = (float) d;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            this.f14923z.f14965r = (float) d;
                            return;
                        case 30324:
                            this.f14923z.f14966s = (float) d;
                            return;
                        case 30325:
                            this.f14923z.f14967t = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: p */
    protected int m21309p(int i) {
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

    /* renamed from: q */
    protected void m21308q(C4882c c4882c, int i, AbstractC4979i abstractC4979i, int i2) {
        if (i != 4 || !"V_VP9".equals(c4882c.f14949b)) {
            abstractC4979i.mo21002h(i2);
            return;
        }
        this.f14916s.m18684I(i2);
        abstractC4979i.readFully(this.f14916s.f17941a, 0, i2);
    }

    /* renamed from: r */
    protected void m21307r(int i, long j) {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw new ParserException("ContentEncodingOrder " + j + " not supported");
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw new ParserException("ContentEncodingScope " + j + " not supported");
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    this.f14923z.f14951d = (int) j;
                    return;
                case 136:
                    C4882c c4882c = this.f14923z;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    c4882c.f14944T = z2;
                    return;
                case 155:
                    this.f14884N = m21300y(j);
                    return;
                case 159:
                    this.f14923z.f14937M = (int) j;
                    return;
                case 176:
                    this.f14923z.f14959l = (int) j;
                    return;
                case 179:
                    this.f14878H.m18740a(m21300y(j));
                    return;
                case 186:
                    this.f14923z.f14960m = (int) j;
                    return;
                case 215:
                    this.f14923z.f14950c = (int) j;
                    return;
                case 231:
                    this.f14877G = m21300y(j);
                    return;
                case 238:
                    this.f14891U = (int) j;
                    return;
                case 241:
                    if (this.f14880J) {
                        return;
                    }
                    this.f14879I.m18740a(j);
                    this.f14880J = true;
                    return;
                case 251:
                    this.f14892V = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    throw new ParserException("ContentCompAlgo " + j + " not supported");
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    throw new ParserException("DocTypeReadVersion " + j + " not supported");
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    throw new ParserException("EBMLReadVersion " + j + " not supported");
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    throw new ParserException("ContentEncAlgo " + j + " not supported");
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    throw new ParserException("AESSettingsCipherMode " + j + " not supported");
                case 21420:
                    this.f14873C = j + this.f14919v;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.f14923z.f14969v = 0;
                        return;
                    } else if (i2 == 1) {
                        this.f14923z.f14969v = 2;
                        return;
                    } else if (i2 == 3) {
                        this.f14923z.f14969v = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.f14923z.f14969v = 3;
                        return;
                    }
                case 21680:
                    this.f14923z.f14961n = (int) j;
                    return;
                case 21682:
                    this.f14923z.f14963p = (int) j;
                    return;
                case 21690:
                    this.f14923z.f14962o = (int) j;
                    return;
                case 21930:
                    C4882c c4882c2 = this.f14923z;
                    if (j == 1) {
                        z = true;
                    }
                    c4882c2.f14943S = z;
                    return;
                case 21998:
                    this.f14923z.f14953f = (int) j;
                    return;
                case 22186:
                    this.f14923z.f14940P = j;
                    return;
                case 22203:
                    this.f14923z.f14941Q = j;
                    return;
                case 25188:
                    this.f14923z.f14938N = (int) j;
                    return;
                case 30321:
                    int i3 = (int) j;
                    if (i3 == 0) {
                        this.f14923z.f14964q = 0;
                        return;
                    } else if (i3 == 1) {
                        this.f14923z.f14964q = 1;
                        return;
                    } else if (i3 == 2) {
                        this.f14923z.f14964q = 2;
                        return;
                    } else if (i3 != 3) {
                        return;
                    } else {
                        this.f14923z.f14964q = 3;
                        return;
                    }
                case 2352003:
                    this.f14923z.f14952e = (int) j;
                    return;
                case 2807729:
                    this.f14920w = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i4 = (int) j;
                            if (i4 == 1) {
                                this.f14923z.f14973z = 2;
                                return;
                            } else if (i4 != 2) {
                                return;
                            } else {
                                this.f14923z.f14973z = 1;
                                return;
                            }
                        case 21946:
                            int i5 = (int) j;
                            if (i5 != 1) {
                                if (i5 == 16) {
                                    this.f14923z.f14972y = 6;
                                    return;
                                } else if (i5 == 18) {
                                    this.f14923z.f14972y = 7;
                                    return;
                                } else if (i5 != 6 && i5 != 7) {
                                    return;
                                }
                            }
                            this.f14923z.f14972y = 3;
                            return;
                        case 21947:
                            C4882c c4882c3 = this.f14923z;
                            c4882c3.f14970w = true;
                            int i6 = (int) j;
                            if (i6 == 1) {
                                c4882c3.f14971x = 1;
                                return;
                            } else if (i6 == 9) {
                                c4882c3.f14971x = 6;
                                return;
                            } else if (i6 != 4 && i6 != 5 && i6 != 6 && i6 != 7) {
                                return;
                            } else {
                                c4882c3.f14971x = 2;
                                return;
                            }
                        case 21948:
                            this.f14923z.f14925A = (int) j;
                            return;
                        case 21949:
                            this.f14923z.f14926B = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: t */
    protected boolean m21305t(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }
}
