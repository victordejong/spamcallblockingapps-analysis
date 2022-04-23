package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1540c;
import p012b.p076s.p078b.p079a.p102w0.C1581l;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1673l;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p110y0.C1675m;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
/* renamed from: b.s.b.a.y */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y.class */
public final class C1652y {

    /* renamed from: a */
    public final AbstractC1631p f6792a;

    /* renamed from: b */
    public final Object f6793b;

    /* renamed from: c */
    public final AbstractC1563h0[] f6794c;

    /* renamed from: d */
    public boolean f6795d;

    /* renamed from: e */
    public boolean f6796e;

    /* renamed from: f */
    public C1676z f6797f;

    /* renamed from: g */
    public final boolean[] f6798g;

    /* renamed from: h */
    public final AbstractC1238i0[] f6799h;

    /* renamed from: i */
    public final AbstractC1673l f6800i;

    /* renamed from: j */
    public final AbstractC1634r f6801j;

    /* renamed from: k */
    public C1652y f6802k;

    /* renamed from: l */
    public TrackGroupArray f6803l;

    /* renamed from: m */
    public C1675m f6804m;

    /* renamed from: n */
    public long f6805n;

    public C1652y(AbstractC1238i0[] i0VarArr, long j, AbstractC1673l lVar, AbstractC1678b bVar, AbstractC1634r rVar, C1676z zVar) {
        this.f6799h = i0VarArr;
        long j2 = zVar.f6861b;
        this.f6805n = j - j2;
        this.f6800i = lVar;
        this.f6801j = rVar;
        AbstractC1634r.C1635a aVar = zVar.f6860a;
        this.f6793b = aVar.f6755a;
        this.f6797f = zVar;
        this.f6794c = new AbstractC1563h0[i0VarArr.length];
        this.f6798g = new boolean[i0VarArr.length];
        this.f6792a = m32478a(aVar, rVar, bVar, j2, zVar.f6863d);
    }

    /* renamed from: a */
    public static AbstractC1631p m32478a(AbstractC1634r.C1635a aVar, AbstractC1634r rVar, AbstractC1678b bVar, long j, long j2) {
        AbstractC1631p a = rVar.mo32294a(aVar, bVar, j);
        AbstractC1631p pVar = a;
        if (j2 != -9223372036854775807L) {
            pVar = a;
            if (j2 != Long.MIN_VALUE) {
                pVar = new C1540c(a, true, 0L, j2);
            }
        }
        return pVar;
    }

    /* renamed from: a */
    public static void m32479a(long j, AbstractC1634r rVar, AbstractC1631p pVar) {
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                rVar.mo32295a(pVar);
            } else {
                rVar.mo32295a(((C1540c) pVar).f6267a);
            }
        } catch (RuntimeException e) {
            C1175j.m34419a("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: a */
    public long m32477a(C1675m mVar, long j, boolean z) {
        return m32476a(mVar, j, z, new boolean[this.f6799h.length]);
    }

    /* renamed from: a */
    public long m32476a(C1675m mVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= mVar.f6856a) {
                break;
            }
            boolean[] zArr2 = this.f6798g;
            if (z || !mVar.m32397a(this.f6804m, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m32470b(this.f6794c);
        m32482a();
        this.f6804m = mVar;
        m32473b();
        C1671j jVar = mVar.f6858c;
        long a = this.f6792a.mo32516a(jVar.m32408a(), this.f6798g, this.f6794c, zArr, j);
        m32474a(this.f6794c);
        this.f6796e = false;
        int i2 = 0;
        while (true) {
            AbstractC1563h0[] h0VarArr = this.f6794c;
            if (i2 >= h0VarArr.length) {
                return a;
            }
            if (h0VarArr[i2] != null) {
                C1160a.m34518b(mVar.m32399a(i2));
                if (this.f6799h[i2].mo34141e() != 6) {
                    this.f6796e = true;
                }
            } else {
                C1160a.m34518b(jVar.m32407a(i2) == null);
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final void m32482a() {
        C1675m mVar = this.f6804m;
        if (m32459k() && mVar != null) {
            for (int i = 0; i < mVar.f6856a; i++) {
                boolean a = mVar.m32399a(i);
                AbstractC1668i a2 = mVar.f6858c.m32407a(i);
                if (a && a2 != null) {
                    a2.mo32413f();
                }
            }
        }
    }

    /* renamed from: a */
    public void m32481a(float f, AbstractC1252n0 n0Var) throws ExoPlaybackException {
        this.f6795d = true;
        this.f6803l = this.f6792a.mo32510g();
        C1675m b = m32472b(f, n0Var);
        C1160a.m34522a(b);
        long a = m32477a(b, this.f6797f.f6861b, false);
        long j = this.f6805n;
        C1676z zVar = this.f6797f;
        this.f6805n = j + (zVar.f6861b - a);
        this.f6797f = zVar.m32395b(a);
    }

    /* renamed from: a */
    public void m32480a(long j) {
        C1160a.m34518b(m32459k());
        this.f6792a.mo32520a(m32468c(j));
    }

    /* renamed from: a */
    public void m32475a(C1652y yVar) {
        if (yVar != this.f6802k) {
            m32482a();
            this.f6802k = yVar;
            m32473b();
        }
    }

    /* renamed from: a */
    public final void m32474a(AbstractC1563h0[] h0VarArr) {
        C1675m mVar = this.f6804m;
        C1160a.m34522a(mVar);
        C1675m mVar2 = mVar;
        int i = 0;
        while (true) {
            AbstractC1238i0[] i0VarArr = this.f6799h;
            if (i < i0VarArr.length) {
                if (i0VarArr[i].mo34141e() == 6 && mVar2.m32399a(i)) {
                    h0VarArr[i] = new C1581l();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public C1675m m32472b(float f, AbstractC1252n0 n0Var) throws ExoPlaybackException {
        AbstractC1668i[] a;
        C1675m a2 = this.f6800i.mo32402a(this.f6799h, m32462h(), this.f6797f.f6860a, n0Var);
        if (a2.m32398a(this.f6804m)) {
            return null;
        }
        for (AbstractC1668i iVar : a2.f6858c.m32408a()) {
            if (iVar != null) {
                iVar.mo32424a(f);
            }
        }
        return a2;
    }

    /* renamed from: b */
    public final void m32473b() {
        C1675m mVar = this.f6804m;
        if (m32459k() && mVar != null) {
            for (int i = 0; i < mVar.f6856a; i++) {
                boolean a = mVar.m32399a(i);
                AbstractC1668i a2 = mVar.f6858c.m32407a(i);
                if (a && a2 != null) {
                    a2.mo32417c();
                }
            }
        }
    }

    /* renamed from: b */
    public void m32471b(long j) {
        C1160a.m34518b(m32459k());
        if (this.f6795d) {
            this.f6792a.mo32514b(m32468c(j));
        }
    }

    /* renamed from: b */
    public final void m32470b(AbstractC1563h0[] h0VarArr) {
        int i = 0;
        while (true) {
            AbstractC1238i0[] i0VarArr = this.f6799h;
            if (i < i0VarArr.length) {
                if (i0VarArr[i].mo34141e() == 6) {
                    h0VarArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m32469c() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f6795d
            if (r0 != 0) goto L_0x000f
            r0 = r5
            b.s.b.a.z r0 = r0.f6797f
            long r0 = r0.f6861b
            return r0
        L_0x000f:
            r0 = r5
            boolean r0 = r0.f6796e
            if (r0 == 0) goto L_0x0023
            r0 = r5
            b.s.b.a.w0.p r0 = r0.f6792a
            long r0 = r0.mo32515b()
            r6 = r0
            goto L_0x0027
        L_0x0023:
            r0 = -9223372036854775808
            r6 = r0
        L_0x0027:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            r0 = r5
            b.s.b.a.z r0 = r0.f6797f
            long r0 = r0.f6864e
            r8 = r0
        L_0x0039:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1652y.m32469c():long");
    }

    /* renamed from: c */
    public long m32468c(long j) {
        return j - m32464f();
    }

    /* renamed from: d */
    public long m32466d(long j) {
        return j + m32464f();
    }

    /* renamed from: d */
    public C1652y m32467d() {
        return this.f6802k;
    }

    /* renamed from: e */
    public long m32465e() {
        return !this.f6795d ? 0L : this.f6792a.mo32521a();
    }

    /* renamed from: f */
    public long m32464f() {
        return this.f6805n;
    }

    /* renamed from: g */
    public long m32463g() {
        return this.f6797f.f6861b + this.f6805n;
    }

    /* renamed from: h */
    public TrackGroupArray m32462h() {
        TrackGroupArray trackGroupArray = this.f6803l;
        C1160a.m34522a(trackGroupArray);
        return trackGroupArray;
    }

    /* renamed from: i */
    public C1675m m32461i() {
        C1675m mVar = this.f6804m;
        C1160a.m34522a(mVar);
        return mVar;
    }

    /* renamed from: j */
    public boolean m32460j() {
        return this.f6795d && (!this.f6796e || this.f6792a.mo32515b() == Long.MIN_VALUE);
    }

    /* renamed from: k */
    public final boolean m32459k() {
        return this.f6802k == null;
    }

    /* renamed from: l */
    public void m32458l() {
        m32482a();
        this.f6804m = null;
        m32479a(this.f6797f.f6863d, this.f6801j, this.f6792a);
    }
}
