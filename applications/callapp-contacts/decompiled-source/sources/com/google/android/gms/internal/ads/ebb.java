package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebb.class */
public final class ebb implements dyc {

    /* renamed from: a  reason: collision with root package name */
    final ebz f27564a;

    /* renamed from: b  reason: collision with root package name */
    final int f27565b;
    eba f;
    zzht g;
    ebd h;
    private eba j;
    private boolean k;
    private zzht l;
    private long m;
    private int n;

    /* renamed from: c  reason: collision with root package name */
    final eaz f27566c = new eaz();

    /* renamed from: d  reason: collision with root package name */
    final eay f27567d = new eay();
    final ecy e = new ecy(32);
    private final AtomicInteger i = new AtomicInteger();

    public ebb(ebz ebzVar) {
        this.f27564a = ebzVar;
        int c2 = ebzVar.c();
        this.f27565b = c2;
        this.n = c2;
        eba ebaVar = new eba(0L, c2);
        this.f = ebaVar;
        this.j = ebaVar;
    }

    private final int a(int i) {
        if (this.n == this.f27565b) {
            this.n = 0;
            if (this.j.f27562c) {
                this.j = this.j.e;
            }
            eba ebaVar = this.j;
            eca a2 = this.f27564a.a();
            eba ebaVar2 = new eba(this.j.f27561b, this.f27565b);
            ebaVar.f27563d = a2;
            ebaVar.e = ebaVar2;
            ebaVar.f27562c = true;
        }
        return Math.min(i, this.f27565b - this.n);
    }

    private final boolean b() {
        return this.i.compareAndSet(0, 1);
    }

    private final void c() {
        if (!this.i.compareAndSet(1, 0)) {
            d();
        }
    }

    private final void d() {
        this.f27566c.a();
        eba ebaVar = this.f;
        if (ebaVar.f27562c) {
            int i = (this.j.f27562c ? 1 : 0) + (((int) (this.j.f27560a - ebaVar.f27560a)) / this.f27565b);
            eca[] ecaVarArr = new eca[i];
            for (int i2 = 0; i2 < i; i2++) {
                ecaVarArr[i2] = ebaVar.f27563d;
                ebaVar = ebaVar.a();
            }
            this.f27564a.a(ecaVarArr);
        }
        eba ebaVar2 = new eba(0L, this.f27565b);
        this.f = ebaVar2;
        this.j = ebaVar2;
        this.m = 0L;
        this.n = this.f27565b;
        this.f27564a.b();
    }

    @Override // com.google.android.gms.internal.ads.dyc
    public final int a(dxt dxtVar, int i) throws IOException, InterruptedException {
        if (!b()) {
            int a2 = dxtVar.a(i);
            if (a2 != -1) {
                return a2;
            }
            throw new EOFException();
        }
        try {
            int a3 = dxtVar.a(this.j.f27563d.f27606a, this.n + 0, a(i));
            if (a3 != -1) {
                this.n += a3;
                this.m += a3;
                return a3;
            }
            throw new EOFException();
        } finally {
            c();
        }
    }

    public final void a() {
        if (this.i.getAndSet(2) == 0) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        while (j >= this.f.f27561b) {
            this.f27564a.a(this.f.f27563d);
            this.f = this.f.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dyc
    public final void a(long j, int i, int i2, int i3, dyf dyfVar) {
        if (!b()) {
            this.f27566c.a(j);
            return;
        }
        try {
            this.f27566c.a(j, i, (this.m - i2) - i3, i2, dyfVar);
        } finally {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.a(r1)
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x0088
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.eba r1 = r1.f
            long r1 = r1.f27560a
            long r0 = r0 - r1
            int r0 = (int) r0
            r12 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r1 = r6
            int r1 = r1.f27565b
            r2 = r12
            int r1 = r1 - r2
            int r0 = java.lang.Math.min(r0, r1)
            r13 = r0
            r0 = r6
            com.google.android.gms.internal.ads.eba r0 = r0.f
            com.google.android.gms.internal.ads.eca r0 = r0.f27563d
            r14 = r0
            r0 = r14
            byte[] r0 = r0.f27606a
            r1 = r12
            r2 = 0
            int r1 = r1 + r2
            r2 = r9
            r3 = r11
            r4 = r13
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            r1 = r13
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r11
            r1 = r13
            int r0 = r0 + r1
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r6
            com.google.android.gms.internal.ads.eba r1 = r1.f
            long r1 = r1.f27561b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0008
            r0 = r6
            com.google.android.gms.internal.ads.ebz r0 = r0.f27564a
            r1 = r14
            r0.a(r1)
            r0 = r6
            r1 = r6
            com.google.android.gms.internal.ads.eba r1 = r1.f
            com.google.android.gms.internal.ads.eba r1 = r1.a()
            r0.f = r1
            r0 = r13
            r11 = r0
            r0 = r15
            r7 = r0
            goto L_0x0008
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ebb.a(long, byte[], int):void");
    }

    @Override // com.google.android.gms.internal.ads.dyc
    public final void a(ecy ecyVar, int i) {
        int i2 = i;
        if (!b()) {
            ecyVar.d(i);
            return;
        }
        while (i2 > 0) {
            int a2 = a(i2);
            ecyVar.a(this.j.f27563d.f27606a, this.n + 0, a2);
            this.n += a2;
            this.m += a2;
            i2 -= a2;
        }
        c();
    }

    @Override // com.google.android.gms.internal.ads.dyc
    public final void a(zzht zzhtVar) {
        boolean a2 = this.f27566c.a(zzhtVar == null ? null : zzhtVar);
        this.l = zzhtVar;
        this.k = false;
        ebd ebdVar = this.h;
        if (ebdVar != null && a2) {
            ebdVar.f();
        }
    }

    public final void a(boolean z) {
        int andSet = this.i.getAndSet(z ? 0 : 2);
        d();
        this.f27566c.b();
        if (andSet == 2) {
            this.g = null;
        }
    }

    public final boolean a(long j, boolean z) {
        long a2 = this.f27566c.a(j, z);
        if (a2 == -1) {
            return false;
        }
        a(a2);
        return true;
    }
}
