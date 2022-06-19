package p1727n3.p1874y.p1876b.p1877a.p1878m0;

import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.C27073c;
import p1727n3.p1874y.p1876b.p1877a.C27079e0;
import p1727n3.p1874y.p1876b.p1877a.C27080f;
import p1727n3.p1874y.p1876b.p1877a.p1878m0.AbstractC27104b;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27120f;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27113c;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27154b;
import p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27321d;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27386f;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27402d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27415a;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27454g;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o;
/* renamed from: n3.y.b.a.m0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/m0/a.class */
public class C27101a implements AbstractC27081f0.AbstractC27083b, AbstractC27321d, AbstractC27129n, AbstractC27462o, AbstractC27331c0, AbstractC27402d.AbstractC27403a, AbstractC27454g, AbstractC27120f {

    /* renamed from: b */
    public final AbstractC27415a f75757b;

    /* renamed from: e */
    public AbstractC27081f0 f75760e;

    /* renamed from: a */
    public final CopyOnWriteArraySet<AbstractC27104b> f75756a = new CopyOnWriteArraySet<>();

    /* renamed from: d */
    public final C27103b f75759d = new C27103b();

    /* renamed from: c */
    public final AbstractC27096l0.C27099c f75758c = new AbstractC27096l0.C27099c();

    /* renamed from: n3.y.b.a.m0.a$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/m0/a$a.class */
    public static final class C27102a {

        /* renamed from: a */
        public final AbstractC27371t.C27372a f75761a;

        /* renamed from: b */
        public final AbstractC27096l0 f75762b;

        /* renamed from: c */
        public final int f75763c;

        public C27102a(AbstractC27371t.C27372a c27372a, AbstractC27096l0 abstractC27096l0, int i) {
            this.f75761a = c27372a;
            this.f75762b = abstractC27096l0;
            this.f75763c = i;
        }
    }

    /* renamed from: n3.y.b.a.m0.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/m0/a$b.class */
    public static final class C27103b {

        /* renamed from: d */
        public C27102a f75767d;

        /* renamed from: e */
        public C27102a f75768e;

        /* renamed from: f */
        public C27102a f75769f;

        /* renamed from: h */
        public boolean f75771h;

        /* renamed from: a */
        public final ArrayList<C27102a> f75764a = new ArrayList<>();

        /* renamed from: b */
        public final HashMap<AbstractC27371t.C27372a, C27102a> f75765b = new HashMap<>();

        /* renamed from: c */
        public final AbstractC27096l0.C27098b f75766c = new AbstractC27096l0.C27098b();

        /* renamed from: g */
        public AbstractC27096l0 f75770g = AbstractC27096l0.f75737a;

        /* renamed from: a */
        public final C27102a m884a(C27102a c27102a, AbstractC27096l0 abstractC27096l0) {
            int mo541b = abstractC27096l0.mo541b(c27102a.f75761a.f77037a);
            if (mo541b == -1) {
                return c27102a;
            }
            return new C27102a(c27102a.f75761a, abstractC27096l0, abstractC27096l0.m912f(mo541b, this.f75766c).f75740c);
        }
    }

    public C27101a(AbstractC27415a abstractC27415a) {
        this.f75757b = abstractC27415a;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: A */
    public final void mo527A(int i, AbstractC27371t.C27372a c27372a, AbstractC27331c0.C27335c c27335c) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m873f(m894E, c27335c);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: A0 */
    public final void mo898A0() {
        C27103b c27103b = this.f75759d;
        if (c27103b.f75771h) {
            c27103b.f75771h = false;
            c27103b.f75768e = c27103b.f75767d;
            AbstractC27104b.C27105a m893F = m893F();
            Iterator<AbstractC27104b> it = this.f75756a.iterator();
            while (it.hasNext()) {
                it.next().m874e(m893F);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @RequiresNonNull({"player"})
    /* renamed from: B */
    public AbstractC27104b.C27105a m897B(AbstractC27096l0 abstractC27096l0, int i, AbstractC27371t.C27372a c27372a) {
        if (abstractC27096l0.m908p()) {
            c27372a = null;
        }
        long m378a = this.f75757b.m378a();
        boolean z = abstractC27096l0 == this.f75760e.getCurrentTimeline() && i == this.f75760e.getCurrentWindowIndex();
        char c = 0;
        if (c27372a != null && c27372a.m437b()) {
            if (z && this.f75760e.getCurrentAdGroupIndex() == c27372a.f77038b && this.f75760e.getCurrentAdIndexInAdGroup() == c27372a.f77039c) {
                c = this.f75760e.getCurrentPosition();
            }
        } else if (z) {
            c = this.f75760e.getContentPosition();
        } else if (!abstractC27096l0.m908p()) {
            c = C27073c.m947b(abstractC27096l0.mo535n(i, this.f75758c, 0L).f75752i);
        }
        return new AbstractC27104b.C27105a(m378a, abstractC27096l0, i, c27372a, c, this.f75760e.getCurrentPosition(), this.f75760e.getTotalBufferedDuration());
    }

    /* renamed from: C */
    public final AbstractC27104b.C27105a m896C(C27102a c27102a) {
        Objects.requireNonNull(this.f75760e);
        C27102a c27102a2 = c27102a;
        if (c27102a == null) {
            int currentWindowIndex = this.f75760e.getCurrentWindowIndex();
            C27103b c27103b = this.f75759d;
            int i = 0;
            C27102a c27102a3 = null;
            while (true) {
                C27102a c27102a4 = c27102a3;
                c27102a2 = c27102a4;
                if (i >= c27103b.f75764a.size()) {
                    break;
                }
                C27102a c27102a5 = c27103b.f75764a.get(i);
                int mo541b = c27103b.f75770g.mo541b(c27102a5.f75761a.f77037a);
                C27102a c27102a6 = c27102a4;
                if (mo541b != -1) {
                    c27102a6 = c27102a4;
                    if (c27103b.f75770g.m912f(mo541b, c27103b.f75766c).f75740c != currentWindowIndex) {
                        continue;
                    } else if (c27102a4 != null) {
                        c27102a2 = null;
                        break;
                    } else {
                        c27102a6 = c27102a5;
                    }
                }
                i++;
                c27102a3 = c27102a6;
            }
            if (c27102a2 == null) {
                AbstractC27096l0 currentTimeline = this.f75760e.getCurrentTimeline();
                boolean z = false;
                if (currentWindowIndex < currentTimeline.mo906o()) {
                    z = true;
                }
                if (!z) {
                    currentTimeline = AbstractC27096l0.f75737a;
                }
                return m897B(currentTimeline, currentWindowIndex, null);
            }
        }
        return m897B(c27102a2.f75762b, c27102a2.f75763c, c27102a2.f75761a);
    }

    /* renamed from: D */
    public final AbstractC27104b.C27105a m895D() {
        return m896C(this.f75759d.f75768e);
    }

    /* renamed from: E */
    public final AbstractC27104b.C27105a m894E(int i, AbstractC27371t.C27372a c27372a) {
        AbstractC27096l0 abstractC27096l0 = AbstractC27096l0.f75737a;
        Objects.requireNonNull(this.f75760e);
        if (c27372a != null) {
            C27102a c27102a = this.f75759d.f75765b.get(c27372a);
            return c27102a != null ? m896C(c27102a) : m897B(abstractC27096l0, i, c27372a);
        }
        AbstractC27096l0 currentTimeline = this.f75760e.getCurrentTimeline();
        AbstractC27096l0 abstractC27096l02 = abstractC27096l0;
        if (i < currentTimeline.mo906o()) {
            abstractC27096l02 = currentTimeline;
        }
        return m897B(abstractC27096l02, i, null);
    }

    /* renamed from: F */
    public final AbstractC27104b.C27105a m893F() {
        C27103b c27103b = this.f75759d;
        return m896C((c27103b.f75764a.isEmpty() || c27103b.f75770g.m908p() || c27103b.f75771h) ? null : c27103b.f75764a.get(0));
    }

    /* renamed from: G */
    public final AbstractC27104b.C27105a m892G() {
        return m896C(this.f75759d.f75769f);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: G5 */
    public final void mo891G5(boolean z, int i) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m881C(m893F, z, i);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: H5 */
    public final void mo890H5(AbstractC27096l0 abstractC27096l0, int i) {
        C27103b c27103b = this.f75759d;
        for (int i2 = 0; i2 < c27103b.f75764a.size(); i2++) {
            C27102a m884a = c27103b.m884a(c27103b.f75764a.get(i2), abstractC27096l0);
            c27103b.f75764a.set(i2, m884a);
            c27103b.f75765b.put(m884a.f75761a, m884a);
        }
        C27102a c27102a = c27103b.f75769f;
        if (c27102a != null) {
            c27103b.f75769f = c27103b.m884a(c27102a, abstractC27096l0);
        }
        c27103b.f75770g = abstractC27096l0;
        c27103b.f75768e = c27103b.f75767d;
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m856w(m893F, i);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: I5 */
    public final void mo889I5(TrackGroupArray trackGroupArray, C27386f c27386f) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m865n(m893F, trackGroupArray, c27386f);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: J5 */
    public final void mo888J5(C27079e0 c27079e0) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m857v(m893F, c27079e0);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: K5 */
    public final void mo887K5(C27080f c27080f) {
        AbstractC27104b.C27105a m895D = m895D();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m858u(m895D, c27080f);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: a */
    public final void mo251a(int i, int i2, int i3, float f) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m866m(m892G, i, i2, i3, f);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: b */
    public final void mo834b(int i) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m868k(m892G, i);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27454g
    /* renamed from: c */
    public final void mo253c() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: d */
    public final void mo833d(String str, long j, long j2) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m876c(m892G, 1, str, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: e */
    public final void mo250e(int i, long j) {
        AbstractC27104b.C27105a m895D = m895D();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m863p(m895D, i, j);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: f */
    public final void mo249f(String str, long j, long j2) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m876c(m892G, 2, str, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: g */
    public final void mo248g(Surface surface) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m880D(m892G, surface);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: h */
    public final void mo832h(int i, long j, long j2) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m860s(m892G, i, j, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: h5 */
    public final void mo886h5(int i) {
        C27103b c27103b = this.f75759d;
        c27103b.f75768e = c27103b.f75767d;
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m877b(m893F, i);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27454g
    /* renamed from: i */
    public void mo252i(int i, int i2) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m870i(m892G, i, i2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27120f
    /* renamed from: j */
    public void mo839j(float f) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m864o(m892G, f);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27402d.AbstractC27403a
    /* renamed from: k */
    public final void mo391k(int i, long j, long j2) {
        C27102a c27102a;
        C27103b c27103b = this.f75759d;
        if (c27103b.f75764a.isEmpty()) {
            c27102a = null;
        } else {
            ArrayList<C27102a> arrayList = c27103b.f75764a;
            c27102a = arrayList.get(arrayList.size() - 1);
        }
        AbstractC27104b.C27105a m896C = m896C(c27102a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m869j(m896C, i, j, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: l */
    public final void mo526l(int i, AbstractC27371t.C27372a c27372a) {
        C27103b c27103b = this.f75759d;
        C27102a c27102a = new C27102a(c27372a, c27103b.f75770g.mo541b(c27372a.f77037a) != -1 ? c27103b.f75770g : AbstractC27096l0.f75737a, i);
        c27103b.f75764a.add(c27102a);
        c27103b.f75765b.put(c27372a, c27102a);
        c27103b.f75767d = c27103b.f75764a.get(0);
        if (c27103b.f75764a.size() == 1 && !c27103b.f75770g.m908p()) {
            c27103b.f75768e = c27103b.f75767d;
        }
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m875d(m894E);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: m */
    public final void mo525m(int i, AbstractC27371t.C27372a c27372a, AbstractC27331c0.C27334b c27334b, AbstractC27331c0.C27335c c27335c) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m882B(m894E, c27334b, c27335c);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: n */
    public final void mo247n(Format format) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m862q(m892G, 2, format);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: o */
    public final void mo831o(C27154b c27154b) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m879E(m893F, 1, c27154b);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27120f
    /* renamed from: p */
    public void mo838p(C27113c c27113c) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m871h(m892G, c27113c);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: q */
    public final void mo830q(Format format) {
        AbstractC27104b.C27105a m892G = m892G();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m862q(m892G, 1, format);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: r */
    public final void mo524r(int i, AbstractC27371t.C27372a c27372a) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        C27103b c27103b = this.f75759d;
        C27102a remove = c27103b.f75765b.remove(c27372a);
        boolean z = false;
        if (remove != null) {
            c27103b.f75764a.remove(remove);
            C27102a c27102a = c27103b.f75769f;
            if (c27102a != null && c27372a.equals(c27102a.f75761a)) {
                c27103b.f75769f = c27103b.f75764a.isEmpty() ? null : c27103b.f75764a.get(0);
            }
            if (!c27103b.f75764a.isEmpty()) {
                c27103b.f75767d = c27103b.f75764a.get(0);
            }
            z = true;
        }
        if (z) {
            Iterator<AbstractC27104b> it = this.f75756a.iterator();
            while (it.hasNext()) {
                it.next().m853z(m894E);
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: s */
    public final void mo523s(int i, AbstractC27371t.C27372a c27372a, AbstractC27331c0.C27334b c27334b, AbstractC27331c0.C27335c c27335c) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m855x(m894E, c27334b, c27335c);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: t */
    public final void mo522t(int i, AbstractC27371t.C27372a c27372a, AbstractC27331c0.C27334b c27334b, AbstractC27331c0.C27335c c27335c) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m861r(m894E, c27334b, c27335c);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: u */
    public final void mo246u(C27154b c27154b) {
        AbstractC27104b.C27105a m895D = m895D();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m854y(m895D, 2, c27154b);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: v */
    public final void mo245v(C27154b c27154b) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m879E(m893F, 2, c27154b);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: w */
    public final void mo521w(int i, AbstractC27371t.C27372a c27372a, AbstractC27331c0.C27334b c27334b, AbstractC27331c0.C27335c c27335c, IOException iOException, boolean z) {
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m867l(m894E, c27334b, c27335c, iOException, z);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: w1 */
    public final void mo885w1(boolean z) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m883A(m893F, z);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27321d
    /* renamed from: x */
    public final void mo569x(Metadata metadata) {
        AbstractC27104b.C27105a m893F = m893F();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m859t(m893F, metadata);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: y */
    public final void mo829y(C27154b c27154b) {
        AbstractC27104b.C27105a m895D = m895D();
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m854y(m895D, 1, c27154b);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27331c0
    /* renamed from: z */
    public final void mo520z(int i, AbstractC27371t.C27372a c27372a) {
        C27103b c27103b = this.f75759d;
        c27103b.f75769f = c27103b.f75765b.get(c27372a);
        AbstractC27104b.C27105a m894E = m894E(i, c27372a);
        Iterator<AbstractC27104b> it = this.f75756a.iterator();
        while (it.hasNext()) {
            it.next().m872g(m894E);
        }
    }
}
