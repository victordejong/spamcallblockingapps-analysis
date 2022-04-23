package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.ad;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/v.class */
public final class v implements l {

    /* renamed from: a  reason: collision with root package name */
    public ad f4182a = ad.f2809a;

    /* renamed from: b  reason: collision with root package name */
    private final b f4183b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4184c;

    /* renamed from: d  reason: collision with root package name */
    private long f4185d;
    private long e;

    public v(b bVar) {
        this.f4183b = bVar;
    }

    public final void a() {
        if (!this.f4184c) {
            this.e = this.f4183b.a();
            this.f4184c = true;
        }
    }

    public final void a(long j) {
        this.f4185d = j;
        if (this.f4184c) {
            this.e = this.f4183b.a();
        }
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final void a(ad adVar) {
        if (this.f4184c) {
            a(h_());
        }
        this.f4182a = adVar;
    }

    public final void b() {
        if (this.f4184c) {
            a(h_());
            this.f4184c = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final ad d() {
        return this.f4182a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.util.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long h_() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f4185d
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f4184c
            if (r0 == 0) goto L_0x0040
            r0 = r5
            androidx.media2.exoplayer.external.util.b r0 = r0.f4183b
            long r0 = r0.a()
            r1 = r5
            long r1 = r1.e
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            androidx.media2.exoplayer.external.ad r0 = r0.f4182a
            float r0 = r0.f2810b
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0031
            r0 = r8
            long r0 = androidx.media2.exoplayer.external.c.b(r0)
            r8 = r0
            goto L_0x003c
        L_0x0031:
            r0 = r8
            r1 = r5
            androidx.media2.exoplayer.external.ad r1 = r1.f4182a
            int r1 = r1.e
            long r1 = (long) r1
            long r0 = r0 * r1
            r8 = r0
        L_0x003c:
            r0 = r6
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
        L_0x0040:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.v.h_():long");
    }
}
