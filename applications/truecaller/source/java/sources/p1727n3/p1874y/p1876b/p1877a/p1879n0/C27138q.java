package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.n0.q */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/q.class */
public final class C27138q {

    /* renamed from: a */
    public final AbstractC27139a f75867a;

    /* renamed from: b */
    public final long[] f75868b;

    /* renamed from: c */
    public AudioTrack f75869c;

    /* renamed from: d */
    public int f75870d;

    /* renamed from: e */
    public int f75871e;

    /* renamed from: f */
    public C27136p f75872f;

    /* renamed from: g */
    public int f75873g;

    /* renamed from: h */
    public boolean f75874h;

    /* renamed from: i */
    public long f75875i;

    /* renamed from: j */
    public long f75876j;

    /* renamed from: k */
    public long f75877k;

    /* renamed from: l */
    public Method f75878l;

    /* renamed from: m */
    public long f75879m;

    /* renamed from: n */
    public boolean f75880n;

    /* renamed from: o */
    public boolean f75881o;

    /* renamed from: p */
    public long f75882p;

    /* renamed from: q */
    public long f75883q;

    /* renamed from: r */
    public long f75884r;

    /* renamed from: s */
    public long f75885s;

    /* renamed from: t */
    public int f75886t;

    /* renamed from: u */
    public int f75887u;

    /* renamed from: v */
    public long f75888v;

    /* renamed from: w */
    public long f75889w;

    /* renamed from: x */
    public long f75890x;

    /* renamed from: y */
    public long f75891y;

    /* renamed from: n3.y.b.a.n0.q$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/q$a.class */
    public interface AbstractC27139a {
        /* renamed from: a */
        void mo789a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo788b(long j, long j2, long j3, long j4);

        /* renamed from: c */
        void mo787c(int i, long j);

        /* renamed from: d */
        void mo786d(long j);
    }

    public C27138q(AbstractC27139a abstractC27139a) {
        this.f75867a = abstractC27139a;
        if (C27445x.f77229a >= 18) {
            try {
                this.f75878l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f75868b = new long[10];
    }

    /* renamed from: a */
    public final long m825a(long j) {
        return (j * 1000000) / this.f75873g;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: b */
    public final long m824b() {
        AudioTrack audioTrack = this.f75869c;
        Objects.requireNonNull(audioTrack);
        if (this.f75888v != -9223372036854775807L) {
            return Math.min(this.f75891y, this.f75890x + ((((SystemClock.elapsedRealtime() * 1000) - this.f75888v) * this.f75873g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f75874h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f75885s = this.f75883q;
            }
            c = playbackHeadPosition + this.f75885s;
        }
        if (C27445x.f77229a <= 29) {
            if (c == 0 && this.f75883q > 0 && playState == 3) {
                if (this.f75889w == -9223372036854775807L) {
                    this.f75889w = SystemClock.elapsedRealtime();
                }
                return this.f75883q;
            }
            this.f75889w = -9223372036854775807L;
        }
        if (this.f75883q > c) {
            this.f75884r++;
        }
        this.f75883q = c;
        return c + (this.f75884r << 32);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        if (r12 == false) goto L15;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m823c(long r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.m824b()
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L41
            r0 = r5
            boolean r0 = r0.f75874h
            if (r0 == 0) goto L39
            r0 = r5
            android.media.AudioTrack r0 = r0.f75869c
            r11 = r0
            r0 = r11
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r11
            int r0 = r0.getPlayState()
            r1 = 2
            if (r0 != r1) goto L39
            r0 = r5
            long r0 = r0.m824b()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L39
            r0 = 1
            r12 = r0
            goto L3c
        L39:
            r0 = 0
            r12 = r0
        L3c:
            r0 = r12
            if (r0 == 0) goto L44
        L41:
            r0 = 1
            r10 = r0
        L44:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q.m823c(long):boolean");
    }
}
