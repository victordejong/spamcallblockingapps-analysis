package androidx.media2.exoplayer.external;

import android.util.Pair;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.ab */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ab.class */
final class C1366ab {

    /* renamed from: b */
    int f5110b;

    /* renamed from: c */
    boolean f5111c;

    /* renamed from: d */
    C2060z f5112d;

    /* renamed from: e */
    C2060z f5113e;

    /* renamed from: f */
    C2060z f5114f;

    /* renamed from: g */
    int f5115g;

    /* renamed from: h */
    Object f5116h;

    /* renamed from: k */
    private long f5119k;

    /* renamed from: l */
    private long f5120l;

    /* renamed from: i */
    private final AbstractC1383al.C1385a f5117i = new AbstractC1383al.C1385a();

    /* renamed from: j */
    private final AbstractC1383al.C1386b f5118j = new AbstractC1383al.C1386b();

    /* renamed from: a */
    AbstractC1383al f5109a = AbstractC1383al.f5203a;

    /* renamed from: a */
    private long m43145a(Object obj) {
        int mo42088a;
        int i = this.f5109a.mo42381a(obj, this.f5117i).f5206c;
        Object obj2 = this.f5116h;
        if (obj2 == null || (mo42088a = this.f5109a.mo42088a(obj2)) == -1 || this.f5109a.mo42091a(mo42088a, this.f5117i, false).f5206c != i) {
            C2060z c2060z = this.f5112d;
            while (true) {
                C2060z c2060z2 = c2060z;
                if (c2060z2 == null) {
                    C2060z c2060z3 = this.f5112d;
                    while (true) {
                        C2060z c2060z4 = c2060z3;
                        if (c2060z4 == null) {
                            long j = this.f5119k;
                            this.f5119k = 1 + j;
                            return j;
                        }
                        int mo42088a2 = this.f5109a.mo42088a(c2060z4.f8284b);
                        if (mo42088a2 != -1 && this.f5109a.mo42091a(mo42088a2, this.f5117i, false).f5206c == i) {
                            return c2060z4.f8288f.f5102a.f7359d;
                        }
                        c2060z3 = c2060z4.f8289g;
                    }
                } else if (c2060z2.f8284b.equals(obj)) {
                    return c2060z2.f8288f.f5102a.f7359d;
                } else {
                    c2060z = c2060z2.f8289g;
                }
            }
        } else {
            return this.f5120l;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: a */
    private C1365aa m43144a(Object obj, int i, int i2, long j, long j2) {
        AbstractC1842t.C1843a c1843a = new AbstractC1842t.C1843a(obj, i, i2, j2);
        return new C1365aa(c1843a, (i2 == this.f5117i.m43084b(i) ? this.f5117i.f5209f.f6803e : false) == true ? 1L : 0L, j, -9223372036854775807L, this.f5109a.mo42381a(c1843a.f7356a, this.f5117i).m43080c(c1843a.f7357b, c1843a.f7358c), false, false);
    }

    /* renamed from: a */
    private AbstractC1842t.C1843a m43142a(Object obj, long j, long j2) {
        this.f5109a.mo42381a(obj, this.f5117i);
        int m43087a = this.f5117i.m43087a(j);
        return m43087a == -1 ? new AbstractC1842t.C1843a(obj, j2, this.f5117i.m43082b(j)) : new AbstractC1842t.C1843a(obj, m43087a, this.f5117i.m43084b(m43087a), j2);
    }

    /* renamed from: a */
    private static boolean m43150a(AbstractC1842t.C1843a c1843a) {
        return !c1843a.m42064a() && c1843a.f7360e == -1;
    }

    /* renamed from: a */
    private boolean m43148a(AbstractC1842t.C1843a c1843a, boolean z) {
        int mo42088a = this.f5109a.mo42088a(c1843a.f7356a);
        return !this.f5109a.mo42095a(this.f5109a.mo42091a(mo42088a, this.f5117i, false).f5206c, this.f5118j, 0L).f5215f && this.f5109a.m43090b(mo42088a, this.f5117i, this.f5118j, this.f5110b, this.f5111c) && z;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: b */
    private C1365aa m43139b(Object obj, long j, long j2) {
        int m43082b = this.f5117i.m43082b(j);
        AbstractC1842t.C1843a c1843a = new AbstractC1842t.C1843a(obj, j2, m43082b);
        boolean m43150a = m43150a(c1843a);
        boolean m43148a = m43148a(c1843a, m43150a);
        char m43089a = m43082b != -1 ? this.f5117i.m43089a(m43082b) : (char) 1;
        return new C1365aa(c1843a, j, -9223372036854775807L, m43089a, (m43089a == -9223372036854775807L || m43089a == Long.MIN_VALUE) ? this.f5117i.f5207d : m43089a, m43150a, m43148a);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: a */
    public final C1365aa m43152a(C1365aa c1365aa) {
        AbstractC1842t.C1843a c1843a = c1365aa.f5102a;
        boolean m43150a = m43150a(c1843a);
        boolean m43148a = m43148a(c1843a, m43150a);
        this.f5109a.mo42381a(c1365aa.f5102a.f7356a, this.f5117i);
        return new C1365aa(c1843a, c1365aa.f5103b, c1365aa.f5104c, c1365aa.f5105d, c1843a.m42064a() ? this.f5117i.m43080c(c1843a.f7357b, c1843a.f7358c) : (c1365aa.f5105d == -9223372036854775807L || c1365aa.f5105d == Long.MIN_VALUE) ? this.f5117i.f5207d : c1365aa.f5105d, m43150a, m43148a);
    }

    /* renamed from: a */
    public final C1365aa m43149a(AbstractC1842t.C1843a c1843a, long j, long j2) {
        this.f5109a.mo42381a(c1843a.f7356a, this.f5117i);
        if (c1843a.m42064a()) {
            if (this.f5117i.m43083b(c1843a.f7357b, c1843a.f7358c)) {
                return m43144a(c1843a.f7356a, c1843a.f7357b, c1843a.f7358c, j, c1843a.f7359d);
            }
            return null;
        }
        return m43139b(c1843a.f7356a, j2, c1843a.f7359d);
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: a */
    public final C1365aa m43146a(C2060z c2060z, long j) {
        char c;
        Object obj;
        char c2;
        C1365aa c1365aa = c2060z.f8288f;
        long j2 = (c2060z.f8292j + c1365aa.f5106e) - j;
        boolean z = false;
        if (c1365aa.f5107f) {
            int m43093a = this.f5109a.m43093a(this.f5109a.mo42088a(c1365aa.f5102a.f7356a), this.f5117i, this.f5118j, this.f5110b, this.f5111c);
            if (m43093a == -1) {
                return null;
            }
            int i = this.f5109a.mo42091a(m43093a, this.f5117i, true).f5206c;
            Object obj2 = this.f5117i.f5205b;
            char c3 = c1365aa.f5102a.f7359d;
            if (this.f5109a.mo42095a(i, this.f5118j, 0L).f5216g == m43093a) {
                Pair<Object, Long> m43091a = this.f5109a.m43091a(this.f5118j, this.f5117i, i, -9223372036854775807L, Math.max(0L, j2));
                if (m43091a == null) {
                    return null;
                }
                Object obj3 = m43091a.first;
                c = ((Long) m43091a.second).longValue();
                C2060z c2060z2 = c2060z.f8289g;
                if (c2060z2 == null || !c2060z2.f8284b.equals(obj3)) {
                    char c4 = this.f5119k;
                    this.f5119k = 1 + c4;
                    c2 = c4;
                } else {
                    c2 = c2060z2.f8288f.f5102a.f7359d;
                }
                z = true;
                obj = obj3;
                c3 = c2;
            } else {
                obj = obj2;
                c = 0;
            }
            return m43149a(m43142a(obj, c, c3), z ? 1L : 0L, (long) c);
        }
        AbstractC1842t.C1843a c1843a = c1365aa.f5102a;
        this.f5109a.mo42381a(c1843a.f7356a, this.f5117i);
        if (!c1843a.m42064a()) {
            int m43087a = this.f5117i.m43087a(c1365aa.f5105d);
            if (m43087a == -1) {
                return m43139b(c1843a.f7356a, c1365aa.f5106e, c1843a.f7359d);
            }
            int m43084b = this.f5117i.m43084b(m43087a);
            if (this.f5117i.m43083b(m43087a, m43084b)) {
                return m43144a(c1843a.f7356a, m43087a, m43084b, c1365aa.f5106e, c1843a.f7359d);
            }
            return null;
        }
        int i2 = c1843a.f7357b;
        int m43081c = this.f5117i.m43081c(i2);
        if (m43081c == -1) {
            return null;
        }
        int m43088a = this.f5117i.m43088a(i2, c1843a.f7358c);
        if (m43088a < m43081c) {
            if (this.f5117i.m43083b(i2, m43088a)) {
                return m43144a(c1843a.f7356a, i2, m43088a, c1365aa.f5104c, c1843a.f7359d);
            }
            return null;
        }
        char c5 = c1365aa.f5104c;
        int i3 = (c5 > (-9223372036854775807L) ? 1 : (c5 == (-9223372036854775807L) ? 0 : -1));
        char c6 = c5;
        if (i3 == 0) {
            AbstractC1383al abstractC1383al = this.f5109a;
            AbstractC1383al.C1386b c1386b = this.f5118j;
            AbstractC1383al.C1385a c1385a = this.f5117i;
            Pair<Object, Long> m43091a2 = abstractC1383al.m43091a(c1386b, c1385a, c1385a.f5206c, -9223372036854775807L, Math.max(0L, j2));
            if (m43091a2 == null) {
                return null;
            }
            c6 = ((Long) m43091a2.second).longValue();
        }
        return m43139b(c1843a.f7356a, c6, c1843a.f7359d);
    }

    /* renamed from: a */
    public final AbstractC1842t.C1843a m43143a(Object obj, long j) {
        return m43142a(obj, j, m43145a(obj));
    }

    /* renamed from: a */
    public final C2060z m43154a() {
        C2060z c2060z = this.f5112d;
        if (c2060z == null) {
            return null;
        }
        if (c2060z == this.f5113e) {
            this.f5113e = c2060z.f8289g;
        }
        this.f5112d.m41396e();
        int i = this.f5115g - 1;
        this.f5115g = i;
        if (i == 0) {
            this.f5114f = null;
            this.f5116h = this.f5112d.f8284b;
            this.f5120l = this.f5112d.f8288f.f5102a.f7359d;
        }
        C2060z c2060z2 = this.f5112d.f8289g;
        this.f5112d = c2060z2;
        return c2060z2;
    }

    /* renamed from: a */
    public final void m43153a(long j) {
        C2060z c2060z = this.f5114f;
        if (c2060z != null) {
            c2060z.m41406a(j);
        }
    }

    /* renamed from: a */
    public final void m43141a(boolean z) {
        C2060z c2060z = this.f5112d;
        if (c2060z != null) {
            this.f5116h = z ? c2060z.f8284b : null;
            this.f5120l = c2060z.f8288f.f5102a.f7359d;
            m43147a(c2060z);
            c2060z.m41396e();
        } else if (!z) {
            this.f5116h = null;
        }
        this.f5112d = null;
        this.f5114f = null;
        this.f5113e = null;
        this.f5115g = 0;
    }

    /* renamed from: a */
    public final boolean m43151a(AbstractC1840s abstractC1840s) {
        C2060z c2060z = this.f5114f;
        return c2060z != null && c2060z.f8283a == abstractC1840s;
    }

    /* renamed from: a */
    public final boolean m43147a(C2060z c2060z) {
        C1993a.m41686b(c2060z != null);
        this.f5114f = c2060z;
        boolean z = false;
        while (c2060z.f8289g != null) {
            c2060z = c2060z.f8289g;
            if (c2060z == this.f5113e) {
                this.f5113e = this.f5112d;
                z = true;
            }
            c2060z.m41396e();
            this.f5115g--;
        }
        this.f5114f.m41403a((C2060z) null);
        return z;
    }

    /* renamed from: b */
    public final boolean m43140b() {
        C2060z c2060z = this.f5112d;
        if (c2060z == null) {
            return true;
        }
        int mo42088a = this.f5109a.mo42088a(c2060z.f8284b);
        while (true) {
            mo42088a = this.f5109a.m43093a(mo42088a, this.f5117i, this.f5118j, this.f5110b, this.f5111c);
            while (c2060z.f8289g != null && !c2060z.f8288f.f5107f) {
                c2060z = c2060z.f8289g;
            }
            C2060z c2060z2 = c2060z.f8289g;
            if (mo42088a == -1 || c2060z2 == null || this.f5109a.mo42088a(c2060z2.f8284b) != mo42088a) {
                break;
            }
            c2060z = c2060z2;
        }
        boolean m43147a = m43147a(c2060z);
        c2060z.f8288f = m43152a(c2060z.f8288f);
        return !m43147a;
    }
}
