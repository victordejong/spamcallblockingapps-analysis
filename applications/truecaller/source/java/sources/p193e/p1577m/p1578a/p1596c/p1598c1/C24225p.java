package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/p.class */
public final class C24225p {

    /* renamed from: a */
    public final AbstractC24226a f67040a;

    /* renamed from: b */
    public final long[] f67041b;

    /* renamed from: c */
    public AudioTrack f67042c;

    /* renamed from: d */
    public int f67043d;

    /* renamed from: e */
    public int f67044e;

    /* renamed from: f */
    public C24223o f67045f;

    /* renamed from: g */
    public int f67046g;

    /* renamed from: h */
    public boolean f67047h;

    /* renamed from: i */
    public long f67048i;

    /* renamed from: j */
    public long f67049j;

    /* renamed from: k */
    public long f67050k;

    /* renamed from: l */
    public Method f67051l;

    /* renamed from: m */
    public long f67052m;

    /* renamed from: n */
    public boolean f67053n;

    /* renamed from: o */
    public boolean f67054o;

    /* renamed from: p */
    public long f67055p;

    /* renamed from: q */
    public long f67056q;

    /* renamed from: r */
    public long f67057r;

    /* renamed from: s */
    public long f67058s;

    /* renamed from: t */
    public int f67059t;

    /* renamed from: u */
    public int f67060u;

    /* renamed from: v */
    public long f67061v;

    /* renamed from: w */
    public long f67062w;

    /* renamed from: x */
    public long f67063x;

    /* renamed from: y */
    public long f67064y;

    /* renamed from: e.m.a.c.c1.p$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/p$a.class */
    public interface AbstractC24226a {
        /* renamed from: a */
        void mo5410a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo5409b(long j, long j2, long j3, long j4);

        /* renamed from: c */
        void mo5408c(int i, long j);

        /* renamed from: d */
        void mo5407d(long j);
    }

    public C24225p(AbstractC24226a abstractC24226a) {
        this.f67040a = abstractC24226a;
        if (C24773d0.f69427a >= 18) {
            try {
                this.f67051l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f67041b = new long[10];
    }

    /* renamed from: a */
    public final long m5439a(long j) {
        return (j * 1000000) / this.f67046g;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: b */
    public final long m5438b() {
        AudioTrack audioTrack = this.f67042c;
        Objects.requireNonNull(audioTrack);
        if (this.f67061v != -9223372036854775807L) {
            return Math.min(this.f67064y, this.f67063x + ((((SystemClock.elapsedRealtime() * 1000) - this.f67061v) * this.f67046g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f67047h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f67058s = this.f67056q;
            }
            c = playbackHeadPosition + this.f67058s;
        }
        if (C24773d0.f69427a <= 29) {
            if (c == 0 && this.f67056q > 0 && playState == 3) {
                if (this.f67062w == -9223372036854775807L) {
                    this.f67062w = SystemClock.elapsedRealtime();
                }
                return this.f67056q;
            }
            this.f67062w = -9223372036854775807L;
        }
        if (this.f67056q > c) {
            this.f67057r++;
        }
        this.f67056q = c;
        return c + (this.f67057r << 32);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        if (r12 == false) goto L15;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5437c(long r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.m5438b()
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L41
            r0 = r5
            boolean r0 = r0.f67047h
            if (r0 == 0) goto L39
            r0 = r5
            android.media.AudioTrack r0 = r0.f67042c
            r11 = r0
            r0 = r11
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r11
            int r0 = r0.getPlayState()
            r1 = 2
            if (r0 != r1) goto L39
            r0 = r5
            long r0 = r0.m5438b()
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24225p.m5437c(long):boolean");
    }
}
