package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.source.ao */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ao.class */
public final class C1761ao extends AbstractC1383al {

    /* renamed from: b */
    private static final Object f6954b = new Object();

    /* renamed from: c */
    private final long f6955c;

    /* renamed from: d */
    private final long f6956d;

    /* renamed from: e */
    private final long f6957e;

    /* renamed from: f */
    private final long f6958f;

    /* renamed from: g */
    private final long f6959g;

    /* renamed from: h */
    private final long f6960h;

    /* renamed from: i */
    private final boolean f6961i;

    /* renamed from: j */
    private final boolean f6962j;

    /* renamed from: k */
    private final Object f6963k;

    /* renamed from: l */
    private final Object f6964l;

    public C1761ao(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, Object obj, Object obj2) {
        this.f6955c = j;
        this.f6956d = j2;
        this.f6957e = j3;
        this.f6958f = j4;
        this.f6959g = j5;
        this.f6960h = j6;
        this.f6961i = z;
        this.f6962j = z2;
        this.f6964l = obj;
        this.f6963k = obj2;
    }

    public C1761ao(long j, long j2, long j3, long j4, boolean z, boolean z2, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj, obj2);
    }

    public C1761ao(long j, boolean z, boolean z2) {
        this(j, z, z2, null, null);
    }

    public C1761ao(long j, boolean z, boolean z2, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, obj, obj2);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final int mo42088a(Object obj) {
        return f6954b.equals(obj) ? 0 : -1;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
        C1993a.m41691a(i, 1);
        return c1385a.m43085a(null, z ? f6954b : null, this.f6957e, -this.f6959g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
        if (r0 > r0) goto L8;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.AbstractC1383al.C1386b mo42095a(int r17, androidx.media2.exoplayer.external.AbstractC1383al.C1386b r18, long r19) {
        /*
            r16 = this;
            r0 = r17
            r1 = 1
            int r0 = androidx.media2.exoplayer.external.util.C1993a.m41691a(r0, r1)
            r0 = r16
            long r0 = r0.f6960h
            r21 = r0
            r0 = r16
            boolean r0 = r0.f6962j
            r23 = r0
            r0 = r21
            r24 = r0
            r0 = r23
            if (r0 == 0) goto L4e
            r0 = r21
            r24 = r0
            r0 = r19
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L4e
            r0 = r16
            long r0 = r0.f6958f
            r26 = r0
            r0 = r26
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3c
        L34:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r24 = r0
            goto L4e
        L3c:
            r0 = r21
            r1 = r19
            long r0 = r0 + r1
            r19 = r0
            r0 = r19
            r24 = r0
            r0 = r19
            r1 = r26
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L4e
            goto L34
        L4e:
            r0 = r18
            r1 = r16
            java.lang.Object r1 = r1.f6963k
            r2 = r16
            java.lang.Object r2 = r2.f6964l
            r3 = r16
            long r3 = r3.f6955c
            r4 = r16
            long r4 = r4.f6956d
            r5 = r16
            boolean r5 = r5.f6961i
            r6 = r23
            r7 = r24
            r8 = r16
            long r8 = r8.f6958f
            r9 = r16
            long r9 = r9.f6959g
            androidx.media2.exoplayer.external.al$b r0 = r0.m43079a(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1761ao.mo42095a(int, androidx.media2.exoplayer.external.al$b, long):androidx.media2.exoplayer.external.al$b");
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final Object mo42092a(int i) {
        C1993a.m41691a(i, 1);
        return f6954b;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: b */
    public final int mo42094b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: c */
    public final int mo42093c() {
        return 1;
    }
}
