package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmd.class */
public final class dmd {

    /* renamed from: a */
    private static boolean f14714a = false;

    /* renamed from: b */
    private static boolean f14715b = false;

    /* renamed from: A */
    private int f14716A;

    /* renamed from: B */
    private int f14717B;

    /* renamed from: C */
    private long f14718C;

    /* renamed from: D */
    private long f14719D;

    /* renamed from: E */
    private boolean f14720E;

    /* renamed from: F */
    private long f14721F;

    /* renamed from: G */
    private Method f14722G;

    /* renamed from: H */
    private int f14723H;

    /* renamed from: I */
    private long f14724I;

    /* renamed from: J */
    private long f14725J;

    /* renamed from: K */
    private int f14726K;

    /* renamed from: L */
    private long f14727L;

    /* renamed from: M */
    private long f14728M;

    /* renamed from: N */
    private int f14729N;

    /* renamed from: O */
    private int f14730O;

    /* renamed from: P */
    private long f14731P;

    /* renamed from: Q */
    private long f14732Q;

    /* renamed from: R */
    private long f14733R;

    /* renamed from: S */
    private float f14734S;

    /* renamed from: T */
    private dls[] f14735T;

    /* renamed from: U */
    private ByteBuffer[] f14736U;

    /* renamed from: V */
    private ByteBuffer f14737V;

    /* renamed from: W */
    private ByteBuffer f14738W;

    /* renamed from: X */
    private byte[] f14739X;

    /* renamed from: Y */
    private int f14740Y;

    /* renamed from: Z */
    private int f14741Z;

    /* renamed from: aa */
    private boolean f14742aa;

    /* renamed from: ab */
    private boolean f14743ab;

    /* renamed from: ac */
    private int f14744ac;

    /* renamed from: ad */
    private boolean f14745ad;

    /* renamed from: ae */
    private boolean f14746ae;

    /* renamed from: af */
    private long f14747af;

    /* renamed from: d */
    private final dmi f14749d;

    /* renamed from: e */
    private final dmq f14750e;

    /* renamed from: f */
    private final dls[] f14751f;

    /* renamed from: g */
    private final dmh f14752g;

    /* renamed from: i */
    private final long[] f14754i;

    /* renamed from: j */
    private final dmf f14755j;

    /* renamed from: k */
    private final LinkedList<dmg> f14756k;

    /* renamed from: l */
    private AudioTrack f14757l;

    /* renamed from: m */
    private int f14758m;

    /* renamed from: n */
    private int f14759n;

    /* renamed from: o */
    private int f14760o;

    /* renamed from: p */
    private int f14761p;

    /* renamed from: q */
    private int f14762q;

    /* renamed from: r */
    private boolean f14763r;

    /* renamed from: s */
    private int f14764s;

    /* renamed from: t */
    private long f14765t;

    /* renamed from: u */
    private dlj f14766u;

    /* renamed from: v */
    private dlj f14767v;

    /* renamed from: w */
    private long f14768w;

    /* renamed from: x */
    private long f14769x;

    /* renamed from: y */
    private ByteBuffer f14770y;

    /* renamed from: z */
    private int f14771z;

    /* renamed from: c */
    private final dlq f14748c = null;

    /* renamed from: h */
    private final ConditionVariable f14753h = new ConditionVariable(true);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x00e5 -> B:5:0x002e). Please submit an issue!!! */
    public dmd(dlq dlqVar, dls[] dlsVarArr, dmh dmhVar) {
        this.f14752g = dmhVar;
        if (dsn.f15576a >= 18) {
            try {
                this.f14722G = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (dsn.f15576a >= 19) {
            this.f14755j = new dme();
        } else {
            this.f14755j = new dmf(null);
        }
        this.f14749d = new dmi();
        this.f14750e = new dmq();
        this.f14751f = new dls[dlsVarArr.length + 3];
        this.f14751f[0] = new dmo();
        this.f14751f[1] = this.f14749d;
        System.arraycopy(dlsVarArr, 0, this.f14751f, 2, dlsVarArr.length);
        this.f14751f[dlsVarArr.length + 2] = this.f14750e;
        this.f14754i = new long[10];
        this.f14734S = 1.0f;
        this.f14730O = 0;
        this.f14762q = 3;
        this.f14744ac = 0;
        this.f14767v = dlj.f14660a;
        this.f14741Z = -1;
        this.f14735T = new dls[0];
        this.f14736U = new ByteBuffer[0];
        this.f14756k = new LinkedList<>();
    }

    /* renamed from: a */
    private final void m9174a(long j) {
        int length = this.f14735T.length;
        int i = length;
        while (i >= 0) {
            ByteBuffer byteBuffer = i > 0 ? this.f14736U[i - 1] : this.f14737V != null ? this.f14737V : dls.f14692a;
            if (i == length) {
                m9163b(byteBuffer, j);
            } else {
                dls dlsVar = this.f14735T[i];
                dlsVar.mo9101a(byteBuffer);
                ByteBuffer mo9096e = dlsVar.mo9096e();
                this.f14736U[i] = mo9096e;
                if (mo9096e.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: b */
    private static int m9164b(String str) {
        int i;
        boolean z = true;
        switch (str.hashCode()) {
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    z = true;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    z = false;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    z = true;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                i = 5;
                break;
            case true:
                i = 6;
                break;
            case true:
                i = 7;
                break;
            case true:
                i = 8;
                break;
            default:
                i = 0;
                break;
        }
        return i;
    }

    /* renamed from: b */
    private final long m9165b(long j) {
        return (1000000 * j) / this.f14758m;
    }

    /* renamed from: b */
    private final boolean m9163b(ByteBuffer byteBuffer, long j) {
        int write;
        boolean z;
        if (!byteBuffer.hasRemaining()) {
            z = true;
        } else {
            if (this.f14738W != null) {
                drz.m8772a(this.f14738W == byteBuffer);
            } else {
                this.f14738W = byteBuffer;
                if (dsn.f15576a < 21) {
                    int remaining = byteBuffer.remaining();
                    if (this.f14739X == null || this.f14739X.length < remaining) {
                        this.f14739X = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.f14739X, 0, remaining);
                    byteBuffer.position(position);
                    this.f14740Y = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (dsn.f15576a < 21) {
                int m9140e = this.f14764s - ((int) (this.f14727L - (this.f14755j.m9140e() * this.f14726K)));
                if (m9140e > 0) {
                    int write2 = this.f14757l.write(this.f14739X, this.f14740Y, Math.min(remaining2, m9140e));
                    write = write2;
                    if (write2 > 0) {
                        this.f14740Y += write2;
                        byteBuffer.position(byteBuffer.position() + write2);
                        write = write2;
                    }
                } else {
                    write = 0;
                }
            } else if (this.f14745ad) {
                drz.m8770b(j != -9223372036854775807L);
                AudioTrack audioTrack = this.f14757l;
                if (this.f14770y == null) {
                    this.f14770y = ByteBuffer.allocate(16);
                    this.f14770y.order(ByteOrder.BIG_ENDIAN);
                    this.f14770y.putInt(1431633921);
                }
                if (this.f14771z == 0) {
                    this.f14770y.putInt(4, remaining2);
                    this.f14770y.putLong(8, 1000 * j);
                    this.f14770y.position(0);
                    this.f14771z = remaining2;
                }
                int remaining3 = this.f14770y.remaining();
                if (remaining3 > 0) {
                    write = audioTrack.write(this.f14770y, remaining3, 1);
                    if (write < 0) {
                        this.f14771z = 0;
                    } else if (write < remaining3) {
                        write = 0;
                    }
                }
                write = audioTrack.write(byteBuffer, remaining2, 1);
                if (write < 0) {
                    this.f14771z = 0;
                } else {
                    this.f14771z -= write;
                }
            } else {
                write = this.f14757l.write(byteBuffer, remaining2, 1);
            }
            this.f14747af = SystemClock.elapsedRealtime();
            if (write < 0) {
                throw new zzin(write);
            }
            if (!this.f14763r) {
                this.f14727L += write;
            }
            if (write == remaining2) {
                if (this.f14763r) {
                    this.f14728M += this.f14729N;
                }
                this.f14738W = null;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    private final long m9161c(long j) {
        return (this.f14758m * j) / 1000000;
    }

    /* renamed from: k */
    private final void m9153k() {
        dls[] dlsVarArr;
        ArrayList arrayList = new ArrayList();
        for (dls dlsVar : this.f14751f) {
            if (dlsVar.mo9104a()) {
                arrayList.add(dlsVar);
            } else {
                dlsVar.mo9094g();
            }
        }
        int size = arrayList.size();
        this.f14735T = (dls[]) arrayList.toArray(new dls[size]);
        this.f14736U = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            dls dlsVar2 = this.f14735T[i];
            dlsVar2.mo9094g();
            this.f14736U[i] = dlsVar2.mo9096e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007b, code lost:
        if (r5.f14738W == null) goto L23;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m9152l() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            int r0 = r0.f14741Z
            r1 = -1
            if (r0 != r1) goto L88
            r0 = r5
            boolean r0 = r0.f14763r
            if (r0 == 0) goto L50
            r0 = r5
            com.google.android.gms.internal.ads.dls[] r0 = r0.f14735T
            int r0 = r0.length
            r7 = r0
        L17:
            r0 = r5
            r1 = r7
            r0.f14741Z = r1
            r0 = 1
            r7 = r0
        L1e:
            r0 = r5
            int r0 = r0.f14741Z
            r1 = r5
            com.google.android.gms.internal.ads.dls[] r1 = r1.f14735T
            int r1 = r1.length
            if (r0 >= r1) goto L64
            r0 = r5
            com.google.android.gms.internal.ads.dls[] r0 = r0.f14735T
            r1 = r5
            int r1 = r1.f14741Z
            r0 = r0[r1]
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L3e
            r0 = r8
            r0.mo9097d()
        L3e:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m9174a(r1)
            r0 = r8
            boolean r0 = r0.mo9095f()
            if (r0 != 0) goto L55
        L4e:
            r0 = r6
            return r0
        L50:
            r0 = 0
            r7 = r0
            goto L17
        L55:
            r0 = r5
            r1 = r5
            int r1 = r1.f14741Z
            r2 = 1
            int r1 = r1 + r2
            r0.f14741Z = r1
            r0 = 1
            r7 = r0
            goto L1e
        L64:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14738W
            if (r0 == 0) goto L7e
            r0 = r5
            r1 = r5
            java.nio.ByteBuffer r1 = r1.f14738W
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m9163b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14738W
            if (r0 != 0) goto L4e
        L7e:
            r0 = r5
            r1 = -1
            r0.f14741Z = r1
            r0 = 1
            r6 = r0
            goto L4e
        L88:
            r0 = 0
            r7 = r0
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmd.m9152l():boolean");
    }

    /* renamed from: m */
    private final void m9151m() {
        if (m9150n()) {
            if (dsn.f15576a >= 21) {
                this.f14757l.setVolume(this.f14734S);
                return;
            }
            AudioTrack audioTrack = this.f14757l;
            float f = this.f14734S;
            audioTrack.setStereoVolume(f, f);
        }
    }

    /* renamed from: n */
    private final boolean m9150n() {
        return this.f14757l != null;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: o */
    private final long m9149o() {
        return this.f14763r ? this.f14728M : this.f14727L / this.f14726K;
    }

    /* renamed from: p */
    private final void m9148p() {
        this.f14718C = 0L;
        this.f14717B = 0;
        this.f14716A = 0;
        this.f14719D = 0L;
        this.f14720E = false;
        this.f14721F = 0L;
    }

    /* renamed from: q */
    private final boolean m9147q() {
        return dsn.f15576a < 23 && (this.f14761p == 5 || this.f14761p == 6);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: a */
    public final long m9168a(boolean z) {
        char m9139f;
        char m8706a;
        long j;
        dlj dljVar;
        long j2;
        long j3;
        if (!(m9150n() && this.f14730O != 0)) {
            m8706a = 0;
        } else {
            if (this.f14757l.getPlayState() == 3) {
                long m9139f2 = this.f14755j.m9139f();
                if (m9139f2 != 0) {
                    long nanoTime = System.nanoTime() / 1000;
                    if (nanoTime - this.f14719D >= 30000) {
                        this.f14754i[this.f14716A] = m9139f2 - nanoTime;
                        this.f14716A = (this.f14716A + 1) % 10;
                        if (this.f14717B < 10) {
                            this.f14717B++;
                        }
                        this.f14719D = nanoTime;
                        this.f14718C = 0L;
                        for (int i = 0; i < this.f14717B; i++) {
                            this.f14718C += this.f14754i[i] / this.f14717B;
                        }
                    }
                    if (!m9147q() && nanoTime - this.f14721F >= 500000) {
                        this.f14720E = this.f14755j.mo9146a();
                        if (this.f14720E) {
                            long mo9143b = this.f14755j.mo9143b() / 1000;
                            long mo9142c = this.f14755j.mo9142c();
                            if (mo9143b < this.f14732Q) {
                                this.f14720E = false;
                            } else if (Math.abs(mo9143b - nanoTime) > 5000000) {
                                Log.w("AudioTrack", new StringBuilder(136).append("Spurious audio timestamp (system clock mismatch): ").append(mo9142c).append(", ").append(mo9143b).append(", ").append(nanoTime).append(", ").append(m9139f2).toString());
                                this.f14720E = false;
                            } else if (Math.abs(m9165b(mo9142c) - m9139f2) > 5000000) {
                                Log.w("AudioTrack", new StringBuilder(138).append("Spurious audio timestamp (frame position mismatch): ").append(mo9142c).append(", ").append(mo9143b).append(", ").append(nanoTime).append(", ").append(m9139f2).toString());
                                this.f14720E = false;
                            }
                        }
                        if (this.f14722G != null && !this.f14763r) {
                            try {
                                this.f14733R = (((Integer) this.f14722G.invoke(this.f14757l, null)).intValue() * 1000) - this.f14765t;
                                this.f14733R = Math.max(this.f14733R, 0L);
                                if (this.f14733R > 5000000) {
                                    Log.w("AudioTrack", new StringBuilder(61).append("Ignoring impossibly large audio latency: ").append(this.f14733R).toString());
                                    this.f14733R = 0L;
                                }
                            } catch (Exception e) {
                                this.f14722G = null;
                            }
                        }
                        this.f14721F = nanoTime;
                    }
                }
            }
            long nanoTime2 = System.nanoTime() / 1000;
            if (this.f14720E) {
                m9139f = m9165b(m9161c(nanoTime2 - (this.f14755j.mo9143b() / 1000)) + this.f14755j.mo9142c());
            } else {
                m9139f = this.f14717B == 0 ? this.f14755j.m9139f() : nanoTime2 + this.f14718C;
                if (!z) {
                    m9139f -= this.f14733R;
                }
            }
            long j4 = this.f14731P;
            while (!this.f14756k.isEmpty()) {
                j = this.f14756k.getFirst().f14787c;
                if (m9139f < j) {
                    break;
                }
                dmg remove = this.f14756k.remove();
                dljVar = remove.f14785a;
                this.f14767v = dljVar;
                j2 = remove.f14787c;
                this.f14769x = j2;
                j3 = remove.f14786b;
                this.f14768w = j3 - this.f14731P;
            }
            m8706a = (this.f14767v.f14661b == 1.0f ? (this.f14768w + m9139f) - this.f14769x : (!this.f14756k.isEmpty() || this.f14750e.m9091j() < 1024) ? this.f14768w + ((long) ((m9139f - this.f14769x) * this.f14767v.f14661b)) : dsn.m8706a(m9139f - this.f14769x, this.f14750e.m9092i(), this.f14750e.m9091j()) + this.f14768w) + j4;
        }
        return m8706a;
    }

    /* renamed from: a */
    public final dlj m9173a(dlj dljVar) {
        dlj dljVar2;
        dlj dljVar3;
        dlj dljVar4;
        if (this.f14763r) {
            this.f14767v = dlj.f14660a;
            dljVar4 = this.f14767v;
        } else {
            dlj dljVar5 = new dlj(this.f14750e.m9103a(dljVar.f14661b), this.f14750e.m9099b(dljVar.f14662c));
            if (this.f14766u != null) {
                dljVar2 = this.f14766u;
            } else if (!this.f14756k.isEmpty()) {
                dljVar3 = this.f14756k.getLast().f14785a;
                dljVar2 = dljVar3;
            } else {
                dljVar2 = this.f14767v;
            }
            if (!dljVar5.equals(dljVar2)) {
                if (m9150n()) {
                    this.f14766u = dljVar5;
                } else {
                    this.f14767v = dljVar5;
                }
            }
            dljVar4 = this.f14767v;
        }
        return dljVar4;
    }

    /* renamed from: a */
    public final void m9177a() {
        this.f14743ab = true;
        if (m9150n()) {
            this.f14732Q = System.nanoTime() / 1000;
            this.f14757l.play();
        }
    }

    /* renamed from: a */
    public final void m9176a(float f) {
        if (this.f14734S != f) {
            this.f14734S = f;
            m9151m();
        }
    }

    /* renamed from: a */
    public final void m9175a(int i) {
        if (this.f14762q == i) {
            return;
        }
        this.f14762q = i;
        if (this.f14745ad) {
            return;
        }
        m9155i();
        this.f14744ac = 0;
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: a */
    public final void m9170a(String str, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6;
        int i7;
        dls[] dlsVarArr;
        boolean z = !"audio/raw".equals(str);
        int m9164b = z ? m9164b(str) : i3;
        boolean z2 = false;
        if (!z) {
            this.f14723H = dsn.m8698b(i3, i);
            this.f14749d.m9135a(iArr);
            int i8 = i;
            boolean z3 = false;
            for (dls dlsVar : this.f14751f) {
                try {
                    z3 |= dlsVar.mo9102a(i2, i8, m9164b);
                    if (dlsVar.mo9104a()) {
                        i8 = dlsVar.mo9100b();
                        m9164b = dlsVar.mo9098c();
                    }
                } catch (zzhu e) {
                    throw new zzij(e);
                }
            }
            if (z3) {
                m9153k();
            }
            i5 = i8;
            z2 = z3;
        } else {
            i5 = i;
        }
        switch (i5) {
            case 1:
                i6 = 4;
                break;
            case 2:
                i6 = 12;
                break;
            case 3:
                i6 = 28;
                break;
            case 4:
                i6 = 204;
                break;
            case 5:
                i6 = 220;
                break;
            case 6:
                i6 = 252;
                break;
            case 7:
                i6 = 1276;
                break;
            case 8:
                i6 = dkr.f14536a;
                break;
            default:
                throw new zzij(new StringBuilder(38).append("Unsupported channel count: ").append(i5).toString());
        }
        int i9 = i6;
        if (dsn.f15576a <= 23) {
            i9 = i6;
            if ("foster".equals(dsn.f15577b)) {
                i9 = i6;
                if ("NVIDIA".equals(dsn.f15578c)) {
                    i9 = i6;
                    switch (i5) {
                        case 3:
                        case 5:
                            i9 = 252;
                            break;
                        case 4:
                        case 6:
                            break;
                        case 7:
                            i9 = dkr.f14536a;
                            break;
                        default:
                            i9 = i6;
                            break;
                    }
                }
            }
        }
        int i10 = (dsn.f15576a > 25 || !"fugu".equals(dsn.f15577b) || !z || i5 != 1) ? i9 : 12;
        if (!z2 && m9150n() && this.f14760o == m9164b && this.f14758m == i2 && this.f14759n == i10) {
            return;
        }
        m9155i();
        this.f14760o = m9164b;
        this.f14763r = z;
        this.f14758m = i2;
        this.f14759n = i10;
        this.f14761p = z ? m9164b : 2;
        this.f14726K = dsn.m8698b(2, i5);
        if (z) {
            i7 = (this.f14761p == 5 || this.f14761p == 6) ? 20480 : 49152;
        } else {
            int minBufferSize = AudioTrack.getMinBufferSize(i2, i10, this.f14761p);
            drz.m8770b(minBufferSize != -2);
            i7 = minBufferSize << 2;
            int m9161c = ((int) m9161c(250000L)) * this.f14726K;
            int max = (int) Math.max(minBufferSize, m9161c(750000L) * this.f14726K);
            if (i7 < m9161c) {
                i7 = m9161c;
            } else if (i7 > max) {
                i7 = max;
            }
        }
        this.f14764s = i7;
        this.f14765t = z ? (char) 1 : m9165b(this.f14764s / this.f14726K);
        m9173a(this.f14767v);
    }

    /* renamed from: a */
    public final boolean m9171a(String str) {
        return this.f14748c != null && this.f14748c.m9196a(m9164b(str));
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* renamed from: a */
    public final boolean m9169a(ByteBuffer byteBuffer, long j) {
        boolean z;
        int i;
        drz.m8772a(this.f14737V == null || byteBuffer == this.f14737V);
        if (!m9150n()) {
            this.f14753h.block();
            if (this.f14745ad) {
                this.f14757l = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.f14759n).setEncoding(this.f14761p).setSampleRate(this.f14758m).build(), this.f14764s, 1, this.f14744ac);
            } else if (this.f14744ac == 0) {
                this.f14757l = new AudioTrack(this.f14762q, this.f14758m, this.f14759n, this.f14761p, this.f14764s, 1);
            } else {
                this.f14757l = new AudioTrack(this.f14762q, this.f14758m, this.f14759n, this.f14761p, this.f14764s, 1, this.f14744ac);
            }
            int state = this.f14757l.getState();
            if (state != 1) {
                try {
                    this.f14757l.release();
                } catch (Exception e) {
                } finally {
                    this.f14757l = null;
                }
                throw new zzii(state, this.f14758m, this.f14759n, this.f14764s);
            }
            int audioSessionId = this.f14757l.getAudioSessionId();
            if (this.f14744ac != audioSessionId) {
                this.f14744ac = audioSessionId;
                this.f14752g.mo9125a(audioSessionId);
            }
            this.f14755j.mo9144a(this.f14757l, m9147q());
            m9151m();
            this.f14746ae = false;
            if (this.f14743ab) {
                m9177a();
            }
        }
        if (m9147q()) {
            if (this.f14757l.getPlayState() == 2) {
                this.f14746ae = false;
                z = false;
            } else if (this.f14757l.getPlayState() == 1 && this.f14755j.m9140e() != 0) {
                z = false;
            }
            return z;
        }
        boolean z2 = this.f14746ae;
        this.f14746ae = m9159e();
        if (z2 && !this.f14746ae && this.f14757l.getPlayState() != 1) {
            this.f14752g.mo9124a(this.f14764s, dkr.m9305a(this.f14765t), SystemClock.elapsedRealtime() - this.f14747af);
        }
        if (this.f14737V == null) {
            if (!byteBuffer.hasRemaining()) {
                z = true;
            } else {
                if (this.f14763r && this.f14729N == 0) {
                    int i2 = this.f14761p;
                    if (i2 == 7 || i2 == 8) {
                        i = dmk.m9127a(byteBuffer);
                    } else if (i2 == 5) {
                        i = dlr.m9195a();
                    } else if (i2 != 6) {
                        throw new IllegalStateException(new StringBuilder(38).append("Unexpected audio encoding: ").append(i2).toString());
                    } else {
                        i = dlr.m9193a(byteBuffer);
                    }
                    this.f14729N = i;
                }
                if (this.f14766u != null) {
                    if (!m9152l()) {
                        z = false;
                    } else {
                        this.f14756k.add(new dmg(this.f14766u, Math.max(0L, j), m9165b(m9149o()), null));
                        this.f14766u = null;
                        m9153k();
                    }
                }
                if (this.f14730O == 0) {
                    this.f14731P = Math.max(0L, j);
                    this.f14730O = 1;
                } else {
                    long m9165b = m9165b((long) (this.f14763r ? this.f14725J : this.f14724I / this.f14723H)) + this.f14731P;
                    if (this.f14730O == 1 && Math.abs(m9165b - j) > 200000) {
                        Log.e("AudioTrack", new StringBuilder(80).append("Discontinuity detected [expected ").append(m9165b).append(", got ").append(j).append("]").toString());
                        this.f14730O = 2;
                    }
                    if (this.f14730O == 2) {
                        this.f14731P = (j - m9165b) + this.f14731P;
                        this.f14730O = 1;
                        this.f14752g.mo9126a();
                    }
                }
                if (this.f14763r) {
                    this.f14725J += this.f14729N;
                } else {
                    this.f14724I += byteBuffer.remaining();
                }
                this.f14737V = byteBuffer;
            }
            return z;
        }
        if (this.f14763r) {
            m9163b(this.f14737V, j);
        } else {
            m9174a(j);
        }
        if (!this.f14737V.hasRemaining()) {
            this.f14737V = null;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final void m9167b() {
        if (this.f14730O == 1) {
            this.f14730O = 2;
        }
    }

    /* renamed from: b */
    public final void m9166b(int i) {
        drz.m8770b(dsn.f15576a >= 21);
        if (!this.f14745ad || this.f14744ac != i) {
            this.f14745ad = true;
            this.f14744ac = i;
            m9155i();
        }
    }

    /* renamed from: c */
    public final void m9162c() {
        if (this.f14742aa || !m9150n() || !m9152l()) {
            return;
        }
        this.f14755j.m9145a(m9149o());
        this.f14771z = 0;
        this.f14742aa = true;
    }

    /* renamed from: d */
    public final boolean m9160d() {
        return !m9150n() || (this.f14742aa && !m9159e());
    }

    /* renamed from: e */
    public final boolean m9159e() {
        boolean z;
        if (m9150n()) {
            z = true;
            if (m9149o() <= this.f14755j.m9140e()) {
                if (m9147q() && this.f14757l.getPlayState() == 2 && this.f14757l.getPlaybackHeadPosition() == 0) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public final dlj m9158f() {
        return this.f14767v;
    }

    /* renamed from: g */
    public final void m9157g() {
        if (this.f14745ad) {
            this.f14745ad = false;
            this.f14744ac = 0;
            m9155i();
        }
    }

    /* renamed from: h */
    public final void m9156h() {
        this.f14743ab = false;
        if (m9150n()) {
            m9148p();
            this.f14755j.m9141d();
        }
    }

    /* renamed from: i */
    public final void m9155i() {
        dlj dljVar;
        if (m9150n()) {
            this.f14724I = 0L;
            this.f14725J = 0L;
            this.f14727L = 0L;
            this.f14728M = 0L;
            this.f14729N = 0;
            if (this.f14766u != null) {
                this.f14767v = this.f14766u;
                this.f14766u = null;
            } else if (!this.f14756k.isEmpty()) {
                dljVar = this.f14756k.getLast().f14785a;
                this.f14767v = dljVar;
            }
            this.f14756k.clear();
            this.f14768w = 0L;
            this.f14769x = 0L;
            this.f14737V = null;
            this.f14738W = null;
            for (int i = 0; i < this.f14735T.length; i++) {
                dls dlsVar = this.f14735T[i];
                dlsVar.mo9094g();
                this.f14736U[i] = dlsVar.mo9096e();
            }
            this.f14742aa = false;
            this.f14741Z = -1;
            this.f14770y = null;
            this.f14771z = 0;
            this.f14730O = 0;
            this.f14733R = 0L;
            m9148p();
            if (this.f14757l.getPlayState() == 3) {
                this.f14757l.pause();
            }
            AudioTrack audioTrack = this.f14757l;
            this.f14757l = null;
            this.f14755j.mo9144a(null, false);
            this.f14753h.close();
            new dmc(this, audioTrack).start();
        }
    }

    /* renamed from: j */
    public final void m9154j() {
        m9155i();
        for (dls dlsVar : this.f14751f) {
            dlsVar.mo9093h();
        }
        this.f14744ac = 0;
        this.f14743ab = false;
    }
}
