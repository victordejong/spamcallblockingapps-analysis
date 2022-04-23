package com.google.android.exoplayer2;

import com.google.android.exoplayer2.MediaItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/i.class */
public final class i implements r {

    /* renamed from: a  reason: collision with root package name */
    private final float f21366a;

    /* renamed from: b  reason: collision with root package name */
    private final float f21367b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21368c;

    /* renamed from: d  reason: collision with root package name */
    private final float f21369d;
    private final long e;
    private final long f;
    private final float g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;
    private long m;
    private float n;
    private float o;
    private float p;
    private long q;
    private long r;
    private long s;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        float f21370a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        float f21371b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        long f21372c = 1000;

        /* renamed from: d  reason: collision with root package name */
        float f21373d = 1.0E-7f;
        long e = f.b(20);
        long f = f.b(500);
        float g = 0.999f;
    }

    private i(float f, float f2, long j, float f3, long j2, long j3, float f4) {
        this.f21366a = f;
        this.f21367b = f2;
        this.f21368c = j;
        this.f21369d = f3;
        this.e = j2;
        this.f = j3;
        this.g = f4;
        this.h = -9223372036854775807L;
        this.i = -9223372036854775807L;
        this.k = -9223372036854775807L;
        this.l = -9223372036854775807L;
        this.o = f;
        this.n = f2;
        this.p = 1.0f;
        this.q = -9223372036854775807L;
        this.j = -9223372036854775807L;
        this.m = -9223372036854775807L;
        this.r = -9223372036854775807L;
        this.s = -9223372036854775807L;
    }

    private static long a(long j, long j2, float f) {
        return (((float) j) * f) + ((1.0f - f) * ((float) j2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.h
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0059
            r0 = r5
            long r0 = r0.i
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001c
            r0 = r8
            r6 = r0
        L_0x001c:
            r0 = r5
            long r0 = r0.k
            r10 = r0
            r0 = r6
            r8 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0039
            r0 = r10
            r8 = r0
        L_0x0039:
            r0 = r5
            long r0 = r0.l
            r10 = r0
            r0 = r8
            r6 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005d
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x005d
            r0 = r10
            r6 = r0
            goto L_0x005d
        L_0x0059:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r0
        L_0x005d:
            r0 = r5
            long r0 = r0.j
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0067
            return
        L_0x0067:
            r0 = r5
            r1 = r6
            r0.j = r1
            r0 = r5
            r1 = r6
            r0.m = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.r = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.s = r1
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.q = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.i.c():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(long r10, long r12) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.i.a(long, long):float");
    }

    @Override // com.google.android.exoplayer2.r
    public final void a() {
        long j = this.m;
        if (j != -9223372036854775807L) {
            long j2 = j + this.f;
            this.m = j2;
            long j3 = this.l;
            if (j3 != -9223372036854775807L && j2 > j3) {
                this.m = j3;
            }
            this.q = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.r
    public final void a(long j) {
        this.i = j;
        c();
    }

    @Override // com.google.android.exoplayer2.r
    public final void a(MediaItem.LiveConfiguration liveConfiguration) {
        this.h = f.b(liveConfiguration.targetOffsetMs);
        this.k = f.b(liveConfiguration.minOffsetMs);
        this.l = f.b(liveConfiguration.maxOffsetMs);
        this.o = liveConfiguration.minPlaybackSpeed != -3.4028235E38f ? liveConfiguration.minPlaybackSpeed : this.f21366a;
        this.n = liveConfiguration.maxPlaybackSpeed != -3.4028235E38f ? liveConfiguration.maxPlaybackSpeed : this.f21367b;
        c();
    }

    @Override // com.google.android.exoplayer2.r
    public final long b() {
        return this.m;
    }
}
