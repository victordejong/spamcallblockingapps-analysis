package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.util.af;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/h.class */
final class h {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    final a f20764a;

    /* renamed from: b  reason: collision with root package name */
    AudioTrack f20765b;

    /* renamed from: c  reason: collision with root package name */
    int f20766c;

    /* renamed from: d  reason: collision with root package name */
    g f20767d;
    boolean e;
    long f;
    boolean g;
    long h;
    long i;
    private final long[] j;
    private int k;
    private int l;
    private float m;
    private boolean n;
    private long o;
    private long p;
    private Method q;
    private long r;
    private boolean s;
    private long t;
    private long u;
    private long v;
    private long w;
    private int x;
    private int y;
    private long z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/h$a.class */
    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j);

        void b(long j, long j2, long j3, long j4);
    }

    public h(a aVar) {
        this.f20764a = (a) com.google.android.exoplayer2.util.a.b(aVar);
        if (af.f22275a >= 18) {
            try {
                this.q = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.j = new long[10];
    }

    private long e() {
        return e(d());
    }

    private long e(long j) {
        return (j * 1000000) / this.l;
    }

    public final int a(long j) {
        return this.f20766c - ((int) (j - (d() * this.k)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02b7 A[Catch: Exception -> 0x02ca, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02ca, blocks: (B:77:0x0272, B:80:0x02b7), top: B:110:0x0272 }] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v3, types: [long] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(boolean r11) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.h.a(boolean):long");
    }

    public final void a(float f) {
        this.m = f;
        g gVar = this.f20767d;
        if (gVar != null) {
            gVar.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.media.AudioTrack r6, boolean r7, int r8, int r9, int r10) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.f20765b = r1
            r0 = r5
            r1 = r9
            r0.k = r1
            r0 = r5
            r1 = r10
            r0.f20766c = r1
            r0 = r5
            com.google.android.exoplayer2.audio.g r1 = new com.google.android.exoplayer2.audio.g
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f20767d = r1
            r0 = r5
            r1 = r6
            int r1 = r1.getSampleRate()
            r0.l = r1
            r0 = 1
            r11 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0053
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 23
            if (r0 >= r1) goto L_0x0045
            r0 = r8
            r1 = 5
            if (r0 == r1) goto L_0x003f
            r0 = r8
            r1 = 6
            if (r0 != r1) goto L_0x0045
        L_0x003f:
            r0 = 1
            r12 = r0
            goto L_0x0048
        L_0x0045:
            r0 = 0
            r12 = r0
        L_0x0048:
            r0 = r12
            if (r0 == 0) goto L_0x0053
            r0 = r11
            r7 = r0
            goto L_0x0055
        L_0x0053:
            r0 = 0
            r7 = r0
        L_0x0055:
            r0 = r5
            r1 = r7
            r0.e = r1
            r0 = r8
            boolean r0 = com.google.android.exoplayer2.util.af.c(r0)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.s = r1
            r0 = r7
            if (r0 == 0) goto L_0x0077
            r0 = r5
            r1 = r10
            r2 = r9
            int r1 = r1 / r2
            long r1 = (long) r1
            long r0 = r0.e(r1)
            r13 = r0
            goto L_0x007c
        L_0x0077:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r13 = r0
        L_0x007c:
            r0 = r5
            r1 = r13
            r0.f = r1
            r0 = r5
            r1 = 0
            r0.u = r1
            r0 = r5
            r1 = 0
            r0.v = r1
            r0 = r5
            r1 = 0
            r0.w = r1
            r0 = r5
            r1 = 0
            r0.g = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.h = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.i = r1
            r0 = r5
            r1 = 0
            r0.t = r1
            r0 = r5
            r1 = 0
            r0.r = r1
            r0 = r5
            r1 = 1065353216(0x3f800000, float:1.0)
            r0.m = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.h.a(android.media.AudioTrack, boolean, int, int, int):void");
    }

    public final boolean a() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.b(this.f20765b)).getPlayState() == 3;
    }

    public final long b(long j) {
        return f.a(e(j - d()));
    }

    public final void b() {
        c();
        this.f20765b = null;
        this.f20767d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.o = 0L;
        this.y = 0;
        this.x = 0;
        this.p = 0L;
        this.C = 0L;
        this.F = 0L;
        this.n = false;
    }

    public final void c(long j) {
        this.z = d();
        this.h = SystemClock.elapsedRealtime() * 1000;
        this.A = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d() {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.h.d():long");
    }

    public final boolean d(long j) {
        if (j > d()) {
            return true;
        }
        return this.e && ((AudioTrack) com.google.android.exoplayer2.util.a.b(this.f20765b)).getPlayState() == 2 && (d() > 0L ? 1 : (d() == 0L ? 0 : -1)) == 0;
    }
}
