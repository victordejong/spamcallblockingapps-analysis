package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.util.Pair;
import java.util.Objects;
import n3.y.b.a.t0.j;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.t0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/a.class */
public abstract class AbstractC27326a extends AbstractC27096l0 {

    /* renamed from: b */
    public final int f76863b;

    /* renamed from: c */
    public final AbstractC27347l0 f76864c;

    /* renamed from: d */
    public final boolean f76865d;

    public AbstractC27326a(boolean z, AbstractC27347l0 abstractC27347l0) {
        this.f76865d = z;
        this.f76864c = abstractC27347l0;
        this.f76863b = abstractC27347l0.m478a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: a */
    public int mo542a(boolean z) {
        int m534q;
        if (this.f76863b == 0) {
            return -1;
        }
        int i = 0;
        if (this.f76865d) {
            z = false;
        }
        if (z) {
            i = this.f76864c.m473f();
        }
        do {
            j.b bVar = (j.b) this;
            if (!bVar.i[i].m908p()) {
                return bVar.i[i].mo542a(z) + bVar.h[i];
            }
            m534q = m534q(i, z);
            i = m534q;
        } while (m534q != -1);
        return -1;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: b */
    public final int mo541b(Object obj) {
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        j.b bVar = (j.b) this;
        Integer num = (Integer) bVar.k.get(obj2);
        int intValue = num == null ? -1 : num.intValue();
        if (intValue == -1) {
            return -1;
        }
        int mo541b = bVar.i[intValue].mo541b(obj3);
        return mo541b == -1 ? -1 : bVar.g[intValue] + mo541b;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: c */
    public int mo540c(boolean z) {
        int m477b;
        int i = this.f76863b;
        if (i == 0) {
            return -1;
        }
        if (this.f76865d) {
            z = false;
        }
        int m475d = z ? this.f76864c.m475d() : i - 1;
        do {
            j.b bVar = (j.b) this;
            if (!bVar.i[m475d].m908p()) {
                return bVar.i[m475d].mo540c(z) + bVar.h[m475d];
            }
            m477b = z ? this.f76864c.m477b(m475d) : m475d > 0 ? m475d - 1 : -1;
            m475d = m477b;
        } while (m477b != -1);
        return -1;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: e */
    public int mo539e(int i, int i2, boolean z) {
        int i3;
        int i4 = i2;
        if (this.f76865d) {
            i4 = i2;
            if (i2 == 1) {
                i4 = 2;
            }
            z = false;
        }
        j.b bVar = (j.b) this;
        int m284c = C27445x.m284c(bVar.h, i + 1, false, false);
        int i5 = bVar.h[m284c];
        int mo539e = bVar.i[m284c].mo539e(i - i5, i4 == 2 ? 0 : i4, z);
        if (mo539e != -1) {
            return i5 + mo539e;
        }
        int m534q = m534q(m284c, z);
        while (true) {
            i3 = m534q;
            if (i3 == -1 || !bVar.i[i3].m908p()) {
                break;
            }
            m534q = m534q(i3, z);
        }
        if (i3 != -1) {
            return bVar.i[i3].mo542a(z) + bVar.h[i3];
        } else if (i4 != 2) {
            return -1;
        } else {
            return mo542a(z);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: g */
    public final AbstractC27096l0.C27098b mo538g(int i, AbstractC27096l0.C27098b c27098b, boolean z) {
        j.b bVar = (j.b) this;
        int m284c = C27445x.m284c(bVar.g, i + 1, false, false);
        int i2 = bVar.h[m284c];
        bVar.i[m284c].mo538g(i - bVar.g[m284c], c27098b, z);
        c27098b.f75740c += i2;
        if (z) {
            Object obj = bVar.j[m284c];
            Object obj2 = c27098b.f75739b;
            Objects.requireNonNull(obj2);
            c27098b.f75739b = Pair.create(obj, obj2);
        }
        return c27098b;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: h */
    public final AbstractC27096l0.C27098b mo537h(Object obj, AbstractC27096l0.C27098b c27098b) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        j.b bVar = (j.b) this;
        Integer num = (Integer) bVar.k.get(obj2);
        int intValue = num == null ? -1 : num.intValue();
        int i = bVar.h[intValue];
        bVar.i[intValue].mo537h(obj3, c27098b);
        c27098b.f75740c += i;
        c27098b.f75739b = obj;
        return c27098b;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: l */
    public final Object mo536l(int i) {
        j.b bVar = (j.b) this;
        int m284c = C27445x.m284c(bVar.g, i + 1, false, false);
        return Pair.create(bVar.j[m284c], bVar.i[m284c].mo536l(i - bVar.g[m284c]));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
    /* renamed from: n */
    public final AbstractC27096l0.C27099c mo535n(int i, AbstractC27096l0.C27099c c27099c, long j) {
        j.b bVar = (j.b) this;
        int m284c = C27445x.m284c(bVar.h, i + 1, false, false);
        int i2 = bVar.h[m284c];
        int i3 = bVar.g[m284c];
        bVar.i[m284c].mo535n(i - i2, c27099c, j);
        c27099c.f75750g += i3;
        c27099c.f75751h += i3;
        return c27099c;
    }

    /* renamed from: q */
    public final int m534q(int i, boolean z) {
        return z ? this.f76864c.m476c(i) : i < this.f76863b - 1 ? i + 1 : -1;
    }
}
