package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.lang.reflect.Method;
/* renamed from: com.google.android.exoplayer2.audio.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/n.class */
final class C4834n {

    /* renamed from: a */
    private final AbstractC4835a f14643a;

    /* renamed from: b */
    private final long[] f14644b;

    /* renamed from: c */
    private AudioTrack f14645c;

    /* renamed from: d */
    private int f14646d;

    /* renamed from: e */
    private int f14647e;

    /* renamed from: f */
    private C4832m f14648f;

    /* renamed from: g */
    private int f14649g;

    /* renamed from: h */
    private boolean f14650h;

    /* renamed from: i */
    private long f14651i;

    /* renamed from: j */
    private long f14652j;

    /* renamed from: k */
    private long f14653k;

    /* renamed from: l */
    private Method f14654l;

    /* renamed from: m */
    private long f14655m;

    /* renamed from: n */
    private boolean f14656n;

    /* renamed from: o */
    private boolean f14657o;

    /* renamed from: p */
    private long f14658p;

    /* renamed from: q */
    private long f14659q;

    /* renamed from: r */
    private long f14660r;

    /* renamed from: s */
    private long f14661s;

    /* renamed from: t */
    private int f14662t;

    /* renamed from: u */
    private int f14663u;

    /* renamed from: v */
    private long f14664v;

    /* renamed from: w */
    private long f14665w;

    /* renamed from: x */
    private long f14666x;

    /* renamed from: y */
    private long f14667y;

    /* renamed from: com.google.android.exoplayer2.audio.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/n$a.class */
    public interface AbstractC4835a {
        /* renamed from: a */
        void mo21523a(int i, long j);

        /* renamed from: b */
        void mo21522b(long j);

        /* renamed from: c */
        void mo21521c(long j, long j2, long j3, long j4);

        /* renamed from: d */
        void mo21520d(long j, long j2, long j3, long j4);
    }

    public C4834n(AbstractC4835a abstractC4835a) {
        this.f14643a = (AbstractC4835a) C5508e.m18911e(abstractC4835a);
        if (C5515h0.f17876a >= 18) {
            try {
                this.f14654l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f14644b = new long[10];
    }

    /* renamed from: a */
    private boolean m21543a() {
        return this.f14650h && ((AudioTrack) C5508e.m18911e(this.f14645c)).getPlayState() == 2 && m21539e() == 0;
    }

    /* renamed from: b */
    private long m21542b(long j) {
        return (j * 1000000) / this.f14649g;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: e */
    private long m21539e() {
        AudioTrack audioTrack = (AudioTrack) C5508e.m18911e(this.f14645c);
        if (this.f14664v != -9223372036854775807L) {
            return Math.min(this.f14667y, this.f14666x + ((((SystemClock.elapsedRealtime() * 1000) - this.f14664v) * this.f14649g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f14650h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f14661s = this.f14659q;
            }
            c = playbackHeadPosition + this.f14661s;
        }
        if (C5515h0.f17876a <= 29) {
            if (c == 0 && this.f14659q > 0 && playState == 3) {
                if (this.f14665w == -9223372036854775807L) {
                    this.f14665w = SystemClock.elapsedRealtime();
                }
                return this.f14659q;
            }
            this.f14665w = -9223372036854775807L;
        }
        if (this.f14659q > c) {
            this.f14660r++;
        }
        this.f14659q = c;
        return c + (this.f14660r << 32);
    }

    /* renamed from: f */
    private long m21538f() {
        return m21542b(m21539e());
    }

    /* renamed from: l */
    private void m21532l(long j, long j2) {
        C4832m c4832m = (C4832m) C5508e.m18911e(this.f14648f);
        if (!c4832m.m21550f(j)) {
            return;
        }
        long m21553c = c4832m.m21553c();
        long m21554b = c4832m.m21554b();
        if (Math.abs(m21553c - j) > 5000000) {
            this.f14643a.mo21520d(m21554b, m21553c, j, j2);
            c4832m.m21549g();
        } else if (Math.abs(m21542b(m21554b) - j2) <= 5000000) {
            c4832m.m21555a();
        } else {
            this.f14643a.mo21521c(m21554b, m21553c, j, j2);
            c4832m.m21549g();
        }
    }

    /* renamed from: m */
    private void m21531m() {
        long m21538f = m21538f();
        if (m21538f == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f14653k >= 30000) {
            long[] jArr = this.f14644b;
            int i = this.f14662t;
            jArr[i] = m21538f - nanoTime;
            this.f14662t = (i + 1) % 10;
            int i2 = this.f14663u;
            if (i2 < 10) {
                this.f14663u = i2 + 1;
            }
            this.f14653k = nanoTime;
            this.f14652j = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.f14663u;
                if (i3 >= i4) {
                    break;
                }
                this.f14652j += this.f14644b[i3] / i4;
                i3++;
            }
        }
        if (this.f14650h) {
            return;
        }
        m21532l(nanoTime, m21538f);
        m21530n(nanoTime);
    }

    /* renamed from: n */
    private void m21530n(long j) {
        Method method;
        if (!this.f14657o || (method = this.f14654l) == null || j - this.f14658p < 500000) {
            return;
        }
        try {
            long intValue = (((Integer) C5515h0.m18833g((Integer) method.invoke(C5508e.m18911e(this.f14645c), new Object[0]))).intValue() * 1000) - this.f14651i;
            this.f14655m = intValue;
            long max = Math.max(intValue, 0L);
            this.f14655m = max;
            if (max > 5000000) {
                this.f14643a.mo21522b(max);
                this.f14655m = 0L;
            }
        } catch (Exception e) {
            this.f14654l = null;
        }
        this.f14658p = j;
    }

    /* renamed from: o */
    private static boolean m21529o(int i) {
        return C5515h0.f17876a < 23 && (i == 5 || i == 6);
    }

    /* renamed from: r */
    private void m21526r() {
        this.f14652j = 0L;
        this.f14663u = 0;
        this.f14662t = 0;
        this.f14653k = 0L;
    }

    /* renamed from: c */
    public int m21541c(long j) {
        return this.f14647e - ((int) (j - (m21539e() * this.f14646d)));
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: d */
    public long m21540d(boolean z) {
        if (((AudioTrack) C5508e.m18911e(this.f14645c)).getPlayState() == 3) {
            m21531m();
        }
        long nanoTime = System.nanoTime() / 1000;
        C4832m c4832m = (C4832m) C5508e.m18911e(this.f14648f);
        if (c4832m.m21552d()) {
            long m21542b = m21542b(c4832m.m21554b());
            return !c4832m.m21551e() ? m21542b : m21542b + (nanoTime - c4832m.m21553c());
        }
        char m21538f = this.f14663u == 0 ? m21538f() : nanoTime + this.f14652j;
        char c = m21538f;
        if (!z) {
            c = m21538f - this.f14655m;
        }
        return c;
    }

    /* renamed from: g */
    public void m21537g(long j) {
        this.f14666x = m21539e();
        this.f14664v = SystemClock.elapsedRealtime() * 1000;
        this.f14667y = j;
    }

    /* renamed from: h */
    public boolean m21536h(long j) {
        return j > m21539e() || m21543a();
    }

    /* renamed from: i */
    public boolean m21535i() {
        return ((AudioTrack) C5508e.m18911e(this.f14645c)).getPlayState() == 3;
    }

    /* renamed from: j */
    public boolean m21534j(long j) {
        return this.f14665w != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.f14665w >= 200;
    }

    /* renamed from: k */
    public boolean m21533k(long j) {
        AbstractC4835a abstractC4835a;
        int playState = ((AudioTrack) C5508e.m18911e(this.f14645c)).getPlayState();
        if (this.f14650h) {
            if (playState == 2) {
                this.f14656n = false;
                return false;
            } else if (playState == 1 && m21539e() == 0) {
                return false;
            }
        }
        boolean z = this.f14656n;
        boolean m21536h = m21536h(j);
        this.f14656n = m21536h;
        if (!z || m21536h || playState == 1 || (abstractC4835a = this.f14643a) == null) {
            return true;
        }
        abstractC4835a.mo21523a(this.f14647e, C5543v.m18629b(this.f14651i));
        return true;
    }

    /* renamed from: p */
    public boolean m21528p() {
        m21526r();
        if (this.f14664v == -9223372036854775807L) {
            ((C4832m) C5508e.m18911e(this.f14648f)).m21548h();
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public void m21527q() {
        m21526r();
        this.f14645c = null;
        this.f14648f = null;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: s */
    public void m21525s(AudioTrack audioTrack, int i, int i2, int i3) {
        this.f14645c = audioTrack;
        this.f14646d = i2;
        this.f14647e = i3;
        this.f14648f = new C4832m(audioTrack);
        this.f14649g = audioTrack.getSampleRate();
        this.f14650h = m21529o(i);
        boolean m18851U = C5515h0.m18851U(i);
        this.f14657o = m18851U;
        this.f14651i = m18851U ? m21542b(i3 / i2) : (char) 1;
        this.f14659q = 0L;
        this.f14660r = 0L;
        this.f14661s = 0L;
        this.f14656n = false;
        this.f14664v = -9223372036854775807L;
        this.f14665w = -9223372036854775807L;
        this.f14655m = 0L;
    }

    /* renamed from: t */
    public void m21524t() {
        ((C4832m) C5508e.m18911e(this.f14648f)).m21548h();
    }
}
