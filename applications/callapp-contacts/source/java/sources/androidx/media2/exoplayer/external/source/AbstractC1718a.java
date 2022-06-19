package androidx.media2.exoplayer.external.source;

import android.util.Pair;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.source.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a.class */
abstract class AbstractC1718a extends AbstractC1383al {

    /* renamed from: b */
    private final int f6748b;

    /* renamed from: c */
    private final AbstractC1759an f6749c;

    /* renamed from: d */
    private final boolean f6750d;

    public AbstractC1718a(boolean z, AbstractC1759an abstractC1759an) {
        this.f6750d = z;
        this.f6749c = abstractC1759an;
        this.f6748b = abstractC1759an.mo42295a();
    }

    /* renamed from: a */
    private int m42382a(int i, boolean z) {
        if (z) {
            return this.f6749c.mo42294a(i);
        }
        if (i >= this.f6748b - 1) {
            return -1;
        }
        return i + 1;
    }

    /* renamed from: a */
    public static Object m42380a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    /* renamed from: b */
    public static Object m42379b(Object obj) {
        return ((Pair) obj).first;
    }

    /* renamed from: c */
    public static Object m42378c(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final int mo42111a(int i, int i2, boolean z) {
        int i3;
        int i4 = i2;
        if (this.f6750d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        int mo42252c = mo42252c(i);
        int mo42248f = mo42248f(mo42252c);
        int mo42111a = mo42251d(mo42252c).mo42111a(i - mo42248f, i4 == 2 ? 0 : i4, z);
        if (mo42111a != -1) {
            return mo42248f + mo42111a;
        }
        int m42382a = m42382a(mo42252c, z);
        while (true) {
            i3 = m42382a;
            if (i3 == -1 || !mo42251d(i3).m43094a()) {
                break;
            }
            m42382a = m42382a(i3, z);
        }
        if (i3 != -1) {
            return mo42248f(i3) + mo42251d(i3).mo42108b(z);
        }
        if (i4 != 2) {
            return -1;
        }
        return mo42108b(z);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final int mo42088a(Object obj) {
        int mo42088a;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo42250d = mo42250d(obj2);
        if (mo42250d != -1 && (mo42088a = mo42251d(mo42250d).mo42088a(obj3)) != -1) {
            return mo42249e(mo42250d) + mo42088a;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final int mo42110a(boolean z) {
        int i = this.f6748b;
        if (i == 0) {
            return -1;
        }
        if (this.f6750d) {
            z = false;
        }
        int mo42291b = z ? this.f6749c.mo42291b() : i - 1;
        while (mo42251d(mo42291b).m43094a()) {
            int mo42290b = z ? this.f6749c.mo42290b(mo42291b) : mo42291b > 0 ? mo42291b - 1 : -1;
            mo42291b = mo42290b;
            if (mo42290b == -1) {
                return -1;
            }
        }
        return mo42248f(mo42291b) + mo42251d(mo42291b).mo42110a(z);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
        int mo42253b = mo42253b(i);
        int mo42248f = mo42248f(mo42253b);
        mo42251d(mo42253b).mo42091a(i - mo42249e(mo42253b), c1385a, z);
        c1385a.f5206c += mo42248f;
        if (z) {
            c1385a.f5205b = Pair.create(mo42247g(mo42253b), C1993a.m41690a(c1385a.f5205b));
        }
        return c1385a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1385a mo42381a(Object obj, AbstractC1383al.C1385a c1385a) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo42250d = mo42250d(obj2);
        int mo42248f = mo42248f(mo42250d);
        mo42251d(mo42250d).mo42381a(obj3, c1385a);
        c1385a.f5206c += mo42248f;
        c1385a.f5205b = obj;
        return c1385a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1386b mo42095a(int i, AbstractC1383al.C1386b c1386b, long j) {
        int mo42252c = mo42252c(i);
        int mo42248f = mo42248f(mo42252c);
        int mo42249e = mo42249e(mo42252c);
        mo42251d(mo42252c).mo42095a(i - mo42248f, c1386b, j);
        c1386b.f5216g += mo42249e;
        c1386b.f5217h += mo42249e;
        return c1386b;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final Object mo42092a(int i) {
        int mo42253b = mo42253b(i);
        return Pair.create(mo42247g(mo42253b), mo42251d(mo42253b).mo42092a(i - mo42249e(mo42253b)));
    }

    /* renamed from: b */
    protected abstract int mo42253b(int i);

    @Override // androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: b */
    public final int mo42108b(boolean z) {
        if (this.f6748b == 0) {
            return -1;
        }
        int i = 0;
        if (this.f6750d) {
            z = false;
        }
        if (z) {
            i = this.f6749c.mo42288c();
        }
        while (mo42251d(i).m43094a()) {
            int m42382a = m42382a(i, z);
            i = m42382a;
            if (m42382a == -1) {
                return -1;
            }
        }
        return mo42248f(i) + mo42251d(i).mo42108b(z);
    }

    /* renamed from: c */
    protected abstract int mo42252c(int i);

    /* renamed from: d */
    protected abstract int mo42250d(Object obj);

    /* renamed from: d */
    protected abstract AbstractC1383al mo42251d(int i);

    /* renamed from: e */
    protected abstract int mo42249e(int i);

    /* renamed from: f */
    protected abstract int mo42248f(int i);

    /* renamed from: g */
    protected abstract Object mo42247g(int i);
}
