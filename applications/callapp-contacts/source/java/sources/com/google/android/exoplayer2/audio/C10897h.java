package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.lang.reflect.Method;
/* renamed from: com.google.android.exoplayer2.audio.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/h.class */
final class C10897h {

    /* renamed from: A */
    private long f35164A;

    /* renamed from: B */
    private long f35165B;

    /* renamed from: C */
    private long f35166C;

    /* renamed from: D */
    private boolean f35167D;

    /* renamed from: E */
    private long f35168E;

    /* renamed from: F */
    private long f35169F;

    /* renamed from: a */
    final AbstractC10898a f35170a;

    /* renamed from: b */
    AudioTrack f35171b;

    /* renamed from: c */
    int f35172c;

    /* renamed from: d */
    C10895g f35173d;

    /* renamed from: e */
    boolean f35174e;

    /* renamed from: f */
    long f35175f;

    /* renamed from: g */
    boolean f35176g;

    /* renamed from: h */
    long f35177h;

    /* renamed from: i */
    long f35178i;

    /* renamed from: j */
    private final long[] f35179j;

    /* renamed from: k */
    private int f35180k;

    /* renamed from: l */
    private int f35181l;

    /* renamed from: m */
    private float f35182m;

    /* renamed from: n */
    private boolean f35183n;

    /* renamed from: o */
    private long f35184o;

    /* renamed from: p */
    private long f35185p;

    /* renamed from: q */
    private Method f35186q;

    /* renamed from: r */
    private long f35187r;

    /* renamed from: s */
    private boolean f35188s;

    /* renamed from: t */
    private long f35189t;

    /* renamed from: u */
    private long f35190u;

    /* renamed from: v */
    private long f35191v;

    /* renamed from: w */
    private long f35192w;

    /* renamed from: x */
    private int f35193x;

    /* renamed from: y */
    private int f35194y;

    /* renamed from: z */
    private long f35195z;

    /* renamed from: com.google.android.exoplayer2.audio.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/h$a.class */
    public interface AbstractC10898a {
        /* renamed from: a */
        void mo22021a(int i, long j);

        /* renamed from: a */
        void mo22020a(long j);

        /* renamed from: a */
        void mo22019a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo22018b(long j);

        /* renamed from: b */
        void mo22017b(long j, long j2, long j3, long j4);
    }

    public C10897h(AbstractC10898a abstractC10898a) {
        this.f35170a = (AbstractC10898a) C11593a.m20020b(abstractC10898a);
        if (C11599af.f38648a >= 18) {
            try {
                this.f35186q = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f35179j = new long[10];
    }

    /* renamed from: e */
    private long m22023e() {
        return m22022e(m22025d());
    }

    /* renamed from: e */
    private long m22022e(long j) {
        return (j * 1000000) / this.f35181l;
    }

    /* renamed from: a */
    public final int m22032a(long j) {
        return this.f35172c - ((int) (j - (m22025d() * this.f35180k)));
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02b7 A[Catch: Exception -> 0x02ca, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02ca, blocks: (B:77:0x0272, B:80:0x02b7), top: B:110:0x0272 }] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m22030a(boolean r11) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10897h.m22030a(boolean):long");
    }

    /* renamed from: a */
    public final void m22033a(float f) {
        this.f35182m = f;
        C10895g c10895g = this.f35173d;
        if (c10895g != null) {
            c10895g.m22039a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22031a(android.media.AudioTrack r6, boolean r7, int r8, int r9, int r10) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.f35171b = r1
            r0 = r5
            r1 = r9
            r0.f35180k = r1
            r0 = r5
            r1 = r10
            r0.f35172c = r1
            r0 = r5
            com.google.android.exoplayer2.audio.g r1 = new com.google.android.exoplayer2.audio.g
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f35173d = r1
            r0 = r5
            r1 = r6
            int r1 = r1.getSampleRate()
            r0.f35181l = r1
            r0 = 1
            r11 = r0
            r0 = r7
            if (r0 == 0) goto L53
            int r0 = com.google.android.exoplayer2.util.C11599af.f38648a
            r1 = 23
            if (r0 >= r1) goto L45
            r0 = r8
            r1 = 5
            if (r0 == r1) goto L3f
            r0 = r8
            r1 = 6
            if (r0 != r1) goto L45
        L3f:
            r0 = 1
            r12 = r0
            goto L48
        L45:
            r0 = 0
            r12 = r0
        L48:
            r0 = r12
            if (r0 == 0) goto L53
            r0 = r11
            r7 = r0
            goto L55
        L53:
            r0 = 0
            r7 = r0
        L55:
            r0 = r5
            r1 = r7
            r0.f35174e = r1
            r0 = r8
            boolean r0 = com.google.android.exoplayer2.util.C11599af.m19935c(r0)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.f35188s = r1
            r0 = r7
            if (r0 == 0) goto L77
            r0 = r5
            r1 = r10
            r2 = r9
            int r1 = r1 / r2
            long r1 = (long) r1
            long r0 = r0.m22022e(r1)
            r13 = r0
            goto L7c
        L77:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r13 = r0
        L7c:
            r0 = r5
            r1 = r13
            r0.f35175f = r1
            r0 = r5
            r1 = 0
            r0.f35190u = r1
            r0 = r5
            r1 = 0
            r0.f35191v = r1
            r0 = r5
            r1 = 0
            r0.f35192w = r1
            r0 = r5
            r1 = 0
            r0.f35176g = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f35177h = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f35178i = r1
            r0 = r5
            r1 = 0
            r0.f35189t = r1
            r0 = r5
            r1 = 0
            r0.f35187r = r1
            r0 = r5
            r1 = 1065353216(0x3f800000, float:1.0)
            r0.f35182m = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10897h.m22031a(android.media.AudioTrack, boolean, int, int, int):void");
    }

    /* renamed from: a */
    public final boolean m22034a() {
        return ((AudioTrack) C11593a.m20020b(this.f35171b)).getPlayState() == 3;
    }

    /* renamed from: b */
    public final long m22028b(long j) {
        return C11158f.m21374a(m22022e(j - m22025d()));
    }

    /* renamed from: b */
    public final void m22029b() {
        m22027c();
        this.f35171b = null;
        this.f35173d = null;
    }

    /* renamed from: c */
    public final void m22027c() {
        this.f35184o = 0L;
        this.f35194y = 0;
        this.f35193x = 0;
        this.f35185p = 0L;
        this.f35166C = 0L;
        this.f35169F = 0L;
        this.f35183n = false;
    }

    /* renamed from: c */
    public final void m22026c(long j) {
        this.f35195z = m22025d();
        this.f35177h = SystemClock.elapsedRealtime() * 1000;
        this.f35164A = j;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: d */
    public final long m22025d() {
        AudioTrack audioTrack = (AudioTrack) C11593a.m20020b(this.f35171b);
        if (this.f35177h != -9223372036854775807L) {
            return Math.min(this.f35164A, this.f35195z + ((((SystemClock.elapsedRealtime() * 1000) - this.f35177h) * this.f35181l) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f35174e) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f35192w = this.f35190u;
            }
            c = playbackHeadPosition + this.f35192w;
        }
        if (C11599af.f38648a <= 29) {
            if (c == 0 && this.f35190u > 0 && playState == 3) {
                if (this.f35178i == -9223372036854775807L) {
                    this.f35178i = SystemClock.elapsedRealtime();
                }
                return this.f35190u;
            }
            this.f35178i = -9223372036854775807L;
        }
        if (this.f35190u > c) {
            this.f35191v++;
        }
        this.f35190u = c;
        return c + (this.f35191v << 32);
    }

    /* renamed from: d */
    public final boolean m22024d(long j) {
        if (j <= m22025d()) {
            return this.f35174e && ((AudioTrack) C11593a.m20020b(this.f35171b)).getPlayState() == 2 && (m22025d() > 0L ? 1 : (m22025d() == 0L ? 0 : -1)) == 0;
        }
        return true;
    }
}
