package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fm2.class */
public final class fm2 {

    /* renamed from: A */
    private Method f6511A;

    /* renamed from: B */
    private int f6512B;

    /* renamed from: C */
    private long f6513C;

    /* renamed from: D */
    private long f6514D;

    /* renamed from: E */
    private int f6515E;

    /* renamed from: F */
    private long f6516F;

    /* renamed from: G */
    private long f6517G;

    /* renamed from: H */
    private int f6518H;

    /* renamed from: I */
    private int f6519I;

    /* renamed from: J */
    private long f6520J;

    /* renamed from: K */
    private long f6521K;

    /* renamed from: L */
    private long f6522L;

    /* renamed from: M */
    private float f6523M;

    /* renamed from: N */
    private rl2[] f6524N;

    /* renamed from: O */
    private ByteBuffer[] f6525O;

    /* renamed from: P */
    private ByteBuffer f6526P;

    /* renamed from: Q */
    private ByteBuffer f6527Q;

    /* renamed from: R */
    private byte[] f6528R;

    /* renamed from: S */
    private int f6529S;

    /* renamed from: T */
    private int f6530T;

    /* renamed from: U */
    private boolean f6531U;

    /* renamed from: V */
    private boolean f6532V;

    /* renamed from: W */
    private int f6533W;

    /* renamed from: X */
    private boolean f6534X;

    /* renamed from: Y */
    private long f6535Y;

    /* renamed from: a */
    private final gm2 f6536a;

    /* renamed from: b */
    private final mm2 f6537b;

    /* renamed from: c */
    private final rl2[] f6538c;

    /* renamed from: d */
    private final dm2 f6539d;

    /* renamed from: e */
    private final ConditionVariable f6540e = new ConditionVariable(true);

    /* renamed from: f */
    private final long[] f6541f;

    /* renamed from: g */
    private final bm2 f6542g;

    /* renamed from: h */
    private final LinkedList<em2> f6543h;

    /* renamed from: i */
    private AudioTrack f6544i;

    /* renamed from: j */
    private int f6545j;

    /* renamed from: k */
    private int f6546k;

    /* renamed from: l */
    private int f6547l;

    /* renamed from: m */
    private int f6548m;

    /* renamed from: n */
    private boolean f6549n;

    /* renamed from: o */
    private int f6550o;

    /* renamed from: p */
    private long f6551p;

    /* renamed from: q */
    private gl2 f6552q;

    /* renamed from: r */
    private gl2 f6553r;

    /* renamed from: s */
    private long f6554s;

    /* renamed from: t */
    private long f6555t;

    /* renamed from: u */
    private int f6556u;

    /* renamed from: v */
    private int f6557v;

    /* renamed from: w */
    private long f6558w;

    /* renamed from: x */
    private long f6559x;

    /* renamed from: y */
    private boolean f6560y;

    /* renamed from: z */
    private long f6561z;

    public fm2(ql2 ql2Var, rl2[] rl2VarArr, dm2 dm2Var) {
        this.f6539d = dm2Var;
        if (zr2.f9434a >= 18) {
            try {
                this.f6511A = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f6542g = zr2.f9434a >= 19 ? new cm2() : new bm2(null);
        rl2 gm2Var = new gm2();
        this.f6536a = gm2Var;
        rl2 mm2Var = new mm2();
        this.f6537b = mm2Var;
        this.f6538c = r0;
        System.arraycopy(rl2VarArr, 0, r0, 2, 0);
        rl2[] rl2VarArr2 = {new km2(), gm2Var, mm2Var};
        this.f6541f = new long[10];
        this.f6523M = 1.0f;
        this.f6519I = 0;
        this.f6533W = 0;
        this.f6553r = gl2.f6663d;
        this.f6530T = -1;
        this.f6524N = new rl2[0];
        this.f6525O = new ByteBuffer[0];
        this.f6543h = new LinkedList<>();
    }

    /* renamed from: p */
    private final void m7484p() {
        ArrayList arrayList = new ArrayList();
        rl2[] rl2VarArr = this.f6538c;
        for (int i = 0; i < 3; i++) {
            rl2 rl2Var = rl2VarArr[i];
            if (rl2Var.m5903b()) {
                arrayList.add(rl2Var);
            } else {
                rl2Var.m5896i();
            }
        }
        int size = arrayList.size();
        this.f6524N = (rl2[]) arrayList.toArray(new rl2[size]);
        this.f6525O = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            rl2 rl2Var2 = this.f6524N[i2];
            rl2Var2.m5896i();
            this.f6525O[i2] = rl2Var2.m5898g();
        }
    }

    /* renamed from: q */
    private final void m7483q(long j) {
        ByteBuffer byteBuffer;
        int length = this.f6524N.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f6525O[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.f6526P;
                byteBuffer = byteBuffer2;
                if (byteBuffer2 == null) {
                    byteBuffer = rl2.f8363a;
                }
            }
            if (i == length) {
                m7482r(byteBuffer, j);
            } else {
                rl2 rl2Var = this.f6524N[i];
                rl2Var.m5895j(byteBuffer);
                ByteBuffer g = rl2Var.m5898g();
                this.f6525O[i] = g;
                if (g.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    /* renamed from: r */
    private final boolean m7482r(ByteBuffer byteBuffer, long j) {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.f6527Q;
        if (byteBuffer2 != null) {
            jr2.m6926a(byteBuffer2 == byteBuffer);
        } else {
            this.f6527Q = byteBuffer;
            if (zr2.f9434a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f6528R;
                if (bArr == null || bArr.length < remaining) {
                    this.f6528R = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f6528R, 0, remaining);
                byteBuffer.position(position);
                this.f6529S = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (zr2.f9434a < 21) {
            int d = this.f6550o - ((int) (this.f6516F - (this.f6542g.m7951d() * this.f6515E)));
            if (d > 0) {
                int write = this.f6544i.write(this.f6528R, this.f6529S, Math.min(remaining2, d));
                i = write;
                if (write > 0) {
                    this.f6529S += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            } else {
                i = 0;
            }
        } else {
            i = this.f6544i.write(byteBuffer, remaining2, 1);
        }
        this.f6535Y = SystemClock.elapsedRealtime();
        if (i >= 0) {
            boolean z = this.f6549n;
            if (!z) {
                this.f6516F += i;
            }
            if (i != remaining2) {
                return false;
            }
            if (z) {
                this.f6517G += this.f6518H;
            }
            this.f6527Q = null;
            return true;
        }
        throw new zzjy(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0056 -> B:8:0x001a). Please submit an issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m7481s() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f6530T
            r1 = -1
            if (r0 != r1) goto L_0x0024
            r0 = r5
            boolean r0 = r0.f6549n
            if (r0 == 0) goto L_0x0018
            r0 = r5
            com.google.android.gms.internal.ads.rl2[] r0 = r0.f6524N
            int r0 = r0.length
            r6 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r6 = r0
        L_0x001a:
            r0 = r5
            r1 = r6
            r0.f6530T = r1
            r0 = 1
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r6 = r0
        L_0x0026:
            r0 = r5
            int r0 = r0.f6530T
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.rl2[] r0 = r0.f6524N
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0060
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0044
            r0 = r8
            r0.m5901d()
        L_0x0044:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m7483q(r1)
            r0 = r8
            boolean r0 = r0.m5900e()
            if (r0 != 0) goto L_0x0056
            r0 = 0
            return r0
        L_0x0056:
            r0 = r5
            int r0 = r0.f6530T
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L_0x001a
        L_0x0060:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f6527Q
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m7482r(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f6527Q
            if (r0 == 0) goto L_0x007b
            r0 = 0
            return r0
        L_0x007b:
            r0 = r5
            r1 = -1
            r0.f6530T = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fm2.m7481s():boolean");
    }

    /* renamed from: t */
    private final void m7480t() {
        if (m7479u()) {
            if (zr2.f9434a >= 21) {
                this.f6544i.setVolume(this.f6523M);
                return;
            }
            AudioTrack audioTrack = this.f6544i;
            float f = this.f6523M;
            audioTrack.setStereoVolume(f, f);
        }
    }

    /* renamed from: u */
    private final boolean m7479u() {
        return this.f6544i != null;
    }

    /* renamed from: v */
    private final long m7478v(long j) {
        return (j * 1000000) / this.f6545j;
    }

    /* renamed from: w */
    private final long m7477w(long j) {
        return (j * this.f6545j) / 1000000;
    }

    /* renamed from: x */
    private final long m7476x() {
        return this.f6549n ? this.f6517G : this.f6516F / this.f6515E;
    }

    /* renamed from: y */
    private final void m7475y() {
        this.f6558w = 0L;
        this.f6557v = 0;
        this.f6556u = 0;
        this.f6559x = 0L;
        this.f6560y = false;
        this.f6561z = 0L;
    }

    /* renamed from: z */
    private final boolean m7474z() {
        boolean z = true;
        if (zr2.f9434a < 23) {
            int i = this.f6548m;
            if (i != 5) {
                if (i == 6) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m7499a(boolean r9) {
        /*
            Method dump skipped, instructions count: 877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fm2.m7499a(boolean):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0207  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7498b(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fm2.m7498b(java.lang.String, int, int, int, int, int[]):void");
    }

    /* renamed from: c */
    public final void m7497c() {
        this.f6532V = true;
        if (m7479u()) {
            this.f6521K = System.nanoTime() / 1000;
            this.f6544i.play();
        }
    }

    /* renamed from: d */
    public final void m7496d() {
        if (this.f6519I == 1) {
            this.f6519I = 2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v43, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [com.google.android.gms.internal.ads.yl2, long, int] */
    /* JADX WARN: Type inference failed for: r0v76, types: [int] */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v80, types: [android.media.AudioTrack] */
    /* JADX WARN: Type inference failed for: r0v89, types: [com.google.android.gms.internal.ads.yl2, int] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m7495e(java.nio.ByteBuffer r11, long r12) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fm2.m7495e(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: f */
    public final void m7494f() {
        if (!this.f6531U && m7479u() && m7481s()) {
            this.f6542g.m7953b(m7476x());
            this.f6531U = true;
        }
    }

    /* renamed from: g */
    public final boolean m7493g() {
        boolean z = false;
        if (m7479u()) {
            if (this.f6531U) {
                if (m7492h()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: h */
    public final boolean m7492h() {
        boolean z = true;
        if (m7479u()) {
            if (m7476x() <= this.f6542g.m7951d()) {
                if (m7474z() && this.f6544i.getPlayState() == 2 && this.f6544i.getPlaybackHeadPosition() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: i */
    public final gl2 m7491i(gl2 gl2Var) {
        if (this.f6549n) {
            gl2 gl2Var2 = gl2.f6663d;
            this.f6553r = gl2Var2;
            return gl2Var2;
        }
        float k = this.f6537b.k(gl2Var.f6664a);
        mm2 mm2Var = this.f6537b;
        float f = gl2Var.f6665b;
        mm2Var.l(1.0f);
        gl2 gl2Var3 = new gl2(k, 1.0f);
        gl2 gl2Var4 = this.f6552q;
        gl2 gl2Var5 = gl2Var4;
        if (gl2Var4 == null) {
            gl2Var5 = !this.f6543h.isEmpty() ? em2.m7607a(this.f6543h.getLast()) : this.f6553r;
        }
        if (!gl2Var3.equals(gl2Var5)) {
            if (m7479u()) {
                this.f6552q = gl2Var3;
            } else {
                this.f6553r = gl2Var3;
            }
        }
        return this.f6553r;
    }

    /* renamed from: j */
    public final gl2 m7490j() {
        return this.f6553r;
    }

    /* renamed from: k */
    public final void m7489k(float f) {
        if (this.f6523M != f) {
            this.f6523M = f;
            m7480t();
        }
    }

    /* renamed from: l */
    public final void m7488l() {
        this.f6532V = false;
        if (m7479u()) {
            m7475y();
            this.f6542g.m7952c();
        }
    }

    /* renamed from: m */
    public final void m7487m() {
        if (m7479u()) {
            this.f6513C = 0L;
            this.f6514D = 0L;
            this.f6516F = 0L;
            this.f6517G = 0L;
            this.f6518H = 0;
            gl2 gl2Var = this.f6552q;
            if (gl2Var != null) {
                this.f6553r = gl2Var;
                this.f6552q = null;
            } else if (!this.f6543h.isEmpty()) {
                this.f6553r = em2.m7607a(this.f6543h.getLast());
            }
            this.f6543h.clear();
            this.f6554s = 0L;
            this.f6555t = 0L;
            this.f6526P = null;
            this.f6527Q = null;
            int i = 0;
            while (true) {
                rl2[] rl2VarArr = this.f6524N;
                if (i >= rl2VarArr.length) {
                    break;
                }
                rl2 rl2Var = rl2VarArr[i];
                rl2Var.m5896i();
                this.f6525O[i] = rl2Var.m5898g();
                i++;
            }
            this.f6531U = false;
            this.f6530T = -1;
            this.f6519I = 0;
            this.f6522L = 0L;
            m7475y();
            if (this.f6544i.getPlayState() == 3) {
                this.f6544i.pause();
            }
            AudioTrack audioTrack = this.f6544i;
            this.f6544i = null;
            this.f6542g.m7954a(null, false);
            this.f6540e.close();
            new am2(this, audioTrack).start();
        }
    }

    /* renamed from: n */
    public final void m7486n() {
        m7487m();
        rl2[] rl2VarArr = this.f6538c;
        for (int i = 0; i < 3; i++) {
            rl2VarArr[i].m5897h();
        }
        this.f6533W = 0;
        this.f6532V = false;
    }
}
