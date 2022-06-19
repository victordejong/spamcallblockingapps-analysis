package p193e.p1577m.p1578a.p1596c.p1597b1;

import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1597b1.AbstractC24193b;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24212k;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24209i;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24466e;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24534q;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s;
/* renamed from: e.m.a.c.b1.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/b1/a.class */
public class C24190a implements AbstractC24760q0.AbstractC24762b, AbstractC24466e, AbstractC24216m, AbstractC24834s, AbstractC24534q, AbstractC24695f.AbstractC24696a, AbstractC24833r, AbstractC24212k {

    /* renamed from: b */
    public final AbstractC24776f f66947b;

    /* renamed from: e */
    public AbstractC24760q0 f66950e;

    /* renamed from: a */
    public final CopyOnWriteArraySet<AbstractC24193b> f66946a = new CopyOnWriteArraySet<>();

    /* renamed from: d */
    public final C24192b f66949d = new C24192b();

    /* renamed from: c */
    public final AbstractC24861y0.C24864c f66948c = new AbstractC24861y0.C24864c();

    /* renamed from: e.m.a.c.b1.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/b1/a$a.class */
    public static final class C24191a {

        /* renamed from: a */
        public final AbstractC24531p.C24532a f66951a;

        /* renamed from: b */
        public final AbstractC24861y0 f66952b;

        /* renamed from: c */
        public final int f66953c;

        public C24191a(AbstractC24531p.C24532a c24532a, AbstractC24861y0 abstractC24861y0, int i) {
            this.f66951a = c24532a;
            this.f66952b = abstractC24861y0;
            this.f66953c = i;
        }
    }

    /* renamed from: e.m.a.c.b1.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/b1/a$b.class */
    public static final class C24192b {

        /* renamed from: d */
        public C24191a f66957d;

        /* renamed from: e */
        public C24191a f66958e;

        /* renamed from: f */
        public C24191a f66959f;

        /* renamed from: h */
        public boolean f66961h;

        /* renamed from: a */
        public final ArrayList<C24191a> f66954a = new ArrayList<>();

        /* renamed from: b */
        public final HashMap<AbstractC24531p.C24532a, C24191a> f66955b = new HashMap<>();

        /* renamed from: c */
        public final AbstractC24861y0.C24863b f66956c = new AbstractC24861y0.C24863b();

        /* renamed from: g */
        public AbstractC24861y0 f66960g = AbstractC24861y0.f69725a;

        /* renamed from: a */
        public final C24191a m5491a(C24191a c24191a, AbstractC24861y0 abstractC24861y0) {
            int mo4361b = abstractC24861y0.mo4361b(c24191a.f66951a.f68507a);
            if (mo4361b == -1) {
                return c24191a;
            }
            return new C24191a(c24191a.f66951a, abstractC24861y0, abstractC24861y0.m4367f(mo4361b, this.f66956c).f69727b);
        }
    }

    public C24190a(AbstractC24776f abstractC24776f) {
        this.f66947b = abstractC24776f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: A0 */
    public final void mo4655A0() {
        C24192b c24192b = this.f66949d;
        if (c24192b.f66961h) {
            c24192b.f66961h = false;
            c24192b.f66958e = c24192b.f66957d;
            m5495w();
            Iterator<AbstractC24193b> it = this.f66946a.iterator();
            while (it.hasNext()) {
                it.next().m5489A0();
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: G5 */
    public final void mo4654G5(boolean z, int i) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5469m();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: N7 */
    public final void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
        C24192b c24192b = this.f66949d;
        for (int i2 = 0; i2 < c24192b.f66954a.size(); i2++) {
            C24191a m5491a = c24192b.m5491a(c24192b.f66954a.get(i2), abstractC24861y0);
            c24192b.f66954a.set(i2, m5491a);
            c24192b.f66955b.put(m5491a.f66951a, m5491a);
        }
        C24191a c24191a = c24192b.f66959f;
        if (c24191a != null) {
            c24192b.f66959f = c24192b.m5491a(c24191a, abstractC24861y0);
        }
        c24192b.f66960g = abstractC24861y0;
        c24192b.f66958e = c24192b.f66957d;
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5485E();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Pi */
    public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
        C24811r0.m4487l(this, abstractC24861y0, obj, i);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: S8 */
    public final void mo4651S8(boolean z) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5488B();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Xl */
    public void mo4650Xl(boolean z) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5478d();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Zl */
    public void mo4649Zl(int i) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5457y();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: a */
    public final void mo4437a(int i, int i2, int i3, float f) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5482H();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: b */
    public final void mo5448b(int i) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5467o();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
    /* renamed from: c */
    public final void mo4439c() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: d */
    public final void mo5447d(String str, long j, long j2) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5465q();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: e */
    public final void mo4436e(int i, long j) {
        m5497u();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5471k();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: f */
    public final void mo4435f(String str, long j, long j2) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5465q();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: fs */
    public final void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5472j();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: g */
    public final void mo4434g(Surface surface) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5479c();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: h */
    public final void mo5446h(int i, long j, long j2) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5461u();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: h5 */
    public final void mo4647h5(int i) {
        C24192b c24192b = this.f66949d;
        c24192b.f66958e = c24192b.f66957d;
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5483G();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: hy */
    public final void mo4646hy(int i) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5490A();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
    /* renamed from: i */
    public void mo4438i(int i, int i2) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5462t();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24212k
    /* renamed from: j */
    public void mo5450j(float f) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5458x();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24212k
    /* renamed from: k */
    public void mo5449k(C24209i c24209i) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5464r();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: l */
    public final void mo5445l(C24264d c24264d) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5459w();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24466e
    /* renamed from: m */
    public final void mo5071m(Metadata metadata) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5456z();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: n */
    public final void mo4433n(Format format) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5480b();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: o */
    public final void mo4432o(C24264d c24264d) {
        m5497u();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5481a();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: p */
    public final void mo5444p(C24264d c24264d) {
        m5497u();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5481a();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
    /* renamed from: q */
    public final void mo4431q(C24264d c24264d) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5459w();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
    /* renamed from: r */
    public final void mo5443r(Format format) {
        m5494x();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5480b();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: rs */
    public final void mo4645rs(C24652o0 c24652o0) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5484F();
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @RequiresNonNull({"player"})
    /* renamed from: s */
    public AbstractC24193b.C24194a m5499s(AbstractC24861y0 abstractC24861y0, int i, AbstractC24531p.C24532a c24532a) {
        if (abstractC24861y0.m4362p()) {
            c24532a = null;
        }
        long mo4502a = this.f66947b.mo4502a();
        boolean z = abstractC24861y0 == this.f66950e.getCurrentTimeline() && i == this.f66950e.getCurrentWindowIndex();
        char c = 0;
        if (c24532a != null && c24532a.m4974a()) {
            if (z && this.f66950e.getCurrentAdGroupIndex() == c24532a.f68508b && this.f66950e.getCurrentAdIndexInAdGroup() == c24532a.f68509c) {
                c = this.f66950e.getCurrentPosition();
            }
        } else if (z) {
            c = this.f66950e.getContentPosition();
        } else if (!abstractC24861y0.m4362p()) {
            c = C24854v.m4382b(abstractC24861y0.mo4357n(i, this.f66948c, 0L).f69740i);
        }
        return new AbstractC24193b.C24194a(mo4502a, abstractC24861y0, i, c24532a, c, this.f66950e.getCurrentPosition(), this.f66950e.getTotalBufferedDuration());
    }

    /* renamed from: t */
    public final AbstractC24193b.C24194a m5498t(C24191a c24191a) {
        Objects.requireNonNull(this.f66950e);
        C24191a c24191a2 = c24191a;
        if (c24191a == null) {
            int currentWindowIndex = this.f66950e.getCurrentWindowIndex();
            C24192b c24192b = this.f66949d;
            int i = 0;
            C24191a c24191a3 = null;
            while (true) {
                C24191a c24191a4 = c24191a3;
                c24191a2 = c24191a4;
                if (i >= c24192b.f66954a.size()) {
                    break;
                }
                C24191a c24191a5 = c24192b.f66954a.get(i);
                int mo4361b = c24192b.f66960g.mo4361b(c24191a5.f66951a.f68507a);
                C24191a c24191a6 = c24191a4;
                if (mo4361b != -1) {
                    c24191a6 = c24191a4;
                    if (c24192b.f66960g.m4367f(mo4361b, c24192b.f66956c).f69727b != currentWindowIndex) {
                        continue;
                    } else if (c24191a4 != null) {
                        c24191a2 = null;
                        break;
                    } else {
                        c24191a6 = c24191a5;
                    }
                }
                i++;
                c24191a3 = c24191a6;
            }
            if (c24191a2 == null) {
                AbstractC24861y0 currentTimeline = this.f66950e.getCurrentTimeline();
                boolean z = false;
                if (currentWindowIndex < currentTimeline.mo4356o()) {
                    z = true;
                }
                if (!z) {
                    currentTimeline = AbstractC24861y0.f69725a;
                }
                return m5499s(currentTimeline, currentWindowIndex, null);
            }
        }
        return m5499s(c24191a2.f66952b, c24191a2.f66953c, c24191a2.f66951a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: tf */
    public final void mo4644tf(C24189b0 c24189b0) {
        m5497u();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5468n();
        }
    }

    /* renamed from: u */
    public final AbstractC24193b.C24194a m5497u() {
        return m5498t(this.f66949d.f66958e);
    }

    /* renamed from: v */
    public final AbstractC24193b.C24194a m5496v(int i, AbstractC24531p.C24532a c24532a) {
        AbstractC24861y0 abstractC24861y0 = AbstractC24861y0.f69725a;
        Objects.requireNonNull(this.f66950e);
        if (c24532a != null) {
            C24191a c24191a = this.f66949d.f66955b.get(c24532a);
            return c24191a != null ? m5498t(c24191a) : m5499s(abstractC24861y0, i, c24532a);
        }
        AbstractC24861y0 currentTimeline = this.f66950e.getCurrentTimeline();
        AbstractC24861y0 abstractC24861y02 = abstractC24861y0;
        if (i < currentTimeline.mo4356o()) {
            abstractC24861y02 = currentTimeline;
        }
        return m5499s(abstractC24861y02, i, null);
    }

    /* renamed from: w */
    public final AbstractC24193b.C24194a m5495w() {
        C24192b c24192b = this.f66949d;
        return m5498t((c24192b.f66954a.isEmpty() || c24192b.f66960g.m4362p() || c24192b.f66961h) ? null : c24192b.f66954a.get(0));
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: w1 */
    public final void mo4643w1(boolean z) {
        m5495w();
        Iterator<AbstractC24193b> it = this.f66946a.iterator();
        while (it.hasNext()) {
            it.next().m5476f();
        }
    }

    /* renamed from: x */
    public final AbstractC24193b.C24194a m5494x() {
        return m5498t(this.f66949d.f66959f);
    }

    /* renamed from: y */
    public final void m5493y(int i, AbstractC24531p.C24532a c24532a) {
        m5496v(i, c24532a);
        C24192b c24192b = this.f66949d;
        C24191a remove = c24192b.f66955b.remove(c24532a);
        boolean z = false;
        if (remove != null) {
            c24192b.f66954a.remove(remove);
            C24191a c24191a = c24192b.f66959f;
            if (c24191a != null && c24532a.equals(c24191a.f66951a)) {
                c24192b.f66959f = c24192b.f66954a.isEmpty() ? null : c24192b.f66954a.get(0);
            }
            if (!c24192b.f66954a.isEmpty()) {
                c24192b.f66957d = c24192b.f66954a.get(0);
            }
            z = true;
        }
        if (z) {
            Iterator<AbstractC24193b> it = this.f66946a.iterator();
            while (it.hasNext()) {
                it.next().m5460v();
            }
        }
    }

    /* renamed from: z */
    public final void m5492z() {
        Iterator it = new ArrayList(this.f66949d.f66954a).iterator();
        while (it.hasNext()) {
            C24191a c24191a = (C24191a) it.next();
            m5493y(c24191a.f66953c, c24191a.f66951a);
        }
    }
}
