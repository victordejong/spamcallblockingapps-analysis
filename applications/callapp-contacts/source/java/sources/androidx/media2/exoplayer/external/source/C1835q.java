package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/q.class */
public final class C1835q implements AbstractC1840s, AbstractC1840s.AbstractC1841a {

    /* renamed from: a */
    public final AbstractC1842t f7335a;

    /* renamed from: b */
    public final AbstractC1842t.C1843a f7336b;

    /* renamed from: c */
    long f7337c;

    /* renamed from: d */
    public AbstractC1836a f7338d;

    /* renamed from: e */
    long f7339e = -9223372036854775807L;

    /* renamed from: f */
    private final AbstractC1963b f7340f;

    /* renamed from: g */
    private AbstractC1840s f7341g;

    /* renamed from: h */
    private AbstractC1840s.AbstractC1841a f7342h;

    /* renamed from: i */
    private boolean f7343i;

    /* renamed from: androidx.media2.exoplayer.external.source.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/q$a.class */
    public interface AbstractC1836a {
        /* renamed from: a */
        void mo42103a(AbstractC1842t.C1843a c1843a, IOException iOException);
    }

    public C1835q(AbstractC1842t abstractC1842t, AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        this.f7336b = c1843a;
        this.f7340f = abstractC1963b;
        this.f7335a = abstractC1842t;
        this.f7337c = j;
    }

    /* renamed from: d */
    private long m42105d(long j) {
        long j2 = this.f7339e;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42085a(long j, C1378aj c1378aj) {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42085a(j, c1378aj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.media2.exoplayer.external.source.s] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42082a(AbstractC1940e[] abstractC1940eArr, boolean[] zArr, AbstractC1756al[] abstractC1756alArr, boolean[] zArr2, long j) {
        ?? r0 = this.f7339e;
        ?? r13 = j;
        if (r0 != -9223372036854775807L) {
            int i = (j > this.f7337c ? 1 : (j == this.f7337c ? 0 : -1));
            r13 = j;
            if (i == 0) {
                this.f7339e = -9223372036854775807L;
                r13 = r0;
            }
        }
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42082a(abstractC1940eArr, zArr, abstractC1756alArr, zArr2, r13);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
        ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42086a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42084a(long j, boolean z) {
        ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42084a(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am.AbstractC1758a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41806a(AbstractC1840s abstractC1840s) {
        ((AbstractC1840s.AbstractC1841a) C1996ac.m41659a(this.f7342h)).mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42083a(AbstractC1840s.AbstractC1841a abstractC1841a, long j) {
        this.f7342h = abstractC1841a;
        AbstractC1840s abstractC1840s = this.f7341g;
        if (abstractC1840s != null) {
            abstractC1840s.mo42083a(this, m42105d(this.f7337c));
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s.AbstractC1841a
    /* renamed from: a */
    public final void mo41805a(AbstractC1840s abstractC1840s) {
        ((AbstractC1840s.AbstractC1841a) C1996ac.m41659a(this.f7342h)).mo41805a((AbstractC1840s) this);
    }

    /* renamed from: a */
    public final void m42106a(AbstractC1842t.C1843a c1843a) {
        long m42105d = m42105d(this.f7337c);
        AbstractC1840s mo42072a = this.f7335a.mo42072a(c1843a, this.f7340f, m42105d);
        this.f7341g = mo42072a;
        if (this.f7342h != null) {
            mo42072a.mo42083a(this, m42105d);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final long mo42080b(long j) {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42080b(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final TrackGroupArray mo42081b() {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42081b();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: c */
    public final long mo42079c() {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42079c();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        AbstractC1840s abstractC1840s = this.f7341g;
        return abstractC1840s != null && abstractC1840s.mo42078c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42077d();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        return ((AbstractC1840s) C1996ac.m41659a(this.f7341g)).mo42076e();
    }

    /* renamed from: f */
    public final void m42104f() {
        AbstractC1840s abstractC1840s = this.f7341g;
        if (abstractC1840s != null) {
            this.f7335a.mo42073a(abstractC1840s);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: k_ */
    public final void mo42075k_() throws IOException {
        try {
            AbstractC1840s abstractC1840s = this.f7341g;
            if (abstractC1840s != null) {
                abstractC1840s.mo42075k_();
            } else {
                this.f7335a.mo42065f();
            }
        } catch (IOException e) {
            AbstractC1836a abstractC1836a = this.f7338d;
            if (abstractC1836a == null) {
                throw e;
            }
            if (this.f7343i) {
                return;
            }
            this.f7343i = true;
            abstractC1836a.mo42103a(this.f7336b, e);
        }
    }
}
