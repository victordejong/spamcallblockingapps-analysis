package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwt.class */
public final class dwt {

    /* renamed from: v */
    private static boolean f47816v = false;

    /* renamed from: w */
    private static boolean f47817w = false;

    /* renamed from: B */
    private final long[] f47819B;

    /* renamed from: C */
    private final LinkedList<dww> f47820C;

    /* renamed from: D */
    private AudioTrack f47821D;

    /* renamed from: E */
    private dvz f47822E;

    /* renamed from: F */
    private long f47823F;

    /* renamed from: G */
    private long f47824G;

    /* renamed from: H */
    private ByteBuffer f47825H;

    /* renamed from: I */
    private int f47826I;

    /* renamed from: J */
    private int f47827J;

    /* renamed from: K */
    private long f47828K;

    /* renamed from: L */
    private long f47829L;

    /* renamed from: M */
    private boolean f47830M;

    /* renamed from: N */
    private long f47831N;

    /* renamed from: O */
    private Method f47832O;

    /* renamed from: P */
    private long f47833P;

    /* renamed from: Q */
    private long f47834Q;

    /* renamed from: R */
    private long f47835R;

    /* renamed from: S */
    private long f47836S;

    /* renamed from: T */
    private int f47837T;

    /* renamed from: U */
    private long f47838U;

    /* renamed from: V */
    private long f47839V;

    /* renamed from: W */
    private long f47840W;

    /* renamed from: X */
    private dwj[] f47841X;

    /* renamed from: Y */
    private ByteBuffer[] f47842Y;

    /* renamed from: Z */
    private ByteBuffer f47843Z;

    /* renamed from: a */
    final dwz f47844a;

    /* renamed from: aa */
    private ByteBuffer f47845aa;

    /* renamed from: ab */
    private byte[] f47846ab;

    /* renamed from: ac */
    private int f47847ac;

    /* renamed from: ad */
    private int f47848ad;

    /* renamed from: ae */
    private boolean f47849ae;

    /* renamed from: af */
    private long f47850af;

    /* renamed from: b */
    final dwj[] f47851b;

    /* renamed from: c */
    final dwv f47852c;

    /* renamed from: d */
    int f47853d;

    /* renamed from: e */
    int f47854e;

    /* renamed from: f */
    int f47855f;

    /* renamed from: g */
    int f47856g;

    /* renamed from: h */
    int f47857h;

    /* renamed from: i */
    boolean f47858i;

    /* renamed from: j */
    int f47859j;

    /* renamed from: k */
    long f47860k;

    /* renamed from: l */
    dvz f47861l;

    /* renamed from: m */
    int f47862m;

    /* renamed from: n */
    int f47863n;

    /* renamed from: o */
    int f47864o;

    /* renamed from: p */
    int f47865p;

    /* renamed from: q */
    float f47866q;

    /* renamed from: r */
    boolean f47867r;

    /* renamed from: s */
    boolean f47868s;

    /* renamed from: t */
    int f47869t;

    /* renamed from: u */
    boolean f47870u;

    /* renamed from: y */
    private final dxh f47872y;

    /* renamed from: z */
    private final dwx f47873z;

    /* renamed from: x */
    private final dwh f47871x = null;

    /* renamed from: A */
    private final ConditionVariable f47818A = new ConditionVariable(true);

    public dwt(dwh dwhVar, dwj[] dwjVarArr, dwx dwxVar) {
        this.f47873z = dwxVar;
        if (ede.f48739a >= 18) {
            try {
                this.f47832O = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (ede.f48739a >= 19) {
            this.f47852c = new dwu();
        } else {
            this.f47852c = new dwv(null);
        }
        dwz dwzVar = new dwz();
        this.f47844a = dwzVar;
        dxh dxhVar = new dxh();
        this.f47872y = dxhVar;
        dwj[] dwjVarArr2 = new dwj[dwjVarArr.length + 3];
        this.f47851b = dwjVarArr2;
        dwjVarArr2[0] = new dxf();
        dwjVarArr2[1] = dwzVar;
        System.arraycopy(dwjVarArr, 0, dwjVarArr2, 2, dwjVarArr.length);
        dwjVarArr2[dwjVarArr.length + 2] = dxhVar;
        this.f47819B = new long[10];
        this.f47866q = 1.0f;
        this.f47865p = 0;
        this.f47857h = 3;
        this.f47869t = 0;
        this.f47861l = dvz.f47757a;
        this.f47848ad = -1;
        this.f47841X = new dwj[0];
        this.f47842Y = new ByteBuffer[0];
        this.f47820C = new LinkedList<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0198, code lost:
        if (r13 < r0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0217  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m15559b(java.nio.ByteBuffer r8, long r9) throws com.google.android.gms.internal.ads.zzjb {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwt.m15559b(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: c */
    private final void m15557c(long j) throws zzjb {
        ByteBuffer byteBuffer;
        int length = this.f47841X.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f47842Y[i - 1];
            } else {
                byteBuffer = this.f47843Z;
                if (byteBuffer == null) {
                    byteBuffer = dwj.f47795a;
                }
            }
            if (i == length) {
                m15559b(byteBuffer, j);
            } else {
                dwj dwjVar = this.f47841X[i];
                dwjVar.mo15518a(byteBuffer);
                ByteBuffer mo15515d = dwjVar.mo15515d();
                this.f47842Y[i] = mo15515d;
                if (mo15515d.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: j */
    private final boolean m15550j() {
        if (ede.f48739a < 23) {
            int i = this.f47856g;
            return i == 5 || i == 6;
        }
        return false;
    }

    /* renamed from: a */
    public final long m15566a(long j) {
        return (j * 1000000) / this.f47853d;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* renamed from: a */
    public final long m15562a(boolean z) {
        char c;
        char c2;
        char c3;
        char c4;
        Method method;
        if (!(m15553g() && this.f47865p != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.f47821D.getPlayState() == 3) {
            long m15542f = this.f47852c.m15542f();
            if (m15542f != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.f47829L >= 30000) {
                    long[] jArr = this.f47819B;
                    int i = this.f47826I;
                    jArr[i] = m15542f - nanoTime;
                    this.f47826I = (i + 1) % 10;
                    int i2 = this.f47827J;
                    if (i2 < 10) {
                        this.f47827J = i2 + 1;
                    }
                    this.f47829L = nanoTime;
                    this.f47828K = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.f47827J;
                        if (i3 >= i4) {
                            break;
                        }
                        this.f47828K += this.f47819B[i3] / i4;
                        i3++;
                    }
                }
                if (!m15550j() && nanoTime - this.f47831N >= 500000) {
                    boolean mo15549a = this.f47852c.mo15549a();
                    this.f47830M = mo15549a;
                    if (mo15549a) {
                        long mo15546b = this.f47852c.mo15546b() / 1000;
                        long mo15545c = this.f47852c.mo15545c();
                        if (mo15546b < this.f47839V) {
                            this.f47830M = false;
                        } else if (Math.abs(mo15546b - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(mo15545c);
                            sb.append(", ");
                            sb.append(mo15546b);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(m15542f);
                            Log.w("AudioTrack", sb.toString());
                            this.f47830M = false;
                        } else if (Math.abs(m15566a(mo15545c) - m15542f) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(mo15545c);
                            sb2.append(", ");
                            sb2.append(mo15546b);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(m15542f);
                            Log.w("AudioTrack", sb2.toString());
                            this.f47830M = false;
                        }
                    }
                    if (this.f47832O != null && !this.f47858i) {
                        try {
                            long intValue = (((Integer) method.invoke(this.f47821D, null)).intValue() * 1000) - this.f47860k;
                            this.f47840W = intValue;
                            long max = Math.max(intValue, 0L);
                            this.f47840W = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("AudioTrack", sb3.toString());
                                this.f47840W = 0L;
                            }
                        } catch (Exception e) {
                            this.f47832O = null;
                        }
                    }
                    this.f47831N = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.f47830M) {
            c = m15566a(this.f47852c.mo15545c() + m15560b(nanoTime2 - (this.f47852c.mo15546b() / 1000)));
        } else {
            char m15542f2 = this.f47827J == 0 ? this.f47852c.m15542f() : nanoTime2 + this.f47828K;
            c = m15542f2;
            if (!z) {
                c = m15542f2 - this.f47840W;
            }
        }
        long j = this.f47838U;
        while (!this.f47820C.isEmpty() && c >= this.f47820C.getFirst().f47889c) {
            dww remove = this.f47820C.remove();
            this.f47861l = remove.f47887a;
            this.f47824G = remove.f47889c;
            this.f47823F = remove.f47888b - this.f47838U;
        }
        if (this.f47861l.f47758b == 1.0f) {
            c2 = (c + this.f47823F) - this.f47824G;
        } else {
            if (!this.f47820C.isEmpty() || this.f47872y.f47946e < 1024) {
                c3 = this.f47823F;
                c4 = (long) (this.f47861l.f47758b * (c - this.f47824G));
            } else {
                c3 = this.f47823F;
                c4 = ede.m15196a(c - this.f47824G, this.f47872y.f47945d, this.f47872y.f47946e);
            }
            c2 = c4 + c3;
        }
        return j + c2;
    }

    /* renamed from: a */
    public final dvz m15565a(dvz dvzVar) {
        if (this.f47858i) {
            dvz dvzVar2 = dvz.f47757a;
            this.f47861l = dvzVar2;
            return dvzVar2;
        }
        dxh dxhVar = this.f47872y;
        dxhVar.f47943b = ede.m15200a(dvzVar.f47758b);
        float f = dxhVar.f47943b;
        dxh dxhVar2 = this.f47872y;
        float f2 = dvzVar.f47759c;
        dxhVar2.f47944c = ede.m15200a(f2);
        dvz dvzVar3 = new dvz(f, f2);
        dvz dvzVar4 = this.f47822E;
        if (dvzVar4 == null) {
            dvzVar4 = !this.f47820C.isEmpty() ? this.f47820C.getLast().f47887a : this.f47861l;
        }
        if (!dvzVar3.equals(dvzVar4)) {
            if (m15553g()) {
                this.f47822E = dvzVar3;
            } else {
                this.f47861l = dvzVar3;
            }
        }
        return this.f47861l;
    }

    /* renamed from: a */
    public final void m15567a() {
        dwj[] dwjVarArr;
        ArrayList arrayList = new ArrayList();
        for (dwj dwjVar : this.f47851b) {
            if (dwjVar.mo15520a()) {
                arrayList.add(dwjVar);
            } else {
                dwjVar.mo15513f();
            }
        }
        int size = arrayList.size();
        this.f47841X = (dwj[]) arrayList.toArray(new dwj[size]);
        this.f47842Y = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            dwj dwjVar2 = this.f47841X[i];
            dwjVar2.mo15513f();
            this.f47842Y[i] = dwjVar2.mo15515d();
        }
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: a */
    public final boolean m15563a(ByteBuffer byteBuffer, long j) throws zziw, zzjb {
        int i;
        ByteBuffer byteBuffer2 = this.f47843Z;
        ecr.m15249a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!m15553g()) {
            this.f47818A.block();
            if (this.f47870u) {
                this.f47821D = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.f47854e).setEncoding(this.f47856g).setSampleRate(this.f47853d).build(), this.f47859j, 1, this.f47869t);
            } else if (this.f47869t == 0) {
                this.f47821D = new AudioTrack(this.f47857h, this.f47853d, this.f47854e, this.f47856g, this.f47859j, 1);
            } else {
                this.f47821D = new AudioTrack(this.f47857h, this.f47853d, this.f47854e, this.f47856g, this.f47859j, 1, this.f47869t);
            }
            int state = this.f47821D.getState();
            if (state != 1) {
                try {
                    this.f47821D.release();
                } catch (Exception e) {
                } finally {
                    this.f47821D = null;
                }
                throw new zziw(state, this.f47853d, this.f47854e, this.f47859j);
            }
            int audioSessionId = this.f47821D.getAudioSessionId();
            if (this.f47869t != audioSessionId) {
                this.f47869t = audioSessionId;
                this.f47873z.mo15533a(audioSessionId);
            }
            this.f47852c.mo15547a(this.f47821D, m15550j());
            m15555e();
            this.f47849ae = false;
            if (this.f47868s) {
                m15561b();
            }
        }
        if (m15550j()) {
            if (this.f47821D.getPlayState() == 2) {
                this.f47849ae = false;
                return false;
            } else if (this.f47821D.getPlayState() == 1 && this.f47852c.m15543e() != 0) {
                return false;
            }
        }
        boolean z = this.f47849ae;
        boolean m15556d = m15556d();
        this.f47849ae = m15556d;
        if (z && !m15556d && this.f47821D.getPlayState() != 1) {
            this.f47873z.mo15532a(this.f47859j, dvj.m15657a(this.f47860k), SystemClock.elapsedRealtime() - this.f47850af);
        }
        if (this.f47843Z == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.f47858i && this.f47837T == 0) {
                int i2 = this.f47856g;
                if (i2 == 7 || i2 == 8) {
                    i = dxb.m15535a(byteBuffer);
                } else if (i2 == 5) {
                    i = dwi.m15573a();
                } else if (i2 != 6) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i2);
                    throw new IllegalStateException(sb.toString());
                } else {
                    i = dwi.m15571a(byteBuffer);
                }
                this.f47837T = i;
            }
            if (this.f47822E != null) {
                if (!m15558c()) {
                    return false;
                }
                this.f47820C.add(new dww(this.f47822E, Math.max(0L, j), m15566a(m15552h()), null));
                this.f47822E = null;
                m15567a();
            }
            if (this.f47865p == 0) {
                this.f47838U = Math.max(0L, j);
                this.f47865p = 1;
            } else {
                long m15566a = this.f47838U + m15566a(this.f47858i ? this.f47834Q : this.f47833P / this.f47863n);
                if (this.f47865p == 1 && Math.abs(m15566a - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(m15566a);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.f47865p = 2;
                }
                if (this.f47865p == 2) {
                    this.f47838U += j - m15566a;
                    this.f47865p = 1;
                    this.f47873z.mo15534a();
                }
            }
            if (this.f47858i) {
                this.f47834Q += this.f47837T;
            } else {
                this.f47833P += byteBuffer.remaining();
            }
            this.f47843Z = byteBuffer;
        }
        if (this.f47858i) {
            m15559b(this.f47843Z, j);
        } else {
            m15557c(j);
        }
        if (!this.f47843Z.hasRemaining()) {
            this.f47843Z = null;
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final long m15560b(long j) {
        return (j * this.f47853d) / 1000000;
    }

    /* renamed from: b */
    public final void m15561b() {
        this.f47868s = true;
        if (m15553g()) {
            this.f47839V = System.nanoTime() / 1000;
            this.f47821D.play();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m15558c() throws com.google.android.gms.internal.ads.zzjb {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f47848ad
            r1 = -1
            if (r0 != r1) goto L24
            r0 = r5
            boolean r0 = r0.f47858i
            if (r0 == 0) goto L18
            r0 = r5
            com.google.android.gms.internal.ads.dwj[] r0 = r0.f47841X
            int r0 = r0.length
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r5
            r1 = r6
            r0.f47848ad = r1
        L1f:
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r5
            int r0 = r0.f47848ad
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.dwj[] r0 = r0.f47841X
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L63
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r8
            r0.mo15516c()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m15557c(r1)
            r0 = r8
            boolean r0 = r0.mo15514e()
            if (r0 != 0) goto L56
            r0 = 0
            return r0
        L56:
            r0 = r5
            r1 = r5
            int r1 = r1.f47848ad
            r2 = 1
            int r1 = r1 + r2
            r0.f47848ad = r1
            goto L1f
        L63:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f47845aa
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m15559b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f47845aa
            if (r0 == 0) goto L7e
            r0 = 0
            return r0
        L7e:
            r0 = r5
            r1 = -1
            r0.f47848ad = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwt.m15558c():boolean");
    }

    /* renamed from: d */
    public final boolean m15556d() {
        if (m15553g()) {
            if (m15552h() > this.f47852c.m15543e()) {
                return true;
            }
            return m15550j() && this.f47821D.getPlayState() == 2 && this.f47821D.getPlaybackHeadPosition() == 0;
        }
        return false;
    }

    /* renamed from: e */
    public final void m15555e() {
        if (m15553g()) {
            if (ede.f48739a >= 21) {
                this.f47821D.setVolume(this.f47866q);
                return;
            }
            AudioTrack audioTrack = this.f47821D;
            float f = this.f47866q;
            audioTrack.setStereoVolume(f, f);
        }
    }

    /* renamed from: f */
    public final void m15554f() {
        if (m15553g()) {
            this.f47833P = 0L;
            this.f47834Q = 0L;
            this.f47835R = 0L;
            this.f47836S = 0L;
            this.f47837T = 0;
            dvz dvzVar = this.f47822E;
            if (dvzVar != null) {
                this.f47861l = dvzVar;
                this.f47822E = null;
            } else if (!this.f47820C.isEmpty()) {
                this.f47861l = this.f47820C.getLast().f47887a;
            }
            this.f47820C.clear();
            this.f47823F = 0L;
            this.f47824G = 0L;
            this.f47843Z = null;
            this.f47845aa = null;
            int i = 0;
            while (true) {
                dwj[] dwjVarArr = this.f47841X;
                if (i >= dwjVarArr.length) {
                    break;
                }
                dwj dwjVar = dwjVarArr[i];
                dwjVar.mo15513f();
                this.f47842Y[i] = dwjVar.mo15515d();
                i++;
            }
            this.f47867r = false;
            this.f47848ad = -1;
            this.f47825H = null;
            this.f47862m = 0;
            this.f47865p = 0;
            this.f47840W = 0L;
            m15551i();
            if (this.f47821D.getPlayState() == 3) {
                this.f47821D.pause();
            }
            AudioTrack audioTrack = this.f47821D;
            this.f47821D = null;
            this.f47852c.mo15547a(null, false);
            this.f47818A.close();
            new dws(this, audioTrack).start();
        }
    }

    /* renamed from: g */
    public final boolean m15553g() {
        return this.f47821D != null;
    }

    /* renamed from: h */
    public final long m15552h() {
        return this.f47858i ? this.f47836S : this.f47835R / this.f47864o;
    }

    /* renamed from: i */
    public final void m15551i() {
        this.f47828K = 0L;
        this.f47827J = 0;
        this.f47826I = 0;
        this.f47829L = 0L;
        this.f47830M = false;
        this.f47831N = 0L;
    }
}
