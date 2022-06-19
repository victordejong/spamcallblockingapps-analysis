package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.source.ad */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ad.class */
public final class C11274ad extends AbstractC10864al {

    /* renamed from: a */
    private static final Object f36985a = new Object();

    /* renamed from: c */
    private static final MediaItem f36986c;

    /* renamed from: d */
    private final long f36987d;

    /* renamed from: e */
    private final long f36988e;

    /* renamed from: f */
    private final long f36989f;

    /* renamed from: g */
    private final long f36990g;

    /* renamed from: h */
    private final long f36991h;

    /* renamed from: i */
    private final long f36992i;

    /* renamed from: j */
    private final long f36993j;

    /* renamed from: k */
    private final boolean f36994k;

    /* renamed from: l */
    private final boolean f36995l;

    /* renamed from: m */
    private final Object f36996m;

    /* renamed from: n */
    private final MediaItem f36997n;

    /* renamed from: o */
    private final MediaItem.LiveConfiguration f36998o;

    static {
        MediaItem.C10830a c10830a = new MediaItem.C10830a();
        c10830a.f34818a = "SinglePeriodTimeline";
        c10830a.f34819b = Uri.EMPTY;
        f36986c = c10830a.m22318a();
    }

    public C11274ad(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this.f36987d = j;
        this.f36988e = j2;
        this.f36989f = j3;
        this.f36990g = j4;
        this.f36991h = j5;
        this.f36992i = j6;
        this.f36993j = j7;
        this.f36994k = z;
        this.f36995l = z2;
        this.f36996m = obj;
        this.f36997n = (MediaItem) C11593a.m20020b(mediaItem);
        this.f36998o = liveConfiguration;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11274ad(long r22, long r24, long r26, long r28, long r30, long r32, long r34, boolean r36, boolean r37, boolean r38, java.lang.Object r39, java.lang.Object r40) {
        /*
            r21 = this;
            com.google.android.exoplayer2.MediaItem r0 = com.google.android.exoplayer2.source.C11274ad.f36986c
            r41 = r0
            r0 = r41
            com.google.android.exoplayer2.MediaItem$a r0 = r0.m22319a()
            r42 = r0
            r0 = r42
            r1 = r40
            r0.f34831n = r1
            r0 = r42
            com.google.android.exoplayer2.MediaItem r0 = r0.m22318a()
            r42 = r0
            r0 = r38
            if (r0 == 0) goto L29
            r0 = r41
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r0 = r0.f34813c
            r40 = r0
            goto L2c
        L29:
            r0 = 0
            r40 = r0
        L2c:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11274ad.<init>(long, long, long, long, long, long, long, boolean, boolean, boolean, java.lang.Object, java.lang.Object):void");
    }

    public C11274ad(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj, mediaItem, z3 ? mediaItem.f34813c : null);
    }

    @Deprecated
    public C11274ad(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, z3, obj, obj2);
    }

    public C11274ad(long j, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(j, j, 0L, 0L, z, z2, z3, obj, mediaItem);
    }

    @Deprecated
    public C11274ad(long j, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, z3, obj, obj2);
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final int mo20949a() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
        C11593a.m20025a(i, 1);
        return c10866a.m22173a(null, z ? f36985a : null, this.f36990g, -this.f36992i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0043, code lost:
        if (r0 > r0) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.AbstractC10864al.C10867b mo20853a(int r21, com.google.android.exoplayer2.AbstractC10864al.C10867b r22, long r23) {
        /*
            r20 = this;
            r0 = r21
            r1 = 1
            int r0 = com.google.android.exoplayer2.util.C11593a.m20025a(r0, r1)
            r0 = r20
            long r0 = r0.f36993j
            r25 = r0
            r0 = r25
            r27 = r0
            r0 = r20
            boolean r0 = r0.f36995l
            if (r0 == 0) goto L49
            r0 = r25
            r27 = r0
            r0 = r23
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L49
            r0 = r20
            long r0 = r0.f36991h
            r29 = r0
            r0 = r29
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L37
        L30:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r23 = r0
            goto L4c
        L37:
            r0 = r25
            r1 = r23
            long r0 = r0 + r1
            r23 = r0
            r0 = r23
            r27 = r0
            r0 = r23
            r1 = r29
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L49
            goto L30
        L49:
            r0 = r27
            r23 = r0
        L4c:
            r0 = r22
            java.lang.Object r1 = com.google.android.exoplayer2.AbstractC10864al.C10867b.f35004a
            r2 = r20
            com.google.android.exoplayer2.MediaItem r2 = r2.f36997n
            r3 = r20
            java.lang.Object r3 = r3.f36996m
            r4 = r20
            long r4 = r4.f36987d
            r5 = r20
            long r5 = r5.f36988e
            r6 = r20
            long r6 = r6.f36989f
            r7 = r20
            boolean r7 = r7.f36994k
            r8 = r20
            boolean r8 = r8.f36995l
            r9 = r20
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r9 = r9.f36998o
            r10 = r23
            r11 = r20
            long r11 = r11.f36991h
            r12 = r20
            long r12 = r12.f36992i
            com.google.android.exoplayer2.al$b r0 = r0.m22166a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11274ad.mo20853a(int, com.google.android.exoplayer2.al$b, long):com.google.android.exoplayer2.al$b");
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final Object mo20948a(int i) {
        C11593a.m20025a(i, 1);
        return f36985a;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: b */
    public final int mo20946b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: c */
    public final int mo20945c(Object obj) {
        return f36985a.equals(obj) ? 0 : -1;
    }
}
