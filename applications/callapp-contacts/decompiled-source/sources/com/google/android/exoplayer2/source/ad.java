package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ad.class */
public final class ad extends al {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f21543a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final MediaItem f21544c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21545d;
    private final long e;
    private final long f;
    private final long g;
    private final long h;
    private final long i;
    private final long j;
    private final boolean k;
    private final boolean l;
    private final Object m;
    private final MediaItem n;
    private final MediaItem.LiveConfiguration o;

    static {
        MediaItem.a aVar = new MediaItem.a();
        aVar.f20614a = "SinglePeriodTimeline";
        aVar.f20615b = Uri.EMPTY;
        f21544c = aVar.a();
    }

    public ad(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this.f21545d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = j5;
        this.i = j6;
        this.j = j7;
        this.k = z;
        this.l = z2;
        this.m = obj;
        this.n = (MediaItem) a.b(mediaItem);
        this.o = liveConfiguration;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ad(long r22, long r24, long r26, long r28, long r30, long r32, long r34, boolean r36, boolean r37, boolean r38, java.lang.Object r39, java.lang.Object r40) {
        /*
            r21 = this;
            com.google.android.exoplayer2.MediaItem r0 = com.google.android.exoplayer2.source.ad.f21544c
            r41 = r0
            r0 = r41
            com.google.android.exoplayer2.MediaItem$a r0 = r0.a()
            r42 = r0
            r0 = r42
            r1 = r40
            r0.n = r1
            r0 = r42
            com.google.android.exoplayer2.MediaItem r0 = r0.a()
            r42 = r0
            r0 = r38
            if (r0 == 0) goto L_0x0029
            r0 = r41
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r0 = r0.f20612c
            r40 = r0
            goto L_0x002c
        L_0x0029:
            r0 = 0
            r40 = r0
        L_0x002c:
            r0 = r21
            r1 = r22
            r2 = r24
            r3 = r26
            r4 = r28
            r5 = r30
            r6 = r32
            r7 = r34
            r8 = r36
            r9 = r37
            r10 = r39
            r11 = r42
            r12 = r40
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ad.<init>(long, long, long, long, long, long, long, boolean, boolean, boolean, java.lang.Object, java.lang.Object):void");
    }

    public ad(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj, mediaItem, z3 ? mediaItem.f20612c : null);
    }

    @Deprecated
    public ad(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, z3, obj, obj2);
    }

    public ad(long j, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(j, j, 0L, 0L, z, z2, z3, obj, mediaItem);
    }

    @Deprecated
    public ad(long j, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, z3, obj, obj2);
    }

    @Override // com.google.android.exoplayer2.al
    public final int a() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.al
    public final al.a a(int i, al.a aVar, boolean z) {
        a.a(i, 1);
        return aVar.a(null, z ? f21543a : null, this.g, -this.i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0043, code lost:
        if (r0 > r0) goto L_0x0030;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.al
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.al.b a(int r21, com.google.android.exoplayer2.al.b r22, long r23) {
        /*
            r20 = this;
            r0 = r21
            r1 = 1
            int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
            r0 = r20
            long r0 = r0.j
            r25 = r0
            r0 = r25
            r27 = r0
            r0 = r20
            boolean r0 = r0.l
            if (r0 == 0) goto L_0x0049
            r0 = r25
            r27 = r0
            r0 = r23
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0049
            r0 = r20
            long r0 = r0.h
            r29 = r0
            r0 = r29
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0037
        L_0x0030:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r23 = r0
            goto L_0x004c
        L_0x0037:
            r0 = r25
            r1 = r23
            long r0 = r0 + r1
            r23 = r0
            r0 = r23
            r27 = r0
            r0 = r23
            r1 = r29
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0049
            goto L_0x0030
        L_0x0049:
            r0 = r27
            r23 = r0
        L_0x004c:
            r0 = r22
            java.lang.Object r1 = com.google.android.exoplayer2.al.b.f20679a
            r2 = r20
            com.google.android.exoplayer2.MediaItem r2 = r2.n
            r3 = r20
            java.lang.Object r3 = r3.m
            r4 = r20
            long r4 = r4.f21545d
            r5 = r20
            long r5 = r5.e
            r6 = r20
            long r6 = r6.f
            r7 = r20
            boolean r7 = r7.k
            r8 = r20
            boolean r8 = r8.l
            r9 = r20
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r9 = r9.o
            r10 = r23
            r11 = r20
            long r11 = r11.h
            r12 = r20
            long r12 = r12.i
            com.google.android.exoplayer2.al$b r0 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ad.a(int, com.google.android.exoplayer2.al$b, long):com.google.android.exoplayer2.al$b");
    }

    @Override // com.google.android.exoplayer2.al
    public final Object a(int i) {
        a.a(i, 1);
        return f21543a;
    }

    @Override // com.google.android.exoplayer2.al
    public final int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.al
    public final int c(Object obj) {
        return f21543a.equals(obj) ? 0 : -1;
    }
}
