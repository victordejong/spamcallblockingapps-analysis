package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ey2.class */
public abstract class ey2 extends AbstractC7056v2 {

    /* renamed from: o */
    private static final byte[] f22617o = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: A0 */
    private int f22619A0;

    /* renamed from: B0 */
    private ef3 f22621B0;

    /* renamed from: C */
    private C7021u4 f22622C;

    /* renamed from: C0 */
    private hp2 f22623C0;

    /* renamed from: D */
    private C7021u4 f22624D;

    /* renamed from: D0 */
    private hp2 f22625D0;

    /* renamed from: E */
    private MediaCrypto f22626E;

    /* renamed from: F */
    private boolean f22627F;

    /* renamed from: J */
    private C7021u4 f22631J;

    /* renamed from: K */
    private MediaFormat f22632K;

    /* renamed from: L */
    private boolean f22633L;

    /* renamed from: N */
    private ArrayDeque<vw2> f22635N;

    /* renamed from: O */
    private zzfp f22636O;

    /* renamed from: P */
    private vw2 f22637P;

    /* renamed from: R */
    private boolean f22639R;

    /* renamed from: S */
    private boolean f22640S;

    /* renamed from: T */
    private boolean f22641T;

    /* renamed from: U */
    private boolean f22642U;

    /* renamed from: V */
    private boolean f22643V;

    /* renamed from: W */
    private boolean f22644W;

    /* renamed from: X */
    private boolean f22645X;

    /* renamed from: Y */
    private boolean f22646Y;

    /* renamed from: Z */
    private boolean f22647Z;

    /* renamed from: a0 */
    private boolean f22648a0;

    /* renamed from: b0 */
    private at2 f22649b0;

    /* renamed from: f0 */
    private ByteBuffer f22653f0;

    /* renamed from: g0 */
    private boolean f22654g0;

    /* renamed from: h0 */
    private boolean f22655h0;

    /* renamed from: i0 */
    private boolean f22656i0;

    /* renamed from: j0 */
    private boolean f22657j0;

    /* renamed from: k0 */
    private boolean f22658k0;

    /* renamed from: l0 */
    private boolean f22659l0;

    /* renamed from: p */
    private final av2 f22663p;

    /* renamed from: p0 */
    private boolean f22664p0;

    /* renamed from: q */
    private final g03 f22665q;

    /* renamed from: q0 */
    private boolean f22666q0;

    /* renamed from: r */
    private final float f22667r;

    /* renamed from: r0 */
    private boolean f22668r0;

    /* renamed from: u0 */
    private boolean f22674u0;

    /* renamed from: v */
    private final es2 f22675v;

    /* renamed from: v0 */
    private boolean f22676v0;

    /* renamed from: w0 */
    private boolean f22678w0;

    /* renamed from: x0 */
    protected C6780nm f22680x0;

    /* renamed from: s */
    private final C7205z3 f22669s = new C7205z3(0, 0);

    /* renamed from: t */
    private final C7205z3 f22671t = new C7205z3(0, 0);

    /* renamed from: u */
    private final C7205z3 f22673u = new C7205z3(2, 0);

    /* renamed from: w */
    private final C6953sa<C7021u4> f22677w = new C6953sa<>(10);

    /* renamed from: x */
    private final ArrayList<Long> f22679x = new ArrayList<>();

    /* renamed from: y */
    private final MediaCodec.BufferInfo f22681y = new MediaCodec.BufferInfo();

    /* renamed from: H */
    private float f22629H = 1.0f;

    /* renamed from: I */
    private float f22630I = 1.0f;

    /* renamed from: G */
    private long f22628G = -9223372036854775807L;

    /* renamed from: z */
    private final long[] f22683z = new long[10];

    /* renamed from: A */
    private final long[] f22618A = new long[10];

    /* renamed from: B */
    private final long[] f22620B = new long[10];

    /* renamed from: y0 */
    private long f22682y0 = -9223372036854775807L;

    /* renamed from: z0 */
    private long f22684z0 = -9223372036854775807L;

    /* renamed from: M */
    private float f22634M = -1.0f;

    /* renamed from: Q */
    private int f22638Q = 0;

    /* renamed from: m0 */
    private int f22660m0 = 0;

    /* renamed from: d0 */
    private int f22651d0 = -1;

    /* renamed from: e0 */
    private int f22652e0 = -1;

    /* renamed from: c0 */
    private long f22650c0 = -9223372036854775807L;

    /* renamed from: s0 */
    private long f22670s0 = -9223372036854775807L;

    /* renamed from: t0 */
    private long f22672t0 = -9223372036854775807L;

    /* renamed from: n0 */
    private int f22661n0 = 0;

    /* renamed from: o0 */
    private int f22662o0 = 0;

    public ey2(int i, av2 av2Var, g03 g03Var, boolean z, float f) {
        super(i);
        this.f22663p = av2Var;
        Objects.requireNonNull(g03Var);
        this.f22665q = g03Var;
        this.f22667r = f;
        es2 es2Var = new es2();
        this.f22675v = es2Var;
        es2Var.m8536i(0);
        es2Var.f32798c.order(ByteOrder.nativeOrder());
    }

    /* renamed from: E0 */
    private final boolean m15351E0(int i) {
        C7058v4 m10108f = m10108f();
        this.f22669s.mo8537a();
        int m10104j = m10104j(m10108f, this.f22669s, i | 4);
        if (m10104j == -5) {
            mo8307C0(m10108f);
            return true;
        } else if (m10104j != -4 || !this.f22669s.m16713c()) {
            return false;
        } else {
            this.f22674u0 = true;
            m15339o0();
            return false;
        }
    }

    /* renamed from: F0 */
    private final boolean m15350F0(long j) {
        return this.f22628G == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.f22628G;
    }

    /* renamed from: G0 */
    private final boolean m15349G0() {
        return this.f22652e0 >= 0;
    }

    /* renamed from: i0 */
    public static boolean m15345i0(C7021u4 c7021u4) {
        return c7021u4.f30498G == 0;
    }

    /* renamed from: k0 */
    private final void m15343k0() {
        this.f22658k0 = false;
        this.f22675v.mo8537a();
        this.f22673u.mo8537a();
        this.f22657j0 = false;
        this.f22656i0 = false;
    }

    /* renamed from: l0 */
    private final boolean m15342l0(C7021u4 c7021u4) {
        if (C7101wa.f31475a < 23 || this.f22621B0 == null || this.f22662o0 == 3 || mo10117T() == 0) {
            return true;
        }
        float mo8270y0 = mo8270y0(this.f22630I, c7021u4, m10107g());
        float f = this.f22634M;
        if (f == mo8270y0) {
            return true;
        }
        if (mo8270y0 == -1.0f) {
            m15340n0();
            return false;
        } else if (f == -1.0f && mo8270y0 <= this.f22667r) {
            return true;
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", mo8270y0);
            this.f22621B0.m15496m(bundle);
            this.f22634M = mo8270y0;
            return true;
        }
    }

    @TargetApi(23)
    /* renamed from: m0 */
    private final boolean m15341m0() {
        if (!this.f22664p0) {
            m15338p0();
            return true;
        }
        this.f22661n0 = 1;
        if (this.f22640S || this.f22642U) {
            this.f22662o0 = 3;
            return false;
        }
        this.f22662o0 = 2;
        return true;
    }

    /* renamed from: n0 */
    private final void m15340n0() {
        if (this.f22664p0) {
            this.f22661n0 = 1;
            this.f22662o0 = 3;
            return;
        }
        m15354C();
        m15333z();
    }

    @TargetApi(23)
    /* renamed from: o0 */
    private final void m15339o0() {
        int i = this.f22662o0;
        if (i == 1) {
            m15334s0();
        } else if (i == 2) {
            m15334s0();
            m15338p0();
        } else if (i != 3) {
            this.f22676v0 = true;
            mo9310x();
        } else {
            m15354C();
            m15333z();
        }
    }

    /* renamed from: p0 */
    private final void m15338p0() {
        try {
            throw null;
        } catch (MediaCryptoException e) {
            throw m10105i(e, this.f22622C, false, 6006);
        }
    }

    /* renamed from: q0 */
    private final void m15337q0() {
        this.f22652e0 = -1;
        this.f22653f0 = null;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* renamed from: r0 */
    private final boolean m15336r0() {
        int i;
        int i2;
        ef3 ef3Var = this.f22621B0;
        if (ef3Var == null || this.f22661n0 == 2 || this.f22674u0) {
            return false;
        }
        if (this.f22651d0 < 0) {
            int m15508a = ef3Var.m15508a();
            this.f22651d0 = m15508a;
            if (m15508a < 0) {
                return false;
            }
            this.f22671t.f32798c = this.f22621B0.m15505d(m15508a);
            this.f22671t.mo8537a();
        }
        if (this.f22661n0 == 1) {
            if (!this.f22648a0) {
                this.f22666q0 = true;
                this.f22621B0.m15503f(this.f22651d0, 0, 0, 0L, 4);
                m15335s();
            }
            this.f22661n0 = 2;
            return false;
        } else if (this.f22646Y) {
            this.f22646Y = false;
            this.f22671t.f32798c.put(f22617o);
            this.f22621B0.m15503f(this.f22651d0, 0, 38, 0L, 0);
            m15335s();
            this.f22664p0 = true;
            return true;
        } else {
            if (this.f22660m0 == 1) {
                for (int i3 = 0; i3 < this.f22631J.f30513p.size(); i3++) {
                    this.f22671t.f32798c.put(this.f22631J.f30513p.get(i3));
                }
                this.f22660m0 = 2;
            }
            int position = this.f22671t.f32798c.position();
            C7058v4 m10108f = m10108f();
            try {
                int m10104j = m10104j(m10108f, this.f22671t, 0);
                if (mo10120P()) {
                    this.f22672t0 = this.f22670s0;
                }
                if (m10104j == -3) {
                    return false;
                }
                if (m10104j == -5) {
                    if (this.f22660m0 == 2) {
                        this.f22671t.mo8537a();
                        this.f22660m0 = 1;
                    }
                    mo8307C0(m10108f);
                    return true;
                } else if (this.f22671t.m16713c()) {
                    if (this.f22660m0 == 2) {
                        this.f22671t.mo8537a();
                        this.f22660m0 = 1;
                    }
                    this.f22674u0 = true;
                    if (!this.f22664p0) {
                        m15339o0();
                        return false;
                    }
                    try {
                        if (this.f22648a0) {
                            return false;
                        }
                        this.f22666q0 = true;
                        this.f22621B0.m15503f(this.f22651d0, 0, 0, 0L, 4);
                        m15335s();
                        return false;
                    } catch (MediaCodec.CryptoException e) {
                        throw m10105i(e, this.f22622C, false, C7130x2.m9365e(e.getErrorCode()));
                    }
                } else if (!this.f22664p0 && !this.f22671t.m16712d()) {
                    this.f22671t.mo8537a();
                    if (this.f22660m0 != 2) {
                        return true;
                    }
                    this.f22660m0 = 1;
                    return true;
                } else {
                    boolean m8535j = this.f22671t.m8535j();
                    if (m8535j) {
                        this.f22671t.f32797b.m8637c(position);
                    }
                    if (this.f22639R && !m8535j) {
                        ByteBuffer byteBuffer = this.f22671t.f32798c;
                        byte[] bArr = C6322ba.f20319a;
                        int position2 = byteBuffer.position();
                        int i4 = 0;
                        int i5 = 0;
                        while (true) {
                            int i6 = i4 + 1;
                            if (i6 >= position2) {
                                byteBuffer.clear();
                                break;
                            }
                            int i7 = byteBuffer.get(i4) & 255;
                            if (i5 == 3) {
                                i2 = i5;
                                i = i7;
                                if (i7 == 1) {
                                    if ((byteBuffer.get(i6) & 31) == 7) {
                                        ByteBuffer duplicate = byteBuffer.duplicate();
                                        duplicate.position(i4 - 3);
                                        duplicate.limit(position2);
                                        byteBuffer.position(0);
                                        byteBuffer.put(duplicate);
                                        break;
                                    }
                                    i = 1;
                                    i2 = i5;
                                }
                            } else {
                                i2 = i5;
                                i = i7;
                                if (i7 == 0) {
                                    i2 = i5 + 1;
                                    i = i7;
                                }
                            }
                            i5 = i2;
                            if (i != 0) {
                                i5 = 0;
                            }
                            i4 = i6;
                        }
                        if (this.f22671t.f32798c.position() == 0) {
                            return true;
                        }
                        this.f22639R = false;
                    }
                    C7205z3 c7205z3 = this.f22671t;
                    char c = c7205z3.f32800e;
                    at2 at2Var = this.f22649b0;
                    if (at2Var != null) {
                        c = at2Var.m16488b(this.f22622C, c7205z3);
                        this.f22670s0 = Math.max(this.f22670s0, this.f22649b0.m16487c(this.f22622C));
                    }
                    if (this.f22671t.m16714b()) {
                        this.f22679x.add(Long.valueOf(c));
                    }
                    if (this.f22678w0) {
                        this.f22677w.m11096a(c, this.f22622C);
                        this.f22678w0 = false;
                    }
                    this.f22670s0 = Math.max(this.f22670s0, (long) c);
                    this.f22671t.m8534k();
                    if (this.f22671t.m16711e()) {
                        mo8287e0(this.f22671t);
                    }
                    mo8277t(this.f22671t);
                    try {
                        if (m8535j) {
                            this.f22621B0.m15502g(this.f22651d0, 0, this.f22671t.f32797b, c, 0);
                        } else {
                            this.f22621B0.m15503f(this.f22651d0, 0, this.f22671t.f32798c.limit(), c, 0);
                        }
                        m15335s();
                        this.f22664p0 = true;
                        this.f22660m0 = 0;
                        this.f22680x0.f27212c++;
                        return true;
                    } catch (MediaCodec.CryptoException e2) {
                        throw m10105i(e2, this.f22622C, false, C7130x2.m9365e(e2.getErrorCode()));
                    }
                }
            } catch (zzae e3) {
                mo8308B0(e3);
                m15351E0(0);
                m15334s0();
                return true;
            }
        }
    }

    /* renamed from: s */
    private final void m15335s() {
        this.f22651d0 = -1;
        this.f22671t.f32798c = null;
    }

    /* renamed from: s0 */
    private final void m15334s0() {
        try {
            this.f22621B0.m15499j();
        } finally {
            mo8305H();
        }
    }

    /* renamed from: A */
    protected boolean mo8310A(vw2 vw2Var) {
        return true;
    }

    /* renamed from: A0 */
    protected abstract void mo8309A0(String str);

    /* renamed from: B */
    public final vw2 m15355B() {
        return this.f22637P;
    }

    /* renamed from: B0 */
    protected abstract void mo8308B0(Exception exc);

    /* renamed from: C */
    public final void m15354C() {
        try {
            ef3 ef3Var = this.f22621B0;
            if (ef3Var != null) {
                ef3Var.m15498k();
                this.f22680x0.f27211b++;
                mo8309A0(this.f22637P.f31383a);
            }
        } finally {
            this.f22621B0 = null;
            this.f22626E = null;
            this.f22623C0 = null;
            m15348I();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
        if (m15341m0() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0129, code lost:
        if (m15341m0() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014e, code lost:
        if (m15341m0() == false) goto L55;
     */
    /* renamed from: C0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.C6781nn mo8307C0(com.google.android.gms.internal.ads.C7058v4 r9) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ey2.mo8307C0(com.google.android.gms.internal.ads.v4):com.google.android.gms.internal.ads.nn");
    }

    /* renamed from: D */
    public final boolean m15353D() {
        boolean m15352E = m15352E();
        if (m15352E) {
            m15333z();
        }
        return m15352E;
    }

    /* renamed from: D0 */
    protected abstract void mo8306D0(C7021u4 c7021u4, MediaFormat mediaFormat);

    /* renamed from: E */
    protected final boolean m15352E() {
        if (this.f22621B0 == null) {
            return false;
        }
        if (this.f22662o0 == 3 || this.f22640S || ((this.f22641T && !this.f22668r0) || (this.f22642U && this.f22666q0))) {
            m15354C();
            return true;
        }
        m15334s0();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC7023u6
    /* renamed from: F */
    public final int mo10126F() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: G */
    public boolean mo9320G() {
        return this.f22676v0;
    }

    /* renamed from: H */
    public void mo8305H() {
        m15335s();
        m15337q0();
        this.f22650c0 = -9223372036854775807L;
        this.f22666q0 = false;
        this.f22664p0 = false;
        this.f22646Y = false;
        this.f22647Z = false;
        this.f22654g0 = false;
        this.f22655h0 = false;
        this.f22679x.clear();
        this.f22670s0 = -9223372036854775807L;
        this.f22672t0 = -9223372036854775807L;
        at2 at2Var = this.f22649b0;
        if (at2Var != null) {
            at2Var.m16489a();
        }
        this.f22661n0 = 0;
        this.f22662o0 = 0;
        this.f22660m0 = this.f22659l0 ? 1 : 0;
    }

    /* renamed from: I */
    protected final void m15348I() {
        mo8305H();
        this.f22649b0 = null;
        this.f22635N = null;
        this.f22637P = null;
        this.f22631J = null;
        this.f22632K = null;
        this.f22633L = false;
        this.f22668r0 = false;
        this.f22634M = -1.0f;
        this.f22638Q = 0;
        this.f22639R = false;
        this.f22640S = false;
        this.f22641T = false;
        this.f22642U = false;
        this.f22643V = false;
        this.f22644W = false;
        this.f22645X = false;
        this.f22648a0 = false;
        this.f22659l0 = false;
        this.f22660m0 = 0;
        this.f22627F = false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: J */
    public boolean mo8302J() {
        boolean z;
        if (this.f22622C != null) {
            z = true;
            if (!m10102l()) {
                z = true;
                if (!m15349G0()) {
                    if (this.f22650c0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f22650c0) {
                        return true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: Q */
    protected zzfn mo8294Q(Throwable th, vw2 vw2Var) {
        return new zzfn(th, vw2Var);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:168|169|170|(6:(12:172|173|(4:175|176|177|(9:477|179|193|(2:195|(15:197|198|199|200|201|202|(4:204|205|206|(4:208|209|210|(3:212|213|214)))|215|216|(3:218|219|220)|221|222|223|224|225)(4:508|226|227|(7:229|230|231|(3:233|234|235)|237|238|239)(0)))(3:240|241|(5:243|244|245|246|247)(44:250|251|252|253|(4:255|256|257|(4:507|259|260|261))|262|263|264|265|266|267|(8:269|270|271|272|273|274|275|276)|277|278|279|(6:281|282|283|284|285|(4:287|288|289|(5:291|292|293|294|(2:296|297))))|298|299|300|301|302|303|(2:304|(3:306|307|(5:511|309|310|311|312)(1:313))(2:512|314))|315|316|317|318|319|320|321|(1:323)(1:324)|325|326|327|328|329|(3:331|332|(3:334|335|336))|337|(2:339|340)(3:341|342|(3:344|345|346))|348|349|350|351|352))|248|249|407|408|(2:506|410)(1:411)))|191|192|193|(0)(0)|248|249|407|408|(0)(0))|(3:483|357|(7:467|359|360|479|361|395|(11:397|398|399|400|401|402|403|(3:510|405|406)|407|408|(0)(0))(1:509)))|481|394|395|(0)(0))|353|354|355|375|470|376|377|378|379|380|381|382|383|384|385|386|387|388|389|390|391|392|393) */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0450, code lost:
        if (r21.f22661n0 == 2) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0677, code lost:
        if (r21.f22624D != null) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0841, code lost:
        r23 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0843, code lost:
        r21 = r22;
        r22 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x08e6, code lost:
        r22.mo8308B0(r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x08f1, code lost:
        if (r0 < 21) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0907, code lost:
        r30 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x090d, code lost:
        r30 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0912, code lost:
        if (r30 != false) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0915, code lost:
        m15354C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0934, code lost:
        throw r22.m10105i(r22.mo8294Q(r21, r22.f22637P), r22.f22622C, r30, 4003);
     */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x080c A[LOOP:2: B:168:0x0329->B:411:0x080c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0821  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x08be  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0809 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:509:0x072b A[EDGE_INSN: B:509:0x072b->B:370:0x072b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:514:0x082f A[EDGE_INSN: B:514:0x082f->B:419:0x082f ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9332U(long r17, long r19) {
        /*
            Method dump skipped, instructions count: 2365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ey2.mo9332U(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: b0 */
    public void mo8289b0(float f, float f2) {
        this.f22629H = f;
        this.f22630I = f2;
        m15342l0(this.f22631J);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7023u6
    /* renamed from: d */
    public final int mo9331d(C7021u4 c7021u4) {
        try {
            return mo8276t0(this.f22665q, c7021u4);
        } catch (zzfy e) {
            throw m10105i(e, c7021u4, false, 4002);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: e */
    protected final void mo9330e(C7021u4[] c7021u4Arr, long j, long j2) {
        boolean z = true;
        if (this.f22684z0 == -9223372036854775807L) {
            if (this.f22682y0 != -9223372036854775807L) {
                z = false;
            }
            C7173y8.m8895d(z);
            this.f22682y0 = j;
            this.f22684z0 = j2;
            return;
        }
        int i = this.f22619A0;
        if (i == 10) {
            long j3 = this.f22618A[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j3);
            Log.w("MediaCodecRenderer", sb.toString());
        } else {
            this.f22619A0 = i + 1;
        }
        long[] jArr = this.f22683z;
        int i2 = this.f22619A0 - 1;
        jArr[i2] = j;
        this.f22618A[i2] = j2;
        this.f22620B[i2] = this.f22670s0;
    }

    /* renamed from: e0 */
    protected void mo8287e0(C7205z3 c7205z3) {
    }

    /* renamed from: f0 */
    public void mo8286f0(long j) {
        while (true) {
            int i = this.f22619A0;
            if (i == 0 || j < this.f22620B[0]) {
                return;
            }
            long[] jArr = this.f22683z;
            this.f22682y0 = jArr[0];
            this.f22684z0 = this.f22618A[0];
            int i2 = i - 1;
            this.f22619A0 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f22618A;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f22619A0);
            long[] jArr3 = this.f22620B;
            System.arraycopy(jArr3, 1, jArr3, 0, this.f22619A0);
            mo8274w();
        }
    }

    /* renamed from: g0 */
    public final float m15347g0() {
        return this.f22629H;
    }

    /* renamed from: h0 */
    public final long m15346h0() {
        return this.f22684z0;
    }

    /* renamed from: j0 */
    public final ef3 m15344j0() {
        return this.f22621B0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: m */
    public void mo8285m(boolean z, boolean z2) {
        this.f22680x0 = new C6780nm();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: n */
    public void mo8284n(long j, boolean z) {
        this.f22674u0 = false;
        this.f22676v0 = false;
        if (this.f22656i0) {
            this.f22675v.mo8537a();
            this.f22673u.mo8537a();
            this.f22657j0 = false;
        } else {
            m15353D();
        }
        if (this.f22677w.m11094c() > 0) {
            this.f22678w0 = true;
        }
        this.f22677w.m11095b();
        int i = this.f22619A0;
        if (i != 0) {
            int i2 = i - 1;
            this.f22684z0 = this.f22618A[i2];
            this.f22682y0 = this.f22683z[i2];
            this.f22619A0 = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: q */
    public void mo8279q() {
        this.f22622C = null;
        this.f22682y0 = -9223372036854775807L;
        this.f22684z0 = -9223372036854775807L;
        this.f22619A0 = 0;
        m15352E();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: r */
    public void mo8278r() {
        try {
            m15343k0();
            m15354C();
        } finally {
            this.f22625D0 = null;
        }
    }

    /* renamed from: t */
    protected abstract void mo8277t(C7205z3 c7205z3);

    /* renamed from: t0 */
    protected abstract int mo8276t0(g03 g03Var, C7021u4 c7021u4);

    /* renamed from: u0 */
    protected abstract List<vw2> mo8275u0(g03 g03Var, C7021u4 c7021u4, boolean z);

    /* renamed from: v0 */
    protected boolean mo9311v0(C7021u4 c7021u4) {
        return false;
    }

    /* renamed from: w */
    protected abstract void mo8274w();

    /* renamed from: w0 */
    protected abstract zt2 mo8273w0(vw2 vw2Var, C7021u4 c7021u4, MediaCrypto mediaCrypto, float f);

    /* renamed from: x */
    protected void mo9310x() {
    }

    /* renamed from: x0 */
    protected abstract C6781nn mo8272x0(vw2 vw2Var, C7021u4 c7021u4, C7021u4 c7021u42);

    /* renamed from: y */
    protected abstract boolean mo8271y(long j, long j2, ef3 ef3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C7021u4 c7021u4);

    /* renamed from: y0 */
    protected abstract float mo8270y0(float f, C7021u4 c7021u4, C7021u4[] c7021u4Arr);

    /* JADX WARN: Code restructure failed: missing block: B:159:0x03bb, code lost:
        if ("stvm8".equals(r0) == false) goto L166;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02de A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x036a A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x038b A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03a6 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03e7 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0408 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x047a A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04a8 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04c2 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x051f A[Catch: Exception -> 0x0577, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0534 A[Catch: Exception -> 0x0577, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0571 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15333z() {
        /*
            Method dump skipped, instructions count: 1537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ey2.m15333z():void");
    }

    /* renamed from: z0 */
    protected abstract void mo8269z0(String str, long j, long j2);
}
