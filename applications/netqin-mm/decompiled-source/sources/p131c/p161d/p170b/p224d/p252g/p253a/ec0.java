package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.AudioTrack;
import android.os.SystemClock;
/* renamed from: c.d.b.d.g.a.ec0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ec0.class */
public class ec0 {

    /* renamed from: a */
    public AudioTrack f12824a;

    /* renamed from: b */
    public boolean f12825b;

    /* renamed from: c */
    public int f12826c;

    /* renamed from: d */
    public long f12827d;

    /* renamed from: e */
    public long f12828e;

    /* renamed from: f */
    public long f12829f;

    /* renamed from: g */
    public long f12830g;

    /* renamed from: h */
    public long f12831h;

    /* renamed from: i */
    public long f12832i;

    public ec0() {
    }

    public /* synthetic */ ec0(fc0 fc0Var) {
        this();
    }

    /* renamed from: a */
    public final void m27033a() {
        if (this.f12830g == -9223372036854775807L) {
            this.f12824a.pause();
        }
    }

    /* renamed from: a */
    public final void m27032a(long j) {
        this.f12831h = m27031b();
        this.f12830g = SystemClock.elapsedRealtime() * 1000;
        this.f12832i = j;
        this.f12824a.stop();
    }

    /* renamed from: a */
    public void mo26968a(AudioTrack audioTrack, boolean z) {
        this.f12824a = audioTrack;
        this.f12825b = z;
        this.f12830g = -9223372036854775807L;
        this.f12827d = 0L;
        this.f12828e = 0L;
        this.f12829f = 0L;
        if (audioTrack != null) {
            this.f12826c = audioTrack.getSampleRate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m27031b() {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f12830g
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r1 = r7
            long r1 = r1.f12830g
            long r0 = r0 - r1
            r1 = r7
            int r1 = r1.f12826c
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r1
            r8 = r0
            r0 = r7
            long r0 = r0.f12832i
            r1 = r7
            long r1 = r1.f12831h
            r2 = r8
            long r1 = r1 + r2
            long r0 = java.lang.Math.min(r0, r1)
            return r0
        L_0x0030:
            r0 = r7
            android.media.AudioTrack r0 = r0.f12824a
            int r0 = r0.getPlayState()
            r10 = r0
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r1 = r7
            android.media.AudioTrack r1 = r1.f12824a
            int r1 = r1.getPlaybackHeadPosition()
            long r1 = (long) r1
            long r0 = r0 & r1
            r11 = r0
            r0 = r11
            r8 = r0
            r0 = r7
            boolean r0 = r0.f12825b
            if (r0 == 0) goto L_0x0073
            r0 = r10
            r1 = 2
            if (r0 != r1) goto L_0x006b
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006b
            r0 = r7
            r1 = r7
            long r1 = r1.f12827d
            r0.f12829f = r1
        L_0x006b:
            r0 = r11
            r1 = r7
            long r1 = r1.f12829f
            long r0 = r0 + r1
            r8 = r0
        L_0x0073:
            r0 = r7
            long r0 = r0.f12827d
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0086
            r0 = r7
            r1 = r7
            long r1 = r1.f12828e
            r2 = 1
            long r1 = r1 + r2
            r0.f12828e = r1
        L_0x0086:
            r0 = r7
            r1 = r8
            r0.f12827d = r1
            r0 = r8
            r1 = r7
            long r1 = r1.f12828e
            r2 = 32
            long r1 = r1 << r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ec0.m27031b():long");
    }

    /* renamed from: c */
    public final long m27030c() {
        return (m27031b() * 1000000) / this.f12826c;
    }

    /* renamed from: d */
    public boolean mo26967d() {
        return false;
    }

    /* renamed from: e */
    public long mo26966e() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public long mo26965f() {
        throw new UnsupportedOperationException();
    }
}
