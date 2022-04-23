package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ao.class */
public final class ao extends al {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f3589b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final long f3590c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3591d;
    private final long e;
    private final long f;
    private final long g;
    private final long h;
    private final boolean i;
    private final boolean j;
    private final Object k;
    private final Object l;

    public ao(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, Object obj, Object obj2) {
        this.f3590c = j;
        this.f3591d = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.h = j6;
        this.i = z;
        this.j = z2;
        this.l = obj;
        this.k = obj2;
    }

    public ao(long j, long j2, long j3, long j4, boolean z, boolean z2, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj, obj2);
    }

    public ao(long j, boolean z, boolean z2) {
        this(j, z, z2, null, null);
    }

    public ao(long j, boolean z, boolean z2, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, obj, obj2);
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int a(Object obj) {
        return f3589b.equals(obj) ? 0 : -1;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final al.a a(int i, al.a aVar, boolean z) {
        a.a(i, 1);
        return aVar.a(null, z ? f3589b : null, this.e, -this.g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
        if (r0 > r0) goto L_0x0034;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.al
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.al.b a(int r17, androidx.media2.exoplayer.external.al.b r18, long r19) {
        /*
            r16 = this;
            r0 = r17
            r1 = 1
            int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
            r0 = r16
            long r0 = r0.h
            r21 = r0
            r0 = r16
            boolean r0 = r0.j
            r23 = r0
            r0 = r21
            r24 = r0
            r0 = r23
            if (r0 == 0) goto L_0x004e
            r0 = r21
            r24 = r0
            r0 = r19
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x004e
            r0 = r16
            long r0 = r0.f
            r26 = r0
            r0 = r26
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003c
        L_0x0034:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r24 = r0
            goto L_0x004e
        L_0x003c:
            r0 = r21
            r1 = r19
            long r0 = r0 + r1
            r19 = r0
            r0 = r19
            r24 = r0
            r0 = r19
            r1 = r26
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004e
            goto L_0x0034
        L_0x004e:
            r0 = r18
            r1 = r16
            java.lang.Object r1 = r1.k
            r2 = r16
            java.lang.Object r2 = r2.l
            r3 = r16
            long r3 = r3.f3590c
            r4 = r16
            long r4 = r4.f3591d
            r5 = r16
            boolean r5 = r5.i
            r6 = r23
            r7 = r24
            r8 = r16
            long r8 = r8.f
            r9 = r16
            long r9 = r9.g
            androidx.media2.exoplayer.external.al$b r0 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ao.a(int, androidx.media2.exoplayer.external.al$b, long):androidx.media2.exoplayer.external.al$b");
    }

    @Override // androidx.media2.exoplayer.external.al
    public final Object a(int i) {
        a.a(i, 1);
        return f3589b;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.al
    public final int c() {
        return 1;
    }
}
