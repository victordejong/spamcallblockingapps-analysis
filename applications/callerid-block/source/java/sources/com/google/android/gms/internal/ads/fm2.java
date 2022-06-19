package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
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
                ByteBuffer m5898g = rl2Var.m5898g();
                this.f6525O[i] = m5898g;
                if (m5898g.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
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
            int m7951d = this.f6550o - ((int) (this.f6516F - (this.f6542g.m7951d() * this.f6515E)));
            if (m7951d > 0) {
                int write = this.f6544i.write(this.f6528R, this.f6529S, Math.min(remaining2, m7951d));
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
        if (i < 0) {
            throw new zzjy(i);
        }
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
            if (r0 != r1) goto L24
            r0 = r5
            boolean r0 = r0.f6549n
            if (r0 == 0) goto L18
            r0 = r5
            com.google.android.gms.internal.ads.rl2[] r0 = r0.f6524N
            int r0 = r0.length
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r5
            r1 = r6
            r0.f6530T = r1
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r5
            int r0 = r0.f6530T
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.rl2[] r0 = r0.f6524N
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L60
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r8
            r0.m5901d()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m7483q(r1)
            r0 = r8
            boolean r0 = r0.m5900e()
            if (r0 != 0) goto L56
            r0 = 0
            return r0
        L56:
            r0 = r5
            int r0 = r0.f6530T
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L1a
        L60:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f6527Q
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m7482r(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f6527Q
            if (r0 == 0) goto L7b
            r0 = 0
            return r0
        L7b:
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
        if (!m7479u()) {
            return;
        }
        if (zr2.f9434a >= 21) {
            this.f6544i.setVolume(this.f6523M);
            return;
        }
        AudioTrack audioTrack = this.f6544i;
        float f = this.f6523M;
        audioTrack.setStereoVolume(f, f);
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

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
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

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* renamed from: a */
    public final long m7499a(boolean z) {
        char c;
        char c2;
        char c3;
        char c4;
        long j;
        gl2 gl2Var;
        long j2;
        long j3;
        Method method;
        StringBuilder sb;
        String str;
        if (!m7479u() || this.f6519I == 0) {
            return Long.MIN_VALUE;
        }
        if (this.f6544i.getPlayState() == 3) {
            long m7950e = this.f6542g.m7950e();
            if (m7950e != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.f6559x >= 30000) {
                    long[] jArr = this.f6541f;
                    int i = this.f6556u;
                    jArr[i] = m7950e - nanoTime;
                    this.f6556u = (i + 1) % 10;
                    int i2 = this.f6557v;
                    if (i2 < 10) {
                        this.f6557v = i2 + 1;
                    }
                    this.f6559x = nanoTime;
                    this.f6558w = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.f6557v;
                        if (i3 >= i4) {
                            break;
                        }
                        this.f6558w += this.f6541f[i3] / i4;
                        i3++;
                    }
                }
                if (!m7474z() && nanoTime - this.f6561z >= 500000) {
                    boolean m7949f = this.f6542g.m7949f();
                    this.f6560y = m7949f;
                    if (m7949f) {
                        long m7948g = this.f6542g.m7948g() / 1000;
                        long m7947h = this.f6542g.m7947h();
                        if (m7948g >= this.f6521K) {
                            if (Math.abs(m7948g - nanoTime) > 5000000) {
                                sb = new StringBuilder(136);
                                str = "Spurious audio timestamp (system clock mismatch): ";
                            } else if (Math.abs(m7478v(m7947h) - m7950e) > 5000000) {
                                sb = new StringBuilder(138);
                                str = "Spurious audio timestamp (frame position mismatch): ";
                            }
                            sb.append(str);
                            sb.append(m7947h);
                            sb.append(", ");
                            sb.append(m7948g);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(m7950e);
                            Log.w("AudioTrack", sb.toString());
                        }
                        this.f6560y = false;
                    }
                    if (this.f6511A != null && !this.f6549n) {
                        try {
                            long intValue = (((Integer) method.invoke(this.f6544i, null)).intValue() * 1000) - this.f6551p;
                            this.f6522L = intValue;
                            long max = Math.max(intValue, 0L);
                            this.f6522L = max;
                            if (max > 5000000) {
                                StringBuilder sb2 = new StringBuilder(61);
                                sb2.append("Ignoring impossibly large audio latency: ");
                                sb2.append(max);
                                Log.w("AudioTrack", sb2.toString());
                                this.f6522L = 0L;
                            }
                        } catch (Exception e) {
                            this.f6511A = null;
                        }
                    }
                    this.f6561z = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.f6560y) {
            c = m7478v(this.f6542g.m7947h() + m7477w(nanoTime2 - (this.f6542g.m7948g() / 1000)));
        } else {
            char m7950e2 = this.f6557v == 0 ? this.f6542g.m7950e() : nanoTime2 + this.f6558w;
            c = m7950e2;
            if (!z) {
                c = m7950e2 - this.f6522L;
            }
        }
        long j4 = this.f6520J;
        while (!this.f6543h.isEmpty()) {
            j = this.f6543h.getFirst().f6425c;
            if (c < j) {
                break;
            }
            em2 remove = this.f6543h.remove();
            gl2Var = remove.f6423a;
            this.f6553r = gl2Var;
            j2 = remove.f6425c;
            this.f6555t = j2;
            j3 = remove.f6424b;
            this.f6554s = j3 - this.f6520J;
        }
        if (this.f6553r.f6664a == 1.0f) {
            c2 = (c + this.f6554s) - this.f6555t;
        } else {
            if (!this.f6543h.isEmpty() || this.f6537b.n() < 1024) {
                ?? r0 = this.f6554s;
                double d = this.f6553r.f6664a;
                double d2 = c - this.f6555t;
                Double.isNaN(d);
                Double.isNaN(d2);
                c3 = (long) (d * d2);
                c4 = r0;
            } else {
                ?? r02 = this.f6554s;
                c3 = zr2.m4525j(c - this.f6555t, this.f6537b.m(), this.f6537b.n());
                c4 = r02;
            }
            c2 = c3 + c4;
        }
        return j4 + c2;
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
    /* JADX WARN: Type inference failed for: r0v29, types: [long, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.google.android.gms.internal.ads.yl2, long, int] */
    /* JADX WARN: Type inference failed for: r0v82, types: [int] */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v86, types: [android.media.AudioTrack] */
    /* JADX WARN: Type inference failed for: r0v95, types: [com.google.android.gms.internal.ads.yl2, int] */
    /* renamed from: e */
    public final boolean m7495e(ByteBuffer byteBuffer, long j) {
        char c;
        long j2;
        int i;
        ByteBuffer byteBuffer2 = this.f6526P;
        jr2.m6926a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!m7479u()) {
            this.f6540e.block();
            int i2 = this.f6533W;
            int i3 = this.f6545j;
            int i4 = this.f6546k;
            int i5 = this.f6548m;
            int i6 = this.f6550o;
            this.f6544i = i6 == 0 ? new AudioTrack(3, i6, i6, i6, i6, 1) : new AudioTrack(3, i6, i6, i6, i6, 1, i6);
            int state = this.f6544i.getState();
            if (state != 1) {
                try {
                    state = this.f6544i;
                    state.release();
                } catch (Exception e) {
                } catch (Throwable th) {
                    this.f6544i = null;
                    throw th;
                }
                this.f6544i = null;
                throw new zzjv(state, this.f6545j, this.f6546k, this.f6550o);
            }
            this.f6544i.getAudioSessionId();
            int i7 = this.f6533W;
            if (i7 != i7) {
                this.f6533W = i7;
                ?? a0 = jm2.a0(this.f6539d.a);
                a0.m4739f(a0);
            }
            this.f6542g.m7954a(this.f6544i, m7474z());
            m7480t();
            this.f6534X = false;
            if (this.f6532V) {
                m7497c();
            }
        }
        if (m7474z()) {
            if (this.f6544i.getPlayState() == 2) {
                this.f6534X = false;
                return false;
            } else if (this.f6544i.getPlayState() == 1 && this.f6542g.m7951d() != 0) {
                return false;
            }
        }
        boolean z = this.f6534X;
        boolean m7492h = m7492h();
        this.f6534X = m7492h;
        if (m7492h && !m7492h && this.f6544i.getPlayState() != 1) {
            SystemClock.elapsedRealtime();
            long j3 = this.f6535Y;
            dm2 dm2Var = this.f6539d;
            int i8 = this.f6550o;
            ?? a02 = jm2.a0(((im2) rk2.m5947a(this.f6551p)).a);
            a02.m4741d(a02, a02, a02 - a02);
        }
        if (this.f6526P == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.f6549n && this.f6518H == 0) {
                int i9 = this.f6548m;
                if (i9 == 7 || i9 == 8) {
                    int i10 = (byteBuffer.get(byteBuffer.get(byteBuffer.position() + 4) + 5) & 252) >> 2;
                    i = ((i10 | ((i10 & 1) << 6)) + 1) * 32;
                } else if (i9 == 5) {
                    int i11 = pl2.f8136d;
                    i = 1536;
                } else if (i9 != 6) {
                    ?? sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(sb);
                    throw new IllegalStateException(sb.toString());
                } else {
                    i = pl2.m6189c(byteBuffer);
                }
                this.f6518H = i;
            }
            if (this.f6552q != null) {
                if (!m7481s()) {
                    return false;
                }
                this.f6543h.add(new em2(this.f6552q, Math.max(0L, j), m7478v(m7476x()), null));
                this.f6552q = null;
                m7484p();
            }
            if (this.f6519I == 0) {
                this.f6520J = Math.max(0L, j);
                this.f6519I = 1;
            } else {
                long j4 = this.f6520J;
                if (this.f6549n) {
                    ?? r0 = this.f6514D;
                    c = r0;
                    j2 = r0;
                } else {
                    ?? r02 = this.f6513C / this.f6512B;
                    c = r02;
                    j2 = r02;
                }
                long m7478v = j2 + m7478v(c);
                int i12 = this.f6519I;
                if (i12 == 1 && Math.abs(i12 - j) > 200000) {
                    ?? sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(sb2);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", "AudioTrack".toString());
                    this.f6519I = 2;
                }
                int i13 = this.f6519I;
                if (i13 == 2) {
                    this.f6520J += j - i13;
                    this.f6519I = 1;
                    jm2.b0(this.f6539d.a, true);
                }
            }
            if (this.f6549n) {
                this.f6514D += this.f6518H;
            } else {
                this.f6513C += byteBuffer.remaining();
            }
            this.f6526P = byteBuffer;
        }
        if (this.f6549n) {
            m7482r(this.f6526P, j);
        } else {
            m7483q(j);
        }
        if (!this.f6526P.hasRemaining()) {
            this.f6526P = null;
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final void m7494f() {
        if (this.f6531U || !m7479u() || !m7481s()) {
            return;
        }
        this.f6542g.m7953b(m7476x());
        this.f6531U = true;
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
        gl2 gl2Var2;
        if (this.f6549n) {
            gl2 gl2Var3 = gl2.f6663d;
            this.f6553r = gl2Var3;
            return gl2Var3;
        }
        float k = this.f6537b.k(gl2Var.f6664a);
        mm2 mm2Var = this.f6537b;
        float f = gl2Var.f6665b;
        mm2Var.l(1.0f);
        gl2 gl2Var4 = new gl2(k, 1.0f);
        gl2 gl2Var5 = this.f6552q;
        gl2 gl2Var6 = gl2Var5;
        if (gl2Var5 == null) {
            if (!this.f6543h.isEmpty()) {
                gl2Var2 = this.f6543h.getLast().f6423a;
                gl2Var6 = gl2Var2;
            } else {
                gl2Var6 = this.f6553r;
            }
        }
        if (!gl2Var4.equals(gl2Var6)) {
            if (m7479u()) {
                this.f6552q = gl2Var4;
            } else {
                this.f6553r = gl2Var4;
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
        gl2 gl2Var;
        if (m7479u()) {
            this.f6513C = 0L;
            this.f6514D = 0L;
            this.f6516F = 0L;
            this.f6517G = 0L;
            this.f6518H = 0;
            gl2 gl2Var2 = this.f6552q;
            if (gl2Var2 != null) {
                this.f6553r = gl2Var2;
                this.f6552q = null;
            } else if (!this.f6543h.isEmpty()) {
                gl2Var = this.f6543h.getLast().f6423a;
                this.f6553r = gl2Var;
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
