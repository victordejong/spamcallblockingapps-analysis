package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqn.class */
public final class dqn implements dno {

    /* renamed from: a */
    private final drn f15413a;

    /* renamed from: b */
    private final int f15414b;

    /* renamed from: c */
    private final dql f15415c = new dql();

    /* renamed from: d */
    private final dqk f15416d = new dqk();

    /* renamed from: e */
    private final dsk f15417e = new dsk(32);

    /* renamed from: f */
    private final AtomicInteger f15418f = new AtomicInteger();

    /* renamed from: g */
    private dqm f15419g;

    /* renamed from: h */
    private dqm f15420h;

    /* renamed from: i */
    private dlf f15421i;

    /* renamed from: j */
    private boolean f15422j;

    /* renamed from: k */
    private dlf f15423k;

    /* renamed from: l */
    private long f15424l;

    /* renamed from: m */
    private int f15425m;

    /* renamed from: n */
    private dqp f15426n;

    public dqn(drn drnVar) {
        this.f15413a = drnVar;
        this.f15414b = drnVar.mo8799c();
        this.f15425m = this.f15414b;
        this.f15419g = new dqm(0L, this.f15414b);
        this.f15420h = this.f15419g;
    }

    /* renamed from: a */
    private final int m8869a(int i) {
        if (this.f15425m == this.f15414b) {
            this.f15425m = 0;
            if (this.f15420h.f15410c) {
                this.f15420h = this.f15420h.f15412e;
            }
            dqm dqmVar = this.f15420h;
            drk mo8804a = this.f15413a.mo8804a();
            dqm dqmVar2 = new dqm(this.f15420h.f15409b, this.f15414b);
            dqmVar.f15411d = mo8804a;
            dqmVar.f15412e = dqmVar2;
            dqmVar.f15410c = true;
        }
        return Math.min(i, this.f15414b - this.f15425m);
    }

    /* renamed from: a */
    private final void m8868a(long j) {
        while (j >= this.f15419g.f15409b) {
            this.f15413a.mo8802a(this.f15419g.f15411d);
            this.f15419g = this.f15419g.m8871a();
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
    private final void m8865a(long j, byte[] bArr, int i) {
        int i2 = 0;
        m8868a((long) j);
        while (i2 < i) {
            int i3 = (int) (j - this.f15419g.f15408a);
            int min = Math.min(i - i2, this.f15414b - i3);
            drk drkVar = this.f15419g.f15411d;
            System.arraycopy(drkVar.f15478a, drkVar.m8816a(i3), bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.f15419g.f15409b) {
                this.f15413a.mo8802a(drkVar);
                this.f15419g = this.f15419g.m8871a();
                i2 = i4;
                j = r0;
            }
        }
    }

    /* renamed from: g */
    private final boolean m8853g() {
        return this.f15418f.compareAndSet(0, 1);
    }

    /* renamed from: h */
    private final void m8852h() {
        if (!this.f15418f.compareAndSet(1, 0)) {
            m8851i();
        }
    }

    /* renamed from: i */
    private final void m8851i() {
        this.f15415c.m8883a();
        dqm dqmVar = this.f15419g;
        if (dqmVar.f15410c) {
            drk[] drkVarArr = new drk[(this.f15420h.f15410c ? 1 : 0) + (((int) (this.f15420h.f15408a - dqmVar.f15408a)) / this.f15414b)];
            for (int i = 0; i < drkVarArr.length; i++) {
                drkVarArr[i] = dqmVar.f15411d;
                dqmVar = dqmVar.m8871a();
            }
            this.f15413a.mo8801a(drkVarArr);
        }
        this.f15419g = new dqm(0L, this.f15414b);
        this.f15420h = this.f15419g;
        this.f15424l = 0L;
        this.f15425m = this.f15414b;
        this.f15413a.mo8800b();
    }

    /* renamed from: a */
    public final int m8870a() {
        return this.f15415c.m8876c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x011a, code lost:
        if (r0.length < r15) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0139, code lost:
        if (r0.length < r15) goto L34;
     */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m8863a(com.google.android.gms.internal.ads.dlg r9, com.google.android.gms.internal.ads.dmx r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dqn.m8863a(com.google.android.gms.internal.ads.dlg, com.google.android.gms.internal.ads.dmx, boolean, boolean, long):int");
    }

    @Override // com.google.android.gms.internal.ads.dno
    /* renamed from: a */
    public final int mo8862a(dng dngVar, int i, boolean z) {
        int mo9062a;
        if (!m8853g()) {
            int mo9063a = dngVar.mo9063a(i);
            mo9062a = mo9063a;
            if (mo9063a == -1) {
                throw new EOFException();
            }
        } else {
            try {
                int m8869a = m8869a(i);
                drk drkVar = this.f15420h.f15411d;
                mo9062a = dngVar.mo9062a(drkVar.f15478a, drkVar.m8816a(this.f15425m), m8869a);
                if (mo9062a == -1) {
                    throw new EOFException();
                }
                this.f15425m += mo9062a;
                this.f15424l += mo9062a;
            } finally {
                m8852h();
            }
        }
        return mo9062a;
    }

    @Override // com.google.android.gms.internal.ads.dno
    /* renamed from: a */
    public final void mo8867a(long j, int i, int i2, int i3, dnr dnrVar) {
        if (!m8853g()) {
            this.f15415c.m8882a(j);
            return;
        }
        try {
            this.f15415c.m8881a(j, i, this.f15424l - i2, i2, dnrVar);
        } finally {
            m8852h();
        }
    }

    @Override // com.google.android.gms.internal.ads.dno
    /* renamed from: a */
    public final void mo8864a(dlf dlfVar) {
        dlf m9235a = dlfVar == null ? null : (0 == 0 || dlfVar.f14647o == Long.MAX_VALUE) ? dlfVar : dlfVar.m9235a(dlfVar.f14647o);
        boolean m8879a = this.f15415c.m8879a(m9235a);
        this.f15423k = dlfVar;
        this.f15422j = false;
        if (this.f15426n == null || !m8879a) {
            return;
        }
        this.f15426n.mo8846a(m9235a);
    }

    /* renamed from: a */
    public final void m8861a(dqp dqpVar) {
        this.f15426n = dqpVar;
    }

    @Override // com.google.android.gms.internal.ads.dno
    /* renamed from: a */
    public final void mo8860a(dsk dskVar, int i) {
        int i2 = i;
        if (!m8853g()) {
            dskVar.m8731d(i);
            return;
        }
        while (i2 > 0) {
            int m8869a = m8869a(i2);
            drk drkVar = this.f15420h.f15411d;
            dskVar.m8737a(drkVar.f15478a, drkVar.m8816a(this.f15425m), m8869a);
            this.f15425m += m8869a;
            this.f15424l += m8869a;
            i2 -= m8869a;
        }
        m8852h();
    }

    /* renamed from: a */
    public final void m8859a(boolean z) {
        int andSet = this.f15418f.getAndSet(z ? 0 : 2);
        m8851i();
        this.f15415c.m8877b();
        if (andSet == 2) {
            this.f15421i = null;
        }
    }

    /* renamed from: a */
    public final boolean m8866a(long j, boolean z) {
        boolean z2;
        long m8880a = this.f15415c.m8880a(j, z);
        if (m8880a == -1) {
            z2 = false;
        } else {
            m8868a(m8880a);
            z2 = true;
        }
        return z2;
    }

    /* renamed from: b */
    public final void m8858b() {
        if (this.f15418f.getAndSet(2) == 0) {
            m8851i();
        }
    }

    /* renamed from: c */
    public final boolean m8857c() {
        return this.f15415c.m8875d();
    }

    /* renamed from: d */
    public final dlf m8856d() {
        return this.f15415c.m8874e();
    }

    /* renamed from: e */
    public final long m8855e() {
        return this.f15415c.m8873f();
    }

    /* renamed from: f */
    public final void m8854f() {
        long m8872g = this.f15415c.m8872g();
        if (m8872g != -1) {
            m8868a(m8872g);
        }
    }
}
