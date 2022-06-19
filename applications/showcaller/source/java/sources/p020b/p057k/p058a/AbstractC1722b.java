package p020b.p057k.p058a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import java.util.ArrayList;
import p020b.p041h.p050l.C1679w;
import p020b.p057k.p058a.AbstractC1722b;
import p020b.p057k.p058a.C1714a;
/* renamed from: b.k.a.b */
/* loaded from: classes-dex2jar.jar:b/k/a/b.class */
public abstract class AbstractC1722b<T extends AbstractC1722b<T>> implements C1714a.AbstractC1716b {

    /* renamed from: a */
    public static final AbstractC1740r f6437a = new C1728f("translationX");

    /* renamed from: b */
    public static final AbstractC1740r f6438b = new C1729g("translationY");

    /* renamed from: c */
    public static final AbstractC1740r f6439c = new C1730h("translationZ");

    /* renamed from: d */
    public static final AbstractC1740r f6440d = new C1731i("scaleX");

    /* renamed from: e */
    public static final AbstractC1740r f6441e = new C1732j("scaleY");

    /* renamed from: f */
    public static final AbstractC1740r f6442f = new C1733k("rotation");

    /* renamed from: g */
    public static final AbstractC1740r f6443g = new C1734l("rotationX");

    /* renamed from: h */
    public static final AbstractC1740r f6444h = new C1735m("rotationY");

    /* renamed from: i */
    public static final AbstractC1740r f6445i = new C1736n("x");

    /* renamed from: j */
    public static final AbstractC1740r f6446j = new C1723a("y");

    /* renamed from: k */
    public static final AbstractC1740r f6447k = new C1724b("z");

    /* renamed from: l */
    public static final AbstractC1740r f6448l = new C1725c("alpha");

    /* renamed from: m */
    public static final AbstractC1740r f6449m = new C1726d("scrollX");

    /* renamed from: n */
    public static final AbstractC1740r f6450n = new C1727e("scrollY");

    /* renamed from: r */
    final Object f6454r;

    /* renamed from: s */
    final AbstractC1741c f6455s;

    /* renamed from: x */
    private float f6460x;

    /* renamed from: o */
    float f6451o = 0.0f;

    /* renamed from: p */
    float f6452p = Float.MAX_VALUE;

    /* renamed from: q */
    boolean f6453q = false;

    /* renamed from: t */
    boolean f6456t = false;

    /* renamed from: u */
    float f6457u = Float.MAX_VALUE;

    /* renamed from: v */
    float f6458v = -Float.MAX_VALUE;

    /* renamed from: w */
    private long f6459w = 0;

    /* renamed from: y */
    private final ArrayList<AbstractC1738p> f6461y = new ArrayList<>();

    /* renamed from: z */
    private final ArrayList<AbstractC1739q> f6462z = new ArrayList<>();

    /* renamed from: b.k.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$a.class */
    static final class C1723a extends AbstractC1740r {
        C1723a(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getY();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setY(f);
        }
    }

    /* renamed from: b.k.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$b.class */
    static final class C1724b extends AbstractC1740r {
        C1724b(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return C1679w.m29320P(view);
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            C1679w.m29325M0(view, f);
        }
    }

    /* renamed from: b.k.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$c.class */
    static final class C1725c extends AbstractC1740r {
        C1725c(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getAlpha();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setAlpha(f);
        }
    }

    /* renamed from: b.k.a.b$d */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$d.class */
    static final class C1726d extends AbstractC1740r {
        C1726d(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getScrollX();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setScrollX((int) f);
        }
    }

    /* renamed from: b.k.a.b$e */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$e.class */
    static final class C1727e extends AbstractC1740r {
        C1727e(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getScrollY();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setScrollY((int) f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.k.a.b$f */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$f.class */
    public static final class C1728f extends AbstractC1740r {
        C1728f(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getTranslationX();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setTranslationX(f);
        }
    }

    /* renamed from: b.k.a.b$g */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$g.class */
    static final class C1729g extends AbstractC1740r {
        C1729g(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getTranslationY();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setTranslationY(f);
        }
    }

    /* renamed from: b.k.a.b$h */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$h.class */
    static final class C1730h extends AbstractC1740r {
        C1730h(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return C1679w.m29324N(view);
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            C1679w.m29329K0(view, f);
        }
    }

    /* renamed from: b.k.a.b$i */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$i.class */
    static final class C1731i extends AbstractC1740r {
        C1731i(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getScaleX();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setScaleX(f);
        }
    }

    /* renamed from: b.k.a.b$j */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$j.class */
    static final class C1732j extends AbstractC1740r {
        C1732j(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getScaleY();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setScaleY(f);
        }
    }

    /* renamed from: b.k.a.b$k */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$k.class */
    static final class C1733k extends AbstractC1740r {
        C1733k(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getRotation();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setRotation(f);
        }
    }

    /* renamed from: b.k.a.b$l */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$l.class */
    static final class C1734l extends AbstractC1740r {
        C1734l(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getRotationX();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setRotationX(f);
        }
    }

    /* renamed from: b.k.a.b$m */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$m.class */
    static final class C1735m extends AbstractC1740r {
        C1735m(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getRotationY();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setRotationY(f);
        }
    }

    /* renamed from: b.k.a.b$n */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$n.class */
    static final class C1736n extends AbstractC1740r {
        C1736n(String str) {
            super(str, null);
        }

        /* renamed from: c */
        public float mo4367a(View view) {
            return view.getX();
        }

        /* renamed from: d */
        public void mo4366b(View view, float f) {
            view.setX(f);
        }
    }

    /* renamed from: b.k.a.b$o */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$o.class */
    static class C1737o {

        /* renamed from: a */
        float f6463a;

        /* renamed from: b */
        float f6464b;
    }

    /* renamed from: b.k.a.b$p */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$p.class */
    public interface AbstractC1738p {
        /* renamed from: a */
        void m29044a(AbstractC1722b abstractC1722b, boolean z, float f, float f2);
    }

    /* renamed from: b.k.a.b$q */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$q.class */
    public interface AbstractC1739q {
        /* renamed from: a */
        void m29043a(AbstractC1722b abstractC1722b, float f, float f2);
    }

    /* renamed from: b.k.a.b$r */
    /* loaded from: classes-dex2jar.jar:b/k/a/b$r.class */
    public static abstract class AbstractC1740r extends AbstractC1741c<View> {
        private AbstractC1740r(String str) {
            super(str);
        }

        /* synthetic */ AbstractC1740r(String str, C1728f c1728f) {
            this(str);
        }
    }

    public <K> AbstractC1722b(K k, AbstractC1741c<K> abstractC1741c) {
        this.f6454r = k;
        this.f6455s = abstractC1741c;
        if (abstractC1741c == f6442f || abstractC1741c == f6443g || abstractC1741c == f6444h) {
            this.f6460x = 0.1f;
        } else if (abstractC1741c == f6448l) {
            this.f6460x = 0.00390625f;
        } else if (abstractC1741c == f6440d || abstractC1741c == f6441e) {
            this.f6460x = 0.00390625f;
        } else {
            this.f6460x = 1.0f;
        }
    }

    /* renamed from: c */
    private void m29080c(boolean z) {
        this.f6456t = false;
        C1714a.m29088d().m29085g(this);
        this.f6459w = 0L;
        this.f6453q = false;
        for (int i = 0; i < this.f6461y.size(); i++) {
            if (this.f6461y.get(i) != null) {
                this.f6461y.get(i).m29044a(this, z, this.f6452p, this.f6451o);
            }
        }
        m29076g(this.f6461y);
    }

    /* renamed from: d */
    private float m29079d() {
        return this.f6455s.mo4367a(this.f6454r);
    }

    /* renamed from: g */
    private static <T> void m29076g(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* renamed from: k */
    private void m29073k() {
        if (!this.f6456t) {
            this.f6456t = true;
            if (!this.f6453q) {
                this.f6452p = m29079d();
            }
            float f = this.f6452p;
            if (f > this.f6457u || f < this.f6458v) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            C1714a.m29088d().m29091a(this, 0L);
        }
    }

    @Override // p020b.p057k.p058a.C1714a.AbstractC1716b
    /* renamed from: a */
    public boolean mo29082a(long j) {
        long j2 = this.f6459w;
        if (j2 == 0) {
            this.f6459w = j;
            m29075h(this.f6452p);
            return false;
        }
        this.f6459w = j;
        boolean mo29041l = mo29041l(j - j2);
        float min = Math.min(this.f6452p, this.f6457u);
        this.f6452p = min;
        float max = Math.max(min, this.f6458v);
        this.f6452p = max;
        m29075h(max);
        if (mo29041l) {
            m29080c(false);
        }
        return mo29041l;
    }

    /* renamed from: b */
    public void m29081b() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (!this.f6456t) {
                return;
            }
            m29080c(true);
            return;
        }
        throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
    }

    /* renamed from: e */
    public float m29078e() {
        return this.f6460x * 0.75f;
    }

    /* renamed from: f */
    public boolean m29077f() {
        return this.f6456t;
    }

    /* renamed from: h */
    void m29075h(float f) {
        this.f6455s.mo4366b(this.f6454r, f);
        for (int i = 0; i < this.f6462z.size(); i++) {
            if (this.f6462z.get(i) != null) {
                this.f6462z.get(i).m29043a(this, this.f6452p, this.f6451o);
            }
        }
        m29076g(this.f6462z);
    }

    /* renamed from: i */
    public T m29074i(float f) {
        this.f6452p = f;
        this.f6453q = true;
        return this;
    }

    /* renamed from: j */
    public void mo29042j() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f6456t) {
                return;
            }
            m29073k();
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    /* renamed from: l */
    abstract boolean mo29041l(long j);
}
