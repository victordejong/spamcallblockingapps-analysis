package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.internal.ads.tc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tc.class */
public final class C6992tc {

    /* renamed from: A */
    private Method f29889A;

    /* renamed from: B */
    private int f29890B;

    /* renamed from: C */
    private long f29891C;

    /* renamed from: D */
    private long f29892D;

    /* renamed from: E */
    private int f29893E;

    /* renamed from: F */
    private long f29894F;

    /* renamed from: G */
    private long f29895G;

    /* renamed from: H */
    private int f29896H;

    /* renamed from: I */
    private int f29897I;

    /* renamed from: J */
    private long f29898J;

    /* renamed from: K */
    private long f29899K;

    /* renamed from: L */
    private long f29900L;

    /* renamed from: M */
    private float f29901M;

    /* renamed from: N */
    private AbstractC6436ec[] f29902N;

    /* renamed from: O */
    private ByteBuffer[] f29903O;

    /* renamed from: P */
    private ByteBuffer f29904P;

    /* renamed from: Q */
    private ByteBuffer f29905Q;

    /* renamed from: R */
    private byte[] f29906R;

    /* renamed from: S */
    private int f29907S;

    /* renamed from: T */
    private int f29908T;

    /* renamed from: U */
    private boolean f29909U;

    /* renamed from: V */
    private boolean f29910V;

    /* renamed from: W */
    private int f29911W;

    /* renamed from: X */
    private boolean f29912X;

    /* renamed from: Y */
    private long f29913Y;

    /* renamed from: a */
    private final C7029uc f29914a;

    /* renamed from: b */
    private final C6325bd f29915b;

    /* renamed from: c */
    private final AbstractC6436ec[] f29916c;

    /* renamed from: d */
    private final AbstractC6881qc f29917d;

    /* renamed from: e */
    private final ConditionVariable f29918e = new ConditionVariable(true);

    /* renamed from: f */
    private final long[] f29919f;

    /* renamed from: g */
    private final C6807oc f29920g;

    /* renamed from: h */
    private final LinkedList<C6955sc> f29921h;

    /* renamed from: i */
    private AudioTrack f29922i;

    /* renamed from: j */
    private int f29923j;

    /* renamed from: k */
    private int f29924k;

    /* renamed from: l */
    private int f29925l;

    /* renamed from: m */
    private int f29926m;

    /* renamed from: n */
    private boolean f29927n;

    /* renamed from: o */
    private int f29928o;

    /* renamed from: p */
    private long f29929p;

    /* renamed from: q */
    private C6991tb f29930q;

    /* renamed from: r */
    private C6991tb f29931r;

    /* renamed from: s */
    private long f29932s;

    /* renamed from: t */
    private long f29933t;

    /* renamed from: u */
    private int f29934u;

    /* renamed from: v */
    private int f29935v;

    /* renamed from: w */
    private long f29936w;

    /* renamed from: x */
    private long f29937x;

    /* renamed from: y */
    private boolean f29938y;

    /* renamed from: z */
    private long f29939z;

    public C6992tc(C6361cc c6361cc, AbstractC6436ec[] abstractC6436ecArr, AbstractC6881qc abstractC6881qc) {
        this.f29917d = abstractC6881qc;
        if (C6961si.f29514a >= 18) {
            try {
                this.f29889A = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (C6961si.f29514a >= 19) {
            this.f29920g = new C6844pc();
        } else {
            this.f29920g = new C6807oc(null);
        }
        C7029uc c7029uc = new C7029uc();
        this.f29914a = c7029uc;
        C6325bd c6325bd = new C6325bd();
        this.f29915b = c6325bd;
        this.f29916c = r0;
        System.arraycopy(abstractC6436ecArr, 0, r0, 2, 0);
        AbstractC6436ec[] abstractC6436ecArr2 = {new C7177yc(), c7029uc, c6325bd};
        this.f29919f = new long[10];
        this.f29901M = 1.0f;
        this.f29897I = 0;
        this.f29911W = 0;
        this.f29931r = C6991tb.f29879a;
        this.f29908T = -1;
        this.f29902N = new AbstractC6436ec[0];
        this.f29903O = new ByteBuffer[0];
        this.f29921h = new LinkedList<>();
    }

    /* renamed from: p */
    private final void m10735p() {
        ArrayList arrayList = new ArrayList();
        AbstractC6436ec[] abstractC6436ecArr = this.f29916c;
        for (int i = 0; i < 3; i++) {
            AbstractC6436ec abstractC6436ec = abstractC6436ecArr[i];
            if (abstractC6436ec.mo8867b()) {
                arrayList.add(abstractC6436ec);
            } else {
                abstractC6436ec.zzi();
            }
        }
        int size = arrayList.size();
        this.f29902N = (AbstractC6436ec[]) arrayList.toArray(new AbstractC6436ec[size]);
        this.f29903O = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC6436ec abstractC6436ec2 = this.f29902N[i2];
            abstractC6436ec2.zzi();
            this.f29903O[i2] = abstractC6436ec2.zzg();
        }
    }

    /* renamed from: q */
    private final void m10734q(long j) {
        ByteBuffer byteBuffer;
        int length = this.f29902N.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f29903O[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.f29904P;
                byteBuffer = byteBuffer2;
                if (byteBuffer2 == null) {
                    byteBuffer = AbstractC6436ec.f22058a;
                }
            }
            if (i == length) {
                m10733r(byteBuffer, j);
            } else {
                AbstractC6436ec abstractC6436ec = this.f29902N[i];
                abstractC6436ec.mo8868a(byteBuffer);
                ByteBuffer zzg = abstractC6436ec.zzg();
                this.f29903O[i] = zzg;
                if (zzg.hasRemaining()) {
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
    private final boolean m10733r(ByteBuffer byteBuffer, long j) {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.f29905Q;
        if (byteBuffer2 != null) {
            C6367ci.m16042a(byteBuffer2 == byteBuffer);
        } else {
            this.f29905Q = byteBuffer;
            if (C6961si.f29514a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f29906R;
                if (bArr == null || bArr.length < remaining) {
                    this.f29906R = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f29906R, 0, remaining);
                byteBuffer.position(position);
                this.f29907S = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (C6961si.f29514a < 21) {
            int m12699d = this.f29928o - ((int) (this.f29894F - (this.f29920g.m12699d() * this.f29893E)));
            if (m12699d > 0) {
                int write = this.f29922i.write(this.f29906R, this.f29907S, Math.min(remaining2, m12699d));
                i = write;
                if (write > 0) {
                    this.f29907S += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            } else {
                i = 0;
            }
        } else {
            i = this.f29922i.write(byteBuffer, remaining2, 1);
        }
        this.f29913Y = SystemClock.elapsedRealtime();
        if (i < 0) {
            throw new zzaos(i);
        }
        boolean z = this.f29927n;
        if (!z) {
            this.f29894F += i;
        }
        if (i != remaining2) {
            return false;
        }
        if (z) {
            this.f29895G += this.f29896H;
        }
        this.f29905Q = null;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m10732s() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f29908T
            r1 = -1
            if (r0 != r1) goto L24
            r0 = r5
            boolean r0 = r0.f29927n
            if (r0 == 0) goto L18
            r0 = r5
            com.google.android.gms.internal.ads.ec[] r0 = r0.f29902N
            int r0 = r0.length
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r5
            r1 = r6
            r0.f29908T = r1
        L1f:
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r5
            int r0 = r0.f29908T
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.ec[] r0 = r0.f29902N
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
            r0.mo8865d()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m10734q(r1)
            r0 = r8
            boolean r0 = r0.mo8863f()
            if (r0 != 0) goto L56
            r0 = 0
            return r0
        L56:
            r0 = r5
            r1 = r5
            int r1 = r1.f29908T
            r2 = 1
            int r1 = r1 + r2
            r0.f29908T = r1
            goto L1f
        L63:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f29905Q
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m10733r(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f29905Q
            if (r0 == 0) goto L7e
            r0 = 0
            return r0
        L7e:
            r0 = r5
            r1 = -1
            r0.f29908T = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6992tc.m10732s():boolean");
    }

    /* renamed from: t */
    private final void m10731t() {
        if (!m10730u()) {
            return;
        }
        if (C6961si.f29514a >= 21) {
            this.f29922i.setVolume(this.f29901M);
            return;
        }
        AudioTrack audioTrack = this.f29922i;
        float f = this.f29901M;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: u */
    private final boolean m10730u() {
        return this.f29922i != null;
    }

    /* renamed from: v */
    private final long m10729v(long j) {
        return (j * 1000000) / this.f29923j;
    }

    /* renamed from: w */
    private final long m10728w(long j) {
        return (j * this.f29923j) / 1000000;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: x */
    private final long m10727x() {
        return this.f29927n ? this.f29895G : this.f29894F / this.f29893E;
    }

    /* renamed from: y */
    private final void m10726y() {
        this.f29936w = 0L;
        this.f29935v = 0;
        this.f29934u = 0;
        this.f29937x = 0L;
        this.f29938y = false;
        this.f29939z = 0L;
    }

    /* renamed from: z */
    private final boolean m10725z() {
        boolean z = true;
        if (C6961si.f29514a < 23) {
            int i = this.f29926m;
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
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* renamed from: b */
    public final long m10749b(boolean z) {
        char c;
        char c2;
        char c3;
        char c4;
        long j;
        C6991tb c6991tb;
        long j2;
        long j3;
        Method method;
        if (!m10730u() || this.f29897I == 0) {
            return Long.MIN_VALUE;
        }
        if (this.f29922i.getPlayState() == 3) {
            long m12698e = this.f29920g.m12698e();
            if (m12698e != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.f29937x >= 30000) {
                    long[] jArr = this.f29919f;
                    int i = this.f29934u;
                    jArr[i] = m12698e - nanoTime;
                    this.f29934u = (i + 1) % 10;
                    int i2 = this.f29935v;
                    if (i2 < 10) {
                        this.f29935v = i2 + 1;
                    }
                    this.f29937x = nanoTime;
                    this.f29936w = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.f29935v;
                        if (i3 >= i4) {
                            break;
                        }
                        this.f29936w += this.f29919f[i3] / i4;
                        i3++;
                    }
                }
                if (!m10725z() && nanoTime - this.f29939z >= 500000) {
                    boolean mo12314f = this.f29920g.mo12314f();
                    this.f29938y = mo12314f;
                    if (mo12314f) {
                        long mo12313g = this.f29920g.mo12313g() / 1000;
                        long mo12312h = this.f29920g.mo12312h();
                        if (mo12313g < this.f29899K) {
                            this.f29938y = false;
                        } else if (Math.abs(mo12313g - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(mo12312h);
                            sb.append(", ");
                            sb.append(mo12313g);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(m12698e);
                            Log.w("AudioTrack", sb.toString());
                            this.f29938y = false;
                        } else if (Math.abs(m10729v(mo12312h) - m12698e) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(mo12312h);
                            sb2.append(", ");
                            sb2.append(mo12313g);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(m12698e);
                            Log.w("AudioTrack", sb2.toString());
                            this.f29938y = false;
                        }
                    }
                    if (this.f29889A != null && !this.f29927n) {
                        try {
                            long intValue = (((Integer) method.invoke(this.f29922i, null)).intValue() * 1000) - this.f29929p;
                            this.f29900L = intValue;
                            long max = Math.max(intValue, 0L);
                            this.f29900L = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("AudioTrack", sb3.toString());
                                this.f29900L = 0L;
                            }
                        } catch (Exception e) {
                            this.f29889A = null;
                        }
                    }
                    this.f29939z = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.f29938y) {
            c = m10729v(this.f29920g.mo12312h() + m10728w(nanoTime2 - (this.f29920g.mo12313g() / 1000)));
        } else {
            char m12698e2 = this.f29935v == 0 ? this.f29920g.m12698e() : nanoTime2 + this.f29936w;
            c = m12698e2;
            if (!z) {
                c = m12698e2 - this.f29900L;
            }
        }
        long j4 = this.f29898J;
        while (!this.f29921h.isEmpty()) {
            j = this.f29921h.getFirst().f29443c;
            if (c < j) {
                break;
            }
            C6955sc remove = this.f29921h.remove();
            c6991tb = remove.f29441a;
            this.f29931r = c6991tb;
            j2 = remove.f29443c;
            this.f29933t = j2;
            j3 = remove.f29442b;
            this.f29932s = j3 - this.f29898J;
        }
        if (this.f29931r.f29880b == 1.0f) {
            c2 = (c + this.f29932s) - this.f29933t;
        } else {
            if (!this.f29921h.isEmpty() || this.f29915b.m16403l() < 1024) {
                c3 = this.f29932s;
                c4 = (long) (this.f29931r.f29880b * (c - this.f29933t));
            } else {
                c3 = this.f29932s;
                c4 = C6961si.m11012j(c - this.f29933t, this.f29915b.m16404k(), this.f29915b.m16403l());
            }
            c2 = c4 + c3;
        }
        return j4 + c2;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0207  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10748c(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6992tc.m10748c(java.lang.String, int, int, int, int, int[]):void");
    }

    /* renamed from: d */
    public final void m10747d() {
        this.f29910V = true;
        if (m10730u()) {
            this.f29899K = System.nanoTime() / 1000;
            this.f29922i.play();
        }
    }

    /* renamed from: e */
    public final void m10746e() {
        if (this.f29897I == 1) {
            this.f29897I = 2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* renamed from: f */
    public final boolean m10745f(ByteBuffer byteBuffer, long j) {
        int i;
        C6696lc c6696lc;
        C6696lc c6696lc2;
        ByteBuffer byteBuffer2 = this.f29904P;
        C6367ci.m16042a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!m10730u()) {
            this.f29918e.block();
            int i2 = this.f29911W;
            if (i2 == 0) {
                this.f29922i = new AudioTrack(3, this.f29923j, this.f29924k, this.f29926m, this.f29928o, 1);
            } else {
                this.f29922i = new AudioTrack(3, this.f29923j, this.f29924k, this.f29926m, this.f29928o, 1, i2);
            }
            int state = this.f29922i.getState();
            if (state != 1) {
                try {
                    this.f29922i.release();
                } catch (Exception e) {
                } finally {
                    this.f29922i = null;
                }
                throw new zzaoo(state, this.f29923j, this.f29924k, this.f29928o);
            }
            int audioSessionId = this.f29922i.getAudioSessionId();
            if (this.f29911W != audioSessionId) {
                this.f29911W = audioSessionId;
                c6696lc2 = ((C7066vc) this.f29917d).f31128a.f31965Q;
                c6696lc2.m13587g(audioSessionId);
            }
            this.f29920g.mo12315a(this.f29922i, m10725z());
            m10731t();
            this.f29912X = false;
            if (this.f29910V) {
                m10747d();
            }
        }
        if (m10725z()) {
            if (this.f29922i.getPlayState() == 2) {
                this.f29912X = false;
                return false;
            } else if (this.f29922i.getPlayState() == 1 && this.f29920g.m12699d() != 0) {
                return false;
            }
        }
        boolean z = this.f29912X;
        boolean m10742i = m10742i();
        this.f29912X = m10742i;
        if (z && !m10742i && this.f29922i.getPlayState() != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.f29913Y;
            AbstractC6881qc abstractC6881qc = this.f29917d;
            int i3 = this.f29928o;
            long m15842a = C6397db.m15842a(this.f29929p);
            c6696lc = ((C7066vc) abstractC6881qc).f31128a.f31965Q;
            c6696lc.m13589e(i3, m15842a, elapsedRealtime - j2);
        }
        if (this.f29904P == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.f29927n && this.f29896H == 0) {
                int i4 = this.f29926m;
                if (i4 == 7 || i4 == 8) {
                    int position = byteBuffer.position();
                    i = ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
                } else if (i4 == 5) {
                    int i5 = C6324bc.f20337d;
                    i = 1536;
                } else if (i4 != 6) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i4);
                    throw new IllegalStateException(sb.toString());
                } else {
                    i = C6324bc.m16409c(byteBuffer);
                }
                this.f29896H = i;
            }
            if (this.f29930q != null) {
                if (!m10732s()) {
                    return false;
                }
                this.f29921h.add(new C6955sc(this.f29930q, Math.max(0L, j), m10729v(m10727x()), null));
                this.f29930q = null;
                m10735p();
            }
            if (this.f29897I == 0) {
                this.f29898J = Math.max(0L, j);
                this.f29897I = 1;
            } else {
                long m10729v = this.f29898J + m10729v(this.f29927n ? this.f29892D : this.f29891C / this.f29890B);
                if (this.f29897I == 1 && Math.abs(m10729v - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(m10729v);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.f29897I = 2;
                }
                if (this.f29897I == 2) {
                    this.f29898J += j - m10729v;
                    this.f29897I = 1;
                    ((C7066vc) this.f29917d).f31128a.f31971W = true;
                }
            }
            if (this.f29927n) {
                this.f29892D += this.f29896H;
            } else {
                this.f29891C += byteBuffer.remaining();
            }
            this.f29904P = byteBuffer;
        }
        if (this.f29927n) {
            m10733r(this.f29904P, j);
        } else {
            m10734q(j);
        }
        if (!this.f29904P.hasRemaining()) {
            this.f29904P = null;
            return true;
        }
        return false;
    }

    /* renamed from: g */
    public final void m10744g() {
        if (this.f29909U || !m10730u() || !m10732s()) {
            return;
        }
        this.f29920g.m12701b(m10727x());
        this.f29909U = true;
    }

    /* renamed from: h */
    public final boolean m10743h() {
        boolean z = false;
        if (m10730u()) {
            if (this.f29909U) {
                if (m10742i()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: i */
    public final boolean m10742i() {
        boolean z = true;
        if (m10730u()) {
            if (m10727x() <= this.f29920g.m12699d()) {
                if (m10725z() && this.f29922i.getPlayState() == 2 && this.f29922i.getPlaybackHeadPosition() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: j */
    public final C6991tb m10741j(C6991tb c6991tb) {
        C6991tb c6991tb2;
        if (this.f29927n) {
            C6991tb c6991tb3 = C6991tb.f29879a;
            this.f29931r = c6991tb3;
            return c6991tb3;
        }
        float m16406i = this.f29915b.m16406i(c6991tb.f29880b);
        this.f29915b.m16405j(1.0f);
        C6991tb c6991tb4 = new C6991tb(m16406i, 1.0f);
        C6991tb c6991tb5 = this.f29930q;
        C6991tb c6991tb6 = c6991tb5;
        if (c6991tb5 == null) {
            if (!this.f29921h.isEmpty()) {
                c6991tb2 = this.f29921h.getLast().f29441a;
                c6991tb6 = c6991tb2;
            } else {
                c6991tb6 = this.f29931r;
            }
        }
        if (!c6991tb4.equals(c6991tb6)) {
            if (m10730u()) {
                this.f29930q = c6991tb4;
            } else {
                this.f29931r = c6991tb4;
            }
        }
        return this.f29931r;
    }

    /* renamed from: k */
    public final C6991tb m10740k() {
        return this.f29931r;
    }

    /* renamed from: l */
    public final void m10739l(float f) {
        if (this.f29901M != f) {
            this.f29901M = f;
            m10731t();
        }
    }

    /* renamed from: m */
    public final void m10738m() {
        this.f29910V = false;
        if (m10730u()) {
            m10726y();
            this.f29920g.m12700c();
        }
    }

    /* renamed from: n */
    public final void m10737n() {
        C6991tb c6991tb;
        if (m10730u()) {
            this.f29891C = 0L;
            this.f29892D = 0L;
            this.f29894F = 0L;
            this.f29895G = 0L;
            this.f29896H = 0;
            C6991tb c6991tb2 = this.f29930q;
            if (c6991tb2 != null) {
                this.f29931r = c6991tb2;
                this.f29930q = null;
            } else if (!this.f29921h.isEmpty()) {
                c6991tb = this.f29921h.getLast().f29441a;
                this.f29931r = c6991tb;
            }
            this.f29921h.clear();
            this.f29932s = 0L;
            this.f29933t = 0L;
            this.f29904P = null;
            this.f29905Q = null;
            int i = 0;
            while (true) {
                AbstractC6436ec[] abstractC6436ecArr = this.f29902N;
                if (i >= abstractC6436ecArr.length) {
                    break;
                }
                AbstractC6436ec abstractC6436ec = abstractC6436ecArr[i];
                abstractC6436ec.zzi();
                this.f29903O[i] = abstractC6436ec.zzg();
                i++;
            }
            this.f29909U = false;
            this.f29908T = -1;
            this.f29897I = 0;
            this.f29900L = 0L;
            m10726y();
            if (this.f29922i.getPlayState() == 3) {
                this.f29922i.pause();
            }
            AudioTrack audioTrack = this.f29922i;
            this.f29922i = null;
            this.f29920g.mo12315a(null, false);
            this.f29918e.close();
            new C6770nc(this, audioTrack).start();
        }
    }

    /* renamed from: o */
    public final void m10736o() {
        m10737n();
        AbstractC6436ec[] abstractC6436ecArr = this.f29916c;
        for (int i = 0; i < 3; i++) {
            abstractC6436ecArr[i].mo8862g();
        }
        this.f29911W = 0;
        this.f29910V = false;
    }
}
