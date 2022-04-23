package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.trackselection.h;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ac.class */
final class ac {
    private static final t.a n = new t.a(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final al f2805a;

    /* renamed from: b  reason: collision with root package name */
    public final t.a f2806b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2807c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2808d;
    public final int e;
    public final ExoPlaybackException f;
    public final boolean g;
    public final TrackGroupArray h;
    public final h i;
    public final t.a j;
    public volatile long k;
    public volatile long l;
    public volatile long m;

    public ac(al alVar, t.a aVar, long j, long j2, int i, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, h hVar, t.a aVar2, long j3, long j4, long j5) {
        this.f2805a = alVar;
        this.f2806b = aVar;
        this.f2807c = j;
        this.f2808d = j2;
        this.e = i;
        this.f = exoPlaybackException;
        this.g = z;
        this.h = trackGroupArray;
        this.i = hVar;
        this.j = aVar2;
        this.k = j3;
        this.l = j4;
        this.m = j5;
    }

    public static ac a(long j, h hVar) {
        al alVar = al.f2829a;
        t.a aVar = n;
        return new ac(alVar, aVar, j, -9223372036854775807L, 1, null, false, TrackGroupArray.EMPTY, hVar, aVar, j, 0L, j);
    }

    public final ac a(int i) {
        return new ac(this.f2805a, this.f2806b, this.f2807c, this.f2808d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m);
    }

    public final ac a(ExoPlaybackException exoPlaybackException) {
        return new ac(this.f2805a, this.f2806b, this.f2807c, this.f2808d, this.e, exoPlaybackException, this.g, this.h, this.i, this.j, this.k, this.l, this.m);
    }

    public final ac a(TrackGroupArray trackGroupArray, h hVar) {
        return new ac(this.f2805a, this.f2806b, this.f2807c, this.f2808d, this.e, this.f, this.g, trackGroupArray, hVar, this.j, this.k, this.l, this.m);
    }

    public final ac a(t.a aVar) {
        return new ac(this.f2805a, this.f2806b, this.f2807c, this.f2808d, this.e, this.f, this.g, this.h, this.i, aVar, this.k, this.l, this.m);
    }

    public final ac a(t.a aVar, long j, long j2, long j3) {
        al alVar = this.f2805a;
        if (!aVar.a()) {
            j2 = -9223372036854775807L;
        }
        return new ac(alVar, aVar, j, j2, this.e, this.f, this.g, this.h, this.i, this.j, this.k, j3, j);
    }

    public final ac a(boolean z) {
        return new ac(this.f2805a, this.f2806b, this.f2807c, this.f2808d, this.e, this.f, z, this.h, this.i, this.j, this.k, this.l, this.m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.source.t.a a(boolean r7, androidx.media2.exoplayer.external.al.b r8, androidx.media2.exoplayer.external.al.a r9) {
        /*
            r6 = this;
            r0 = r6
            androidx.media2.exoplayer.external.al r0 = r0.f2805a
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x000e
            androidx.media2.exoplayer.external.source.t$a r0 = androidx.media2.exoplayer.external.ac.n
            return r0
        L_0x000e:
            r0 = r6
            androidx.media2.exoplayer.external.al r0 = r0.f2805a
            r1 = r7
            int r0 = r0.b(r1)
            r10 = r0
            r0 = r6
            androidx.media2.exoplayer.external.al r0 = r0.f2805a
            r1 = r10
            r2 = r8
            r3 = 0
            androidx.media2.exoplayer.external.al$b r0 = r0.a(r1, r2, r3)
            int r0 = r0.g
            r11 = r0
            r0 = r6
            androidx.media2.exoplayer.external.al r0 = r0.f2805a
            r1 = r6
            androidx.media2.exoplayer.external.source.t$a r1 = r1.f2806b
            java.lang.Object r1 = r1.f3748a
            int r0 = r0.a(r1)
            r12 = r0
            r0 = -1
            r13 = r0
            r0 = r13
            r15 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L_0x0067
            r0 = r13
            r15 = r0
            r0 = r10
            r1 = r6
            androidx.media2.exoplayer.external.al r1 = r1.f2805a
            r2 = r12
            r3 = r9
            r4 = 0
            androidx.media2.exoplayer.external.al$a r1 = r1.a(r2, r3, r4)
            int r1 = r1.f2832c
            if (r0 != r1) goto L_0x0067
            r0 = r6
            androidx.media2.exoplayer.external.source.t$a r0 = r0.f2806b
            long r0 = r0.f3751d
            r15 = r0
        L_0x0067:
            androidx.media2.exoplayer.external.source.t$a r0 = new androidx.media2.exoplayer.external.source.t$a
            r1 = r0
            r2 = r6
            androidx.media2.exoplayer.external.al r2 = r2.f2805a
            r3 = r11
            java.lang.Object r2 = r2.a(r3)
            r3 = r15
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ac.a(boolean, androidx.media2.exoplayer.external.al$b, androidx.media2.exoplayer.external.al$a):androidx.media2.exoplayer.external.source.t$a");
    }
}
