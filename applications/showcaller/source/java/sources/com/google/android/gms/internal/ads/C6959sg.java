package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.sg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sg.class */
public final class C6959sg implements AbstractC7104wd {

    /* renamed from: e */
    private C6885qg f29488e;

    /* renamed from: f */
    private C6885qg f29489f;

    /* renamed from: g */
    private zzanm f29490g;

    /* renamed from: h */
    private zzanm f29491h;

    /* renamed from: i */
    private long f29492i;

    /* renamed from: k */
    private AbstractC6922rg f29494k;

    /* renamed from: l */
    private final C6960sh f29495l;

    /* renamed from: a */
    private final C6848pg f29484a = new C6848pg();

    /* renamed from: b */
    private final C6811og f29485b = new C6811og();

    /* renamed from: c */
    private final C6665ki f29486c = new C6665ki(32);

    /* renamed from: d */
    private final AtomicInteger f29487d = new AtomicInteger();

    /* renamed from: j */
    private int f29493j = 65536;

    public C6959sg(C6960sh c6960sh, byte[] bArr) {
        this.f29495l = c6960sh;
        C6885qg c6885qg = new C6885qg(0L, 65536);
        this.f29488e = c6885qg;
        this.f29489f = c6885qg;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: o */
    private final void m11046o(long j, byte[] bArr, int i) {
        m11045p(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.f29488e.f28464a);
            int min = Math.min(i - i2, 65536 - i3);
            C6775nh c6775nh = this.f29488e.f28467d;
            System.arraycopy(c6775nh.f27143a, i3, bArr, i2, min);
            ?? r0 = j + min;
            int i4 = i2 + min;
            i2 = i4;
            j = r0;
            if (r0 == this.f29488e.f28465b) {
                this.f29495l.m11025d(c6775nh);
                C6885qg c6885qg = this.f29488e;
                c6885qg.f28467d = null;
                this.f29488e = c6885qg.f28468e;
                i2 = i4;
                j = r0;
            }
        }
    }

    /* renamed from: p */
    private final void m11045p(long j) {
        while (true) {
            C6885qg c6885qg = this.f29488e;
            if (j >= c6885qg.f28465b) {
                this.f29495l.m11025d(c6885qg.f28467d);
                C6885qg c6885qg2 = this.f29488e;
                c6885qg2.f28467d = null;
                this.f29488e = c6885qg2.f28468e;
            } else {
                return;
            }
        }
    }

    /* renamed from: q */
    private final boolean m11044q() {
        return this.f29487d.compareAndSet(0, 1);
    }

    /* renamed from: r */
    private final void m11043r() {
        if (!this.f29487d.compareAndSet(1, 0)) {
            m11042s();
        }
    }

    /* renamed from: s */
    private final void m11042s() {
        this.f29484a.m12257a();
        C6885qg c6885qg = this.f29488e;
        if (c6885qg.f28466c) {
            C6885qg c6885qg2 = this.f29489f;
            int i = (c6885qg2.f28466c ? 1 : 0) + (((int) (c6885qg2.f28464a - c6885qg.f28464a)) / 65536);
            C6775nh[] c6775nhArr = new C6775nh[i];
            for (int i2 = 0; i2 < i; i2++) {
                c6775nhArr[i2] = c6885qg.f28467d;
                c6885qg.f28467d = null;
                c6885qg = c6885qg.f28468e;
            }
            this.f29495l.m11024e(c6775nhArr);
        }
        C6885qg c6885qg3 = new C6885qg(0L, 65536);
        this.f29488e = c6885qg3;
        this.f29489f = c6885qg3;
        this.f29492i = 0L;
        this.f29493j = 65536;
        this.f29495l.m11023f();
    }

    /* renamed from: t */
    private final int m11041t(int i) {
        if (this.f29493j == 65536) {
            this.f29493j = 0;
            C6885qg c6885qg = this.f29489f;
            if (c6885qg.f28466c) {
                this.f29489f = c6885qg.f28468e;
            }
            C6885qg c6885qg2 = this.f29489f;
            C6775nh m11026c = this.f29495l.m11026c();
            C6885qg c6885qg3 = new C6885qg(this.f29489f.f28465b, 65536);
            c6885qg2.f28467d = m11026c;
            c6885qg2.f28468e = c6885qg3;
            c6885qg2.f28466c = true;
        }
        return Math.min(i, 65536 - this.f29493j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7104wd
    /* renamed from: a */
    public final void mo9668a(long j, int i, int i2, int i3, C7067vd c7067vd) {
        if (!m11044q()) {
            this.f29484a.m12246l(j);
            return;
        }
        try {
            this.f29484a.m12247k(j, i, this.f29492i - i2, i2, c7067vd);
        } finally {
            m11043r();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7104wd
    /* renamed from: b */
    public final int mo9667b(C6734md c6734md, int i, boolean z) {
        if (!m11044q()) {
            int m13294c = c6734md.m13294c(i);
            if (m13294c == -1) {
                throw new EOFException();
            }
            return m13294c;
        }
        try {
            int m13296a = c6734md.m13296a(this.f29489f.f28467d.f27143a, this.f29493j, m11041t(i));
            if (m13296a == -1) {
                throw new EOFException();
            }
            this.f29493j += m13296a;
            this.f29492i += m13296a;
            return m13296a;
        } finally {
            m11043r();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7104wd
    /* renamed from: c */
    public final void mo9666c(zzanm zzanmVar) {
        zzanm zzanmVar2 = zzanmVar == null ? null : zzanmVar;
        boolean m12248j = this.f29484a.m12248j(zzanmVar2);
        this.f29491h = zzanmVar;
        AbstractC6922rg abstractC6922rg = this.f29494k;
        if (abstractC6922rg == null || !m12248j) {
            return;
        }
        abstractC6922rg.mo11475a(zzanmVar2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7104wd
    /* renamed from: d */
    public final void mo9665d(C6665ki c6665ki, int i) {
        if (!m11044q()) {
            c6665ki.m13898j(i);
            return;
        }
        while (i > 0) {
            int m11041t = m11041t(i);
            c6665ki.m13897k(this.f29489f.f28467d.f27143a, this.f29493j, m11041t);
            this.f29493j += m11041t;
            this.f29492i += m11041t;
            i -= m11041t;
        }
        m11043r();
    }

    /* renamed from: e */
    public final void m11056e(boolean z) {
        int andSet = this.f29487d.getAndSet(true != z ? 2 : 0);
        m11042s();
        this.f29484a.m12256b();
        if (andSet == 2) {
            this.f29490g = null;
        }
    }

    /* renamed from: f */
    public final int m11055f() {
        return this.f29484a.m12255c();
    }

    /* renamed from: g */
    public final void m11054g() {
        if (this.f29487d.getAndSet(2) == 0) {
            m11042s();
        }
    }

    /* renamed from: h */
    public final boolean m11053h() {
        return this.f29484a.m12254d();
    }

    /* renamed from: i */
    public final zzanm m11052i() {
        return this.f29484a.m12253e();
    }

    /* renamed from: j */
    public final long m11051j() {
        return this.f29484a.m12252f();
    }

    /* renamed from: k */
    public final void m11050k() {
        long m12250h = this.f29484a.m12250h();
        if (m12250h != -1) {
            m11045p(m12250h);
        }
    }

    /* renamed from: l */
    public final boolean m11049l(long j, boolean z) {
        long m12249i = this.f29484a.m12249i(j, z);
        if (m12249i == -1) {
            return false;
        }
        m11045p(m12249i);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0101, code lost:
        if (r0.length < r15) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x011e, code lost:
        if (r0.length < r15) goto L30;
     */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m11048m(com.google.android.gms.internal.ads.C6954sb r9, com.google.android.gms.internal.ads.C6548hd r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6959sg.m11048m(com.google.android.gms.internal.ads.sb, com.google.android.gms.internal.ads.hd, boolean, boolean, long):int");
    }

    /* renamed from: n */
    public final void m11047n(AbstractC6922rg abstractC6922rg) {
        this.f29494k = abstractC6922rg;
    }
}
