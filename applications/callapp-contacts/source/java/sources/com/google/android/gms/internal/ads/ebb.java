package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebb.class */
public final class ebb implements dyc {

    /* renamed from: a */
    final ebz f48579a;

    /* renamed from: b */
    final int f48580b;

    /* renamed from: f */
    eba f48584f;

    /* renamed from: g */
    zzht f48585g;

    /* renamed from: h */
    ebd f48586h;

    /* renamed from: j */
    private eba f48588j;

    /* renamed from: k */
    private boolean f48589k;

    /* renamed from: l */
    private zzht f48590l;

    /* renamed from: m */
    private long f48591m;

    /* renamed from: n */
    private int f48592n;

    /* renamed from: c */
    final eaz f48581c = new eaz();

    /* renamed from: d */
    final eay f48582d = new eay();

    /* renamed from: e */
    final ecy f48583e = new ecy(32);

    /* renamed from: i */
    private final AtomicInteger f48587i = new AtomicInteger();

    public ebb(ebz ebzVar) {
        this.f48579a = ebzVar;
        int mo15286c = ebzVar.mo15286c();
        this.f48580b = mo15286c;
        this.f48592n = mo15286c;
        eba ebaVar = new eba(0L, mo15286c);
        this.f48584f = ebaVar;
        this.f48588j = ebaVar;
    }

    /* renamed from: a */
    private final int m15334a(int i) {
        if (this.f48592n == this.f48580b) {
            this.f48592n = 0;
            if (this.f48588j.f48576c) {
                this.f48588j = this.f48588j.f48578e;
            }
            eba ebaVar = this.f48588j;
            eca mo15291a = this.f48579a.mo15291a();
            eba ebaVar2 = new eba(this.f48588j.f48575b, this.f48580b);
            ebaVar.f48577d = mo15291a;
            ebaVar.f48578e = ebaVar2;
            ebaVar.f48576c = true;
        }
        return Math.min(i, this.f48580b - this.f48592n);
    }

    /* renamed from: b */
    private final boolean m15325b() {
        return this.f48587i.compareAndSet(0, 1);
    }

    /* renamed from: c */
    private final void m15324c() {
        if (!this.f48587i.compareAndSet(1, 0)) {
            m15323d();
        }
    }

    /* renamed from: d */
    private final void m15323d() {
        this.f48581c.m15349a();
        eba ebaVar = this.f48584f;
        if (ebaVar.f48576c) {
            int i = (this.f48588j.f48576c ? 1 : 0) + (((int) (this.f48588j.f48574a - ebaVar.f48574a)) / this.f48580b);
            eca[] ecaVarArr = new eca[i];
            for (int i2 = 0; i2 < i; i2++) {
                ecaVarArr[i2] = ebaVar.f48577d;
                ebaVar = ebaVar.m15336a();
            }
            this.f48579a.mo15288a(ecaVarArr);
        }
        eba ebaVar2 = new eba(0L, this.f48580b);
        this.f48584f = ebaVar2;
        this.f48588j = ebaVar2;
        this.f48591m = 0L;
        this.f48592n = this.f48580b;
        this.f48579a.mo15287b();
    }

    @Override // com.google.android.gms.internal.ads.dyc
    /* renamed from: a */
    public final int mo15329a(dxt dxtVar, int i) throws IOException, InterruptedException {
        if (!m15325b()) {
            int mo15498a = dxtVar.mo15498a(i);
            if (mo15498a == -1) {
                throw new EOFException();
            }
            return mo15498a;
        }
        try {
            int mo15497a = dxtVar.mo15497a(this.f48588j.f48577d.f48648a, this.f48592n + 0, m15334a(i));
            if (mo15497a == -1) {
                throw new EOFException();
            }
            this.f48592n += mo15497a;
            this.f48591m += mo15497a;
            return mo15497a;
        } finally {
            m15324c();
        }
    }

    /* renamed from: a */
    public final void m15335a() {
        if (this.f48587i.getAndSet(2) == 0) {
            m15323d();
        }
    }

    /* renamed from: a */
    public final void m15333a(long j) {
        while (j >= this.f48584f.f48575b) {
            this.f48579a.mo15289a(this.f48584f.f48577d);
            this.f48584f = this.f48584f.m15336a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dyc
    /* renamed from: a */
    public final void mo15332a(long j, int i, int i2, int i3, dyf dyfVar) {
        if (!m15325b()) {
            this.f48581c.m15348a(j);
            return;
        }
        try {
            this.f48581c.m15347a(j, i, (this.f48591m - i2) - i3, i2, dyfVar);
        } finally {
            m15324c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: a */
    public final void m15330a(long j, byte[] bArr, int i) {
        m15333a((long) j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.f48584f.f48574a);
            int min = Math.min(i - i2, this.f48580b - i3);
            eca ecaVar = this.f48584f.f48577d;
            System.arraycopy(ecaVar.f48648a, i3 + 0, bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.f48584f.f48575b) {
                this.f48579a.mo15289a(ecaVar);
                this.f48584f = this.f48584f.m15336a();
                i2 = i4;
                j = r0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dyc
    /* renamed from: a */
    public final void mo15328a(ecy ecyVar, int i) {
        int i2 = i;
        if (!m15325b()) {
            ecyVar.m15224d(i);
            return;
        }
        while (i2 > 0) {
            int m15334a = m15334a(i2);
            ecyVar.m15230a(this.f48588j.f48577d.f48648a, this.f48592n + 0, m15334a);
            this.f48592n += m15334a;
            this.f48591m += m15334a;
            i2 -= m15334a;
        }
        m15324c();
    }

    @Override // com.google.android.gms.internal.ads.dyc
    /* renamed from: a */
    public final void mo15327a(zzht zzhtVar) {
        boolean m15344a = this.f48581c.m15344a(zzhtVar == null ? null : zzhtVar);
        this.f48590l = zzhtVar;
        this.f48589k = false;
        ebd ebdVar = this.f48586h;
        if (ebdVar == null || !m15344a) {
            return;
        }
        ebdVar.mo15318f();
    }

    /* renamed from: a */
    public final void m15326a(boolean z) {
        int andSet = this.f48587i.getAndSet(z ? 0 : 2);
        m15323d();
        this.f48581c.m15343b();
        if (andSet == 2) {
            this.f48585g = null;
        }
    }

    /* renamed from: a */
    public final boolean m15331a(long j, boolean z) {
        long m15346a = this.f48581c.m15346a(j, z);
        if (m15346a == -1) {
            return false;
        }
        m15333a(m15346a);
        return true;
    }
}
