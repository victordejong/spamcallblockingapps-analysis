package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/c.class */
public final class C1763c implements AbstractC1840s, AbstractC1840s.AbstractC1841a {

    /* renamed from: a */
    public final AbstractC1840s f6970a;

    /* renamed from: b */
    long f6971b;

    /* renamed from: c */
    long f6972c;

    /* renamed from: d */
    private AbstractC1840s.AbstractC1841a f6973d;

    /* renamed from: e */
    private C1764a[] f6974e = new C1764a[0];

    /* renamed from: f */
    private long f6975f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/c$a.class */
    public final class C1764a implements AbstractC1756al {

        /* renamed from: a */
        public final AbstractC1756al f6976a;

        /* renamed from: b */
        boolean f6977b;

        public C1764a(AbstractC1756al abstractC1756al) {
            C1763c.this = r4;
            this.f6976a = abstractC1756al;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final int mo42118a(long j) {
            if (C1763c.this.m42281f()) {
                return -3;
            }
            return this.f6976a.mo42118a(j);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final int mo42117a(C2058x c2058x, C1442e c1442e, boolean z) {
            if (C1763c.this.m42281f()) {
                return -3;
            }
            if (this.f6977b) {
                c1442e.f5471a = 4;
                return -4;
            }
            int mo42117a = this.f6976a.mo42117a(c2058x, c1442e, z);
            if (mo42117a == -5) {
                Format format = (Format) C1993a.m41690a(c2058x.f8282c);
                if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = C1763c.this.f6971b != 0 ? 0 : format.encoderDelay;
                if (C1763c.this.f6972c == Long.MIN_VALUE) {
                    i = format.encoderPadding;
                }
                c2058x.f8282c = format.copyWithGaplessInfo(i2, i);
                return -5;
            } else if (C1763c.this.f6972c == Long.MIN_VALUE || ((mo42117a != -4 || c1442e.f5495d < C1763c.this.f6972c) && !(mo42117a == -3 && C1763c.this.mo42077d() == Long.MIN_VALUE))) {
                return mo42117a;
            } else {
                c1442e.mo41916a();
                c1442e.f5471a = 4;
                this.f6977b = true;
                return -4;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final boolean mo42119a() {
            return !C1763c.this.m42281f() && this.f6976a.mo42119a();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: b */
        public final void mo42116b() throws IOException {
            this.f6976a.mo42116b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1763c(AbstractC1840s abstractC1840s, boolean z, long j, long j2) {
        this.f6970a = abstractC1840s;
        this.f6975f = z ? j : (char) 1;
        this.f6971b = j;
        this.f6972c = j2;
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42085a(long j, C1378aj c1378aj) {
        long j2 = this.f6971b;
        if (j == j2) {
            return j2;
        }
        long m41671a = C1996ac.m41671a(c1378aj.f5158f, 0L, j - this.f6971b);
        long j3 = c1378aj.f5159g;
        long j4 = this.f6972c;
        long m41671a2 = C1996ac.m41671a(j3, 0L, j4 == Long.MIN_VALUE ? (char) 65535 : j4 - j);
        if (m41671a != c1378aj.f5158f || m41671a2 != c1378aj.f5159g) {
            c1378aj = new C1378aj(m41671a, m41671a2);
        }
        return this.f6970a.mo42085a(j, c1378aj);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0122  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo42082a(androidx.media2.exoplayer.external.trackselection.AbstractC1940e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.AbstractC1756al[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1763c.mo42082a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
        this.f6970a.mo42086a(j);
    }

    /* renamed from: a */
    public final void m42282a(long j, long j2) {
        this.f6971b = j;
        this.f6972c = j2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42084a(long j, boolean z) {
        this.f6970a.mo42084a(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am.AbstractC1758a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41806a(AbstractC1840s abstractC1840s) {
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6973d)).mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42083a(AbstractC1840s.AbstractC1841a abstractC1841a, long j) {
        this.f6973d = abstractC1841a;
        this.f6970a.mo42083a(this, j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s.AbstractC1841a
    /* renamed from: a */
    public final void mo41805a(AbstractC1840s abstractC1840s) {
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6973d)).mo41805a((AbstractC1840s) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo42080b(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f6975f = r1
            r0 = r5
            androidx.media2.exoplayer.external.source.c$a[] r0 = r0.f6974e
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L34
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2e
            r0 = r12
            r1 = 0
            r0.f6977b = r1
        L2e:
            int r11 = r11 + 1
            goto L16
        L34:
            r0 = r5
            androidx.media2.exoplayer.external.source.s r0 = r0.f6970a
            r1 = r6
            long r0 = r0.mo42080b(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f6971b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L70
            r0 = r5
            long r0 = r0.f6972c
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L70
        L6d:
            r0 = 1
            r15 = r0
        L70:
            r0 = r15
            androidx.media2.exoplayer.external.util.C1993a.m41686b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1763c.mo42080b(long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final TrackGroupArray mo42081b() {
        return this.f6970a.mo42081b();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: c */
    public final long mo42079c() {
        if (m42281f()) {
            long j = this.f6975f;
            this.f6975f = -9223372036854775807L;
            long mo42079c = mo42079c();
            return mo42079c != -9223372036854775807L ? mo42079c : j;
        }
        long mo42079c2 = this.f6970a.mo42079c();
        if (mo42079c2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        C1993a.m41686b(mo42079c2 >= this.f6971b);
        long j2 = this.f6972c;
        boolean z = true;
        if (j2 != Long.MIN_VALUE) {
            z = mo42079c2 <= j2;
        }
        C1993a.m41686b(z);
        return mo42079c2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        return this.f6970a.mo42078c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        long mo42077d = this.f6970a.mo42077d();
        if (mo42077d != Long.MIN_VALUE) {
            long j = this.f6972c;
            if (j != Long.MIN_VALUE && mo42077d >= j) {
                return Long.MIN_VALUE;
            }
            return mo42077d;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        long mo42076e = this.f6970a.mo42076e();
        if (mo42076e != Long.MIN_VALUE) {
            long j = this.f6972c;
            if (j != Long.MIN_VALUE && mo42076e >= j) {
                return Long.MIN_VALUE;
            }
            return mo42076e;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: f */
    final boolean m42281f() {
        return this.f6975f != -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: k_ */
    public final void mo42075k_() throws IOException {
        this.f6970a.mo42075k_();
    }
}
