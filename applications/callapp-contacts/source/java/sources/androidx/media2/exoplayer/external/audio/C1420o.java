package androidx.media2.exoplayer.external.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.lang.reflect.Method;
/* renamed from: androidx.media2.exoplayer.external.audio.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/o.class */
final class C1420o {

    /* renamed from: a */
    final AbstractC1421a f5349a;

    /* renamed from: b */
    AudioTrack f5350b;

    /* renamed from: c */
    int f5351c;

    /* renamed from: d */
    int f5352d;

    /* renamed from: e */
    C1418n f5353e;

    /* renamed from: f */
    int f5354f;

    /* renamed from: g */
    boolean f5355g;

    /* renamed from: h */
    long f5356h;

    /* renamed from: i */
    long f5357i;

    /* renamed from: j */
    boolean f5358j;

    /* renamed from: k */
    boolean f5359k;

    /* renamed from: l */
    long f5360l;

    /* renamed from: m */
    long f5361m;

    /* renamed from: n */
    long f5362n;

    /* renamed from: o */
    long f5363o;

    /* renamed from: p */
    long f5364p;

    /* renamed from: q */
    private final long[] f5365q;

    /* renamed from: r */
    private long f5366r;

    /* renamed from: s */
    private long f5367s;

    /* renamed from: t */
    private Method f5368t;

    /* renamed from: u */
    private long f5369u;

    /* renamed from: v */
    private int f5370v;

    /* renamed from: w */
    private int f5371w;

    /* renamed from: x */
    private long f5372x;

    /* renamed from: y */
    private long f5373y;

    /* renamed from: androidx.media2.exoplayer.external.audio.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/o$a.class */
    public interface AbstractC1421a {
        /* renamed from: a */
        void mo42985a(int i, long j);

        /* renamed from: a */
        void mo42984a(long j);

        /* renamed from: a */
        void mo42983a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo42982b(long j, long j2, long j3, long j4);
    }

    public C1420o(AbstractC1421a abstractC1421a) {
        this.f5349a = (AbstractC1421a) C1993a.m41690a(abstractC1421a);
        if (C1996ac.f8062a >= 18) {
            try {
                this.f5368t = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f5365q = new long[10];
    }

    /* renamed from: e */
    private long m42986e() {
        return m42987d(m42988d());
    }

    /* renamed from: a */
    public final int m42994a(long j) {
        return this.f5352d - ((int) (j - (m42988d() * this.f5351c)));
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e0 A[Catch: Exception -> 0x02f3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02f3, blocks: (B:78:0x029b, B:81:0x02e0), top: B:111:0x029b }] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m42993a(boolean r11) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.C1420o.m42993a(boolean):long");
    }

    /* renamed from: a */
    public final boolean m42995a() {
        return ((AudioTrack) C1993a.m41690a(this.f5350b)).getPlayState() == 3;
    }

    /* renamed from: b */
    public final void m42992b() {
        m42990c();
        this.f5350b = null;
        this.f5353e = null;
    }

    /* renamed from: b */
    public final void m42991b(long j) {
        this.f5372x = m42988d();
        this.f5363o = SystemClock.elapsedRealtime() * 1000;
        this.f5373y = j;
    }

    /* renamed from: c */
    public final void m42990c() {
        this.f5366r = 0L;
        this.f5371w = 0;
        this.f5370v = 0;
        this.f5367s = 0L;
    }

    /* renamed from: c */
    public final boolean m42989c(long j) {
        if (j <= m42988d()) {
            return this.f5355g && ((AudioTrack) C1993a.m41690a(this.f5350b)).getPlayState() == 2 && (m42988d() > 0L ? 1 : (m42988d() == 0L ? 0 : -1)) == 0;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: d */
    public final long m42988d() {
        AudioTrack audioTrack = (AudioTrack) C1993a.m41690a(this.f5350b);
        if (this.f5363o != -9223372036854775807L) {
            return Math.min(this.f5373y, this.f5372x + ((((SystemClock.elapsedRealtime() * 1000) - this.f5363o) * this.f5354f) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f5355g) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f5362n = this.f5360l;
            }
            c = playbackHeadPosition + this.f5362n;
        }
        if (C1996ac.f8062a <= 29) {
            if (c == 0 && this.f5360l > 0 && playState == 3) {
                if (this.f5364p == -9223372036854775807L) {
                    this.f5364p = SystemClock.elapsedRealtime();
                }
                return this.f5360l;
            }
            this.f5364p = -9223372036854775807L;
        }
        if (this.f5360l > c) {
            this.f5361m++;
        }
        this.f5360l = c;
        return c + (this.f5361m << 32);
    }

    /* renamed from: d */
    public final long m42987d(long j) {
        return (j * 1000000) / this.f5354f;
    }
}
