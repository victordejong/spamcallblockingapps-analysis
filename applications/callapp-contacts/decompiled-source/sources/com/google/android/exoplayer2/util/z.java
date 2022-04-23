package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.aa;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/z.class */
public final class z implements p {

    /* renamed from: a  reason: collision with root package name */
    public aa f22350a = aa.f20646a;

    /* renamed from: b  reason: collision with root package name */
    private final c f22351b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22352c;

    /* renamed from: d  reason: collision with root package name */
    private long f22353d;
    private long e;

    public z(c cVar) {
        this.f22351b = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.util.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long B_() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f22353d
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f22352c
            if (r0 == 0) goto L_0x0040
            r0 = r5
            com.google.android.exoplayer2.util.c r0 = r0.f22351b
            long r0 = r0.a()
            r1 = r5
            long r1 = r1.e
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            com.google.android.exoplayer2.aa r0 = r0.f22350a
            float r0 = r0.f20647b
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0031
            r0 = r8
            long r0 = com.google.android.exoplayer2.f.b(r0)
            r8 = r0
            goto L_0x003c
        L_0x0031:
            r0 = r8
            r1 = r5
            com.google.android.exoplayer2.aa r1 = r1.f22350a
            int r1 = r1.f20649d
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.z.B_():long");
    }

    public final void a() {
        if (!this.f22352c) {
            this.e = this.f22351b.a();
            this.f22352c = true;
        }
    }

    public final void a(long j) {
        this.f22353d = j;
        if (this.f22352c) {
            this.e = this.f22351b.a();
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public final void a(aa aaVar) {
        if (this.f22352c) {
            a(B_());
        }
        this.f22350a = aaVar;
    }

    public final void b() {
        if (this.f22352c) {
            a(B_());
            this.f22352c = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public final aa d() {
        return this.f22350a;
    }
}
