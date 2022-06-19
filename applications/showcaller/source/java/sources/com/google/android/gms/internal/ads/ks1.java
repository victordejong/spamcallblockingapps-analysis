package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ks1.class */
public final class ks1 {

    /* renamed from: A */
    private long f25310A;

    /* renamed from: B */
    private long f25311B;

    /* renamed from: C */
    private long f25312C;

    /* renamed from: D */
    private boolean f25313D;

    /* renamed from: E */
    private long f25314E;

    /* renamed from: F */
    private long f25315F;

    /* renamed from: a */
    private final ir1 f25316a;

    /* renamed from: b */
    private final long[] f25317b;

    /* renamed from: c */
    private AudioTrack f25318c;

    /* renamed from: d */
    private int f25319d;

    /* renamed from: e */
    private int f25320e;

    /* renamed from: f */
    private jq1 f25321f;

    /* renamed from: g */
    private int f25322g;

    /* renamed from: h */
    private boolean f25323h;

    /* renamed from: i */
    private long f25324i;

    /* renamed from: j */
    private float f25325j;

    /* renamed from: k */
    private boolean f25326k;

    /* renamed from: l */
    private long f25327l;

    /* renamed from: m */
    private long f25328m;

    /* renamed from: n */
    private Method f25329n;

    /* renamed from: o */
    private long f25330o;

    /* renamed from: p */
    private boolean f25331p;

    /* renamed from: q */
    private boolean f25332q;

    /* renamed from: r */
    private long f25333r;

    /* renamed from: s */
    private long f25334s;

    /* renamed from: t */
    private long f25335t;

    /* renamed from: u */
    private long f25336u;

    /* renamed from: v */
    private int f25337v;

    /* renamed from: w */
    private int f25338w;

    /* renamed from: x */
    private long f25339x;

    /* renamed from: y */
    private long f25340y;

    /* renamed from: z */
    private long f25341z;

    public ks1(ir1 ir1Var) {
        this.f25316a = ir1Var;
        if (C7101wa.f31475a >= 18) {
            try {
                this.f25329n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f25317b = new long[10];
    }

    /* renamed from: m */
    private final long m13818m(long j) {
        return (j * 1000000) / this.f25322g;
    }

    /* renamed from: n */
    private final void m13817n() {
        this.f25327l = 0L;
        this.f25338w = 0;
        this.f25337v = 0;
        this.f25328m = 0L;
        this.f25312C = 0L;
        this.f25315F = 0L;
        this.f25326k = false;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* renamed from: o */
    private final long m13816o() {
        AudioTrack audioTrack = this.f25318c;
        Objects.requireNonNull(audioTrack);
        if (this.f25339x != -9223372036854775807L) {
            return Math.min(this.f25310A, this.f25341z + ((((SystemClock.elapsedRealtime() * 1000) - this.f25339x) * this.f25322g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        int i = playState;
        char c = playbackHeadPosition;
        if (this.f25323h) {
            i = playState;
            if (playState == 2) {
                if (playbackHeadPosition == 0) {
                    this.f25336u = this.f25334s;
                }
                i = 2;
            }
            c = playbackHeadPosition + this.f25336u;
        }
        if (C7101wa.f31475a <= 29) {
            if (c == 0 && this.f25334s > 0 && i == 3) {
                if (this.f25340y == -9223372036854775807L) {
                    this.f25340y = SystemClock.elapsedRealtime();
                }
                return this.f25334s;
            }
            this.f25340y = -9223372036854775807L;
        }
        if (this.f25334s > c) {
            this.f25335t++;
        }
        this.f25334s = c;
        return c + (this.f25335t << 32);
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    public final void m13830a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.f25318c = audioTrack;
        this.f25319d = i2;
        this.f25320e = i3;
        this.f25321f = new jq1(audioTrack);
        this.f25322g = audioTrack.getSampleRate();
        this.f25323h = false;
        boolean m9681p = C7101wa.m9681p(i);
        this.f25332q = m9681p;
        this.f25324i = m9681p ? m13818m(i3 / i2) : (char) 1;
        this.f25334s = 0L;
        this.f25335t = 0L;
        this.f25336u = 0L;
        this.f25331p = false;
        this.f25339x = -9223372036854775807L;
        this.f25340y = -9223372036854775807L;
        this.f25333r = 0L;
        this.f25330o = 0L;
        this.f25325j = 1.0f;
    }

    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: b */
    public final long m13829b(boolean z) {
        char c;
        il1 il1Var;
        il1 il1Var2;
        hh1 hh1Var;
        Method method;
        long m10831E;
        long m10830F;
        long m10831E2;
        long m10830F2;
        AudioTrack audioTrack = this.f25318c;
        Objects.requireNonNull(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            long m13818m = m13818m(m13816o());
            if (m13818m != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.f25328m >= 30000) {
                    long[] jArr = this.f25317b;
                    int i = this.f25337v;
                    jArr[i] = m13818m - nanoTime;
                    this.f25337v = (i + 1) % 10;
                    int i2 = this.f25338w;
                    if (i2 < 10) {
                        this.f25338w = i2 + 1;
                    }
                    this.f25328m = nanoTime;
                    this.f25327l = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.f25338w;
                        if (i3 >= i4) {
                            break;
                        }
                        this.f25327l += this.f25317b[i3] / i4;
                        i3++;
                    }
                }
                if (!this.f25323h) {
                    jq1 jq1Var = this.f25321f;
                    Objects.requireNonNull(jq1Var);
                    if (jq1Var.m14068a(nanoTime)) {
                        long m14063f = jq1Var.m14063f();
                        long m14062g = jq1Var.m14062g();
                        if (Math.abs(m14063f - nanoTime) > 5000000) {
                            p12 p12Var = (p12) this.f25316a;
                            m10831E2 = p12Var.f27810a.m10831E();
                            m10830F2 = p12Var.f27810a.m10830F();
                            StringBuilder sb = new StringBuilder(180);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(m14062g);
                            sb.append(", ");
                            sb.append(m14063f);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(m13818m);
                            sb.append(", ");
                            sb.append(m10831E2);
                            sb.append(", ");
                            sb.append(m10830F2);
                            Log.w("DefaultAudioSink", sb.toString());
                            jq1Var.m14067b();
                        } else if (Math.abs(m13818m(m14062g) - m13818m) > 5000000) {
                            p12 p12Var2 = (p12) this.f25316a;
                            m10831E = p12Var2.f27810a.m10831E();
                            m10830F = p12Var2.f27810a.m10830F();
                            StringBuilder sb2 = new StringBuilder(182);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(m14062g);
                            sb2.append(", ");
                            sb2.append(m14063f);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(m13818m);
                            sb2.append(", ");
                            sb2.append(m10831E);
                            sb2.append(", ");
                            sb2.append(m10830F);
                            Log.w("DefaultAudioSink", sb2.toString());
                            jq1Var.m14067b();
                        } else {
                            jq1Var.m14066c();
                        }
                    }
                    if (this.f25332q && (method = this.f25329n) != null && nanoTime - this.f25333r >= 500000) {
                        try {
                            AudioTrack audioTrack2 = this.f25318c;
                            Objects.requireNonNull(audioTrack2);
                            Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                            int i5 = C7101wa.f31475a;
                            long intValue = (num.intValue() * 1000) - this.f25324i;
                            this.f25330o = intValue;
                            long max = Math.max(intValue, 0L);
                            this.f25330o = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("DefaultAudioSink", sb3.toString());
                                this.f25330o = 0L;
                            }
                        } catch (Exception e) {
                            this.f25329n = null;
                        }
                        this.f25333r = nanoTime;
                    }
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        jq1 jq1Var2 = this.f25321f;
        Objects.requireNonNull(jq1Var2);
        boolean m14065d = jq1Var2.m14065d();
        if (m14065d) {
            c = m13818m(jq1Var2.m14062g()) + C7101wa.m9687j(nanoTime2 - jq1Var2.m14063f(), this.f25325j);
        } else {
            char m13818m2 = this.f25338w == 0 ? m13818m(m13816o()) : this.f25327l + nanoTime2;
            c = m13818m2;
            if (!z) {
                c = Math.max(0L, m13818m2 - this.f25330o);
            }
        }
        if (this.f25313D != m14065d) {
            this.f25315F = this.f25312C;
            this.f25314E = this.f25311B;
        }
        long j = nanoTime2 - this.f25315F;
        char c2 = c;
        if (j < 1000000) {
            long j2 = (j * 1000) / 1000000;
            c2 = ((c * j2) + ((1000 - j2) * (this.f25314E + C7101wa.m9687j(j, this.f25325j)))) / 1000;
        }
        if (!this.f25326k) {
            long j3 = this.f25311B;
            if (c2 > j3) {
                this.f25326k = true;
                long m9686k = C7101wa.m9686k(C7130x2.m9369a(c2 - j3), this.f25325j);
                long currentTimeMillis = System.currentTimeMillis();
                long m9369a = C7130x2.m9369a(m9686k);
                p12 p12Var3 = (p12) this.f25316a;
                il1Var = p12Var3.f27810a.f29839k;
                if (il1Var != null) {
                    il1Var2 = p12Var3.f27810a.f29839k;
                    hh1Var = ((v72) il1Var2).f31090a.f31941F0;
                    hh1Var.m14658d(currentTimeMillis - m9369a);
                }
            }
        }
        this.f25312C = nanoTime2;
        this.f25311B = c2;
        this.f25313D = m14065d;
        return c2;
    }

    /* renamed from: c */
    public final void m13828c() {
        jq1 jq1Var = this.f25321f;
        Objects.requireNonNull(jq1Var);
        jq1Var.m14064e();
    }

    /* renamed from: d */
    public final boolean m13827d() {
        AudioTrack audioTrack = this.f25318c;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    /* renamed from: e */
    public final boolean m13826e(long j) {
        il1 il1Var;
        long j2;
        il1 il1Var2;
        hh1 hh1Var;
        AudioTrack audioTrack = this.f25318c;
        Objects.requireNonNull(audioTrack);
        int playState = audioTrack.getPlayState();
        int i = playState;
        if (this.f25323h) {
            if (playState == 2) {
                this.f25331p = false;
                return false;
            }
            i = playState;
            if (playState == 1) {
                if (m13816o() == 0) {
                    return false;
                }
                i = 1;
            }
        }
        boolean z = this.f25331p;
        boolean m13821j = m13821j(j);
        this.f25331p = m13821j;
        if (!z || m13821j || i == 1) {
            return true;
        }
        ir1 ir1Var = this.f25316a;
        int i2 = this.f25320e;
        long m9369a = C7130x2.m9369a(this.f25324i);
        p12 p12Var = (p12) ir1Var;
        il1Var = p12Var.f27810a.f29839k;
        if (il1Var == null) {
            return true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        j2 = p12Var.f27810a.f29825M;
        il1Var2 = p12Var.f27810a.f29839k;
        hh1Var = ((v72) il1Var2).f31090a.f31941F0;
        hh1Var.m14657e(i2, m9369a, elapsedRealtime - j2);
        return true;
    }

    /* renamed from: f */
    public final int m13825f(long j) {
        return this.f25320e - ((int) (j - (m13816o() * this.f25319d)));
    }

    /* renamed from: g */
    public final long m13824g(long j) {
        return C7130x2.m9369a(m13818m(-m13816o()));
    }

    /* renamed from: h */
    public final boolean m13823h(long j) {
        return this.f25340y != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.f25340y >= 200;
    }

    /* renamed from: i */
    public final void m13822i(long j) {
        this.f25341z = m13816o();
        this.f25339x = SystemClock.elapsedRealtime() * 1000;
        this.f25310A = j;
    }

    /* renamed from: j */
    public final boolean m13821j(long j) {
        if (j <= m13816o()) {
            if (!this.f25323h) {
                return false;
            }
            AudioTrack audioTrack = this.f25318c;
            Objects.requireNonNull(audioTrack);
            return audioTrack.getPlayState() == 2 && m13816o() == 0;
        }
        return true;
    }

    /* renamed from: k */
    public final boolean m13820k() {
        m13817n();
        if (this.f25339x == -9223372036854775807L) {
            jq1 jq1Var = this.f25321f;
            Objects.requireNonNull(jq1Var);
            jq1Var.m14064e();
            return true;
        }
        return false;
    }

    /* renamed from: l */
    public final void m13819l() {
        m13817n();
        this.f25318c = null;
        this.f25321f = null;
    }
}
