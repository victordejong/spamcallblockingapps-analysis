package com.google.android.exoplayer2;

import com.google.android.exoplayer2.al;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/h.class */
public final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    public long f21363a;

    /* renamed from: b  reason: collision with root package name */
    public long f21364b;

    /* renamed from: c  reason: collision with root package name */
    private final al.b f21365c;

    public h() {
        this(FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5000L);
    }

    public h(long j, long j2) {
        this.f21364b = j;
        this.f21363a = j2;
        this.f21365c = new al.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.exoplayer2.ac r5, long r6) {
        /*
            r0 = r5
            long r0 = r0.A()
            r1 = r6
            long r0 = r0 + r1
            r8 = r0
            r0 = r5
            long r0 = r0.z()
            r10 = r0
            r0 = r8
            r6 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0023
            r0 = r8
            r1 = r10
            long r0 = java.lang.Math.min(r0, r1)
            r6 = r0
        L_0x0023:
            r0 = r6
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r6 = r0
            r0 = r5
            r1 = r5
            int r1 = r1.y()
            r2 = r6
            r0.a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.h.a(com.google.android.exoplayer2.ac, long):void");
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a() {
        return this.f21363a > 0;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a(ac acVar) {
        acVar.q();
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a(ac acVar, int i) {
        acVar.a(i);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a(ac acVar, int i, long j) {
        acVar.a(i, j);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a(ac acVar, aa aaVar) {
        acVar.a(aaVar);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean a(ac acVar, boolean z) {
        acVar.a(z);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean b() {
        return this.f21364b > 0;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean b(ac acVar) {
        al K = acVar.K();
        if (K.c() || acVar.C()) {
            return true;
        }
        int y = acVar.y();
        K.a(y, this.f21365c, 0L);
        int g = acVar.g();
        boolean z = this.f21365c.a() && !this.f21365c.i;
        if (g != -1 && (acVar.A() <= 3000 || z)) {
            acVar.a(g, -9223372036854775807L);
            return true;
        } else if (z) {
            return true;
        } else {
            acVar.a(y, 0L);
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean b(ac acVar, boolean z) {
        acVar.b(z);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean c(ac acVar) {
        al K = acVar.K();
        if (K.c() || acVar.C()) {
            return true;
        }
        int y = acVar.y();
        K.a(y, this.f21365c, 0L);
        int f = acVar.f();
        if (f != -1) {
            acVar.a(f, -9223372036854775807L);
            return true;
        } else if (!this.f21365c.a() || !this.f21365c.j) {
            return true;
        } else {
            acVar.a(y, -9223372036854775807L);
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean d(ac acVar) {
        if (!a() || !acVar.h()) {
            return true;
        }
        a(acVar, -this.f21363a);
        return true;
    }

    @Override // com.google.android.exoplayer2.g
    public final boolean e(ac acVar) {
        if (!b() || !acVar.h()) {
            return true;
        }
        a(acVar, this.f21364b);
        return true;
    }
}
