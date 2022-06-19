package p000;

import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p000.hi1;
import p000.qi1;
/* renamed from: vi1 */
/* loaded from: classes3-dex2jar.jar:vi1.class */
public class vi1 extends si1 {

    /* renamed from: b */
    public final wi1 f8391b;

    /* renamed from: c */
    public final WeakReference<View> f8392c;

    /* renamed from: d */
    public long f8393d;

    /* renamed from: h */
    public Interpolator f8397h;

    /* renamed from: e */
    public boolean f8394e = false;

    /* renamed from: f */
    public long f8395f = 0;

    /* renamed from: g */
    public boolean f8396g = false;

    /* renamed from: i */
    public boolean f8398i = false;

    /* renamed from: j */
    public hi1.AbstractC1443a f8399j = null;

    /* renamed from: k */
    public C1698b f8400k = new C1698b(this, null);

    /* renamed from: l */
    public ArrayList<C1699c> f8401l = new ArrayList<>();

    /* renamed from: m */
    public Runnable f8402m = new RunnableC1697a();

    /* renamed from: n */
    public HashMap<hi1, C1700d> f8403n = new HashMap<>();

    /* renamed from: vi1$a */
    /* loaded from: classes3-dex2jar.jar:vi1$a.class */
    public class RunnableC1697a implements Runnable {
        public RunnableC1697a() {
            vi1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            vi1.this.m305o();
        }
    }

    /* renamed from: vi1$b */
    /* loaded from: classes3-dex2jar.jar:vi1$b.class */
    public class C1698b implements hi1.AbstractC1443a, qi1.AbstractC1634g {
        public C1698b() {
            vi1.this = r4;
        }

        public /* synthetic */ C1698b(vi1 vi1Var, RunnableC1697a runnableC1697a) {
            this();
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: a */
        public void mo304a(hi1 hi1Var) {
            if (vi1.this.f8399j != null) {
                vi1.this.f8399j.mo304a(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: b */
        public void mo303b(hi1 hi1Var) {
            if (vi1.this.f8399j != null) {
                vi1.this.f8399j.mo303b(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: c */
        public void mo302c(hi1 hi1Var) {
            if (vi1.this.f8399j != null) {
                vi1.this.f8399j.mo302c(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: d */
        public void mo301d(hi1 hi1Var) {
            if (vi1.this.f8399j != null) {
                vi1.this.f8399j.mo301d(hi1Var);
            }
            vi1.this.f8403n.remove(hi1Var);
            if (vi1.this.f8403n.isEmpty()) {
                vi1.this.f8399j = null;
            }
        }

        @Override // p000.qi1.AbstractC1634g
        /* renamed from: e */
        public void mo300e(qi1 qi1Var) {
            View view;
            float m755w = qi1Var.m755w();
            C1700d c1700d = (C1700d) vi1.this.f8403n.get(qi1Var);
            if ((c1700d.f8409a & 511) != 0 && (view = (View) vi1.this.f8392c.get()) != null) {
                view.invalidate();
            }
            ArrayList<C1699c> arrayList = c1700d.f8410b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    C1699c c1699c = arrayList.get(i);
                    vi1.this.m306n(c1699c.f8406a, c1699c.f8407b + (c1699c.f8408c * m755w));
                }
            }
            View view2 = (View) vi1.this.f8392c.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }
    }

    /* renamed from: vi1$c */
    /* loaded from: classes3-dex2jar.jar:vi1$c.class */
    public static class C1699c {

        /* renamed from: a */
        public int f8406a;

        /* renamed from: b */
        public float f8407b;

        /* renamed from: c */
        public float f8408c;

        public C1699c(int i, float f, float f2) {
            this.f8406a = i;
            this.f8407b = f;
            this.f8408c = f2;
        }
    }

    /* renamed from: vi1$d */
    /* loaded from: classes3-dex2jar.jar:vi1$d.class */
    public static class C1700d {

        /* renamed from: a */
        public int f8409a;

        /* renamed from: b */
        public ArrayList<C1699c> f8410b;

        public C1700d(int i, ArrayList<C1699c> arrayList) {
            this.f8409a = i;
            this.f8410b = arrayList;
        }

        /* renamed from: a */
        public boolean m299a(int i) {
            ArrayList<C1699c> arrayList;
            if ((this.f8409a & i) == 0 || (arrayList = this.f8410b) == null) {
                return false;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.f8410b.get(i2).f8406a == i) {
                    this.f8410b.remove(i2);
                    this.f8409a = (i ^ (-1)) & this.f8409a;
                    return true;
                }
            }
            return false;
        }
    }

    public vi1(View view) {
        this.f8392c = new WeakReference<>(view);
        this.f8391b = wi1.m239A(view);
    }

    @Override // p000.si1
    /* renamed from: b */
    public si1 mo318b(long j) {
        if (j >= 0) {
            this.f8394e = true;
            this.f8393d = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    @Override // p000.si1
    /* renamed from: c */
    public si1 mo317c(hi1.AbstractC1443a abstractC1443a) {
        this.f8399j = abstractC1443a;
        return this;
    }

    @Override // p000.si1
    /* renamed from: d */
    public si1 mo316d(float f) {
        m309k(1, f);
        return this;
    }

    /* renamed from: k */
    public final void m309k(int i, float f) {
        float m307m = m307m(i);
        m308l(i, m307m, f - m307m);
    }

    /* renamed from: l */
    public final void m308l(int i, float f, float f2) {
        hi1 hi1Var;
        if (this.f8403n.size() > 0) {
            Iterator<hi1> it = this.f8403n.keySet().iterator();
            while (true) {
                hi1Var = null;
                if (!it.hasNext()) {
                    break;
                }
                hi1Var = it.next();
                C1700d c1700d = this.f8403n.get(hi1Var);
                if (c1700d.m299a(i) && c1700d.f8409a == 0) {
                    break;
                }
            }
            if (hi1Var != null) {
                hi1Var.mo774c();
            }
        }
        this.f8401l.add(new C1699c(i, f, f2));
        View view = this.f8392c.get();
        if (view != null) {
            view.removeCallbacks(this.f8402m);
            view.post(this.f8402m);
        }
    }

    /* renamed from: m */
    public final float m307m(int i) {
        if (i != 1) {
            if (i == 2) {
                return this.f8391b.m230k();
            }
            if (i == 4) {
                return this.f8391b.m233h();
            }
            if (i == 8) {
                return this.f8391b.m232i();
            }
            if (i == 16) {
                return this.f8391b.m236d();
            }
            if (i == 32) {
                return this.f8391b.m235f();
            }
            if (i == 64) {
                return this.f8391b.m234g();
            }
            if (i == 128) {
                return this.f8391b.m229l();
            }
            if (i == 256) {
                return this.f8391b.m228m();
            }
            if (i == 512) {
                return this.f8391b.m237c();
            }
            return 0.0f;
        }
        return this.f8391b.m231j();
    }

    /* renamed from: n */
    public final void m306n(int i, float f) {
        if (i == 1) {
            this.f8391b.m219v(f);
        } else if (i == 2) {
            this.f8391b.m218w(f);
        } else if (i == 4) {
            this.f8391b.m221t(f);
        } else if (i == 8) {
            this.f8391b.m220u(f);
        } else if (i == 16) {
            this.f8391b.m224q(f);
        } else if (i == 32) {
            this.f8391b.m223r(f);
        } else if (i == 64) {
            this.f8391b.m222s(f);
        } else if (i == 128) {
            this.f8391b.m217x(f);
        } else if (i == 256) {
            this.f8391b.m216y(f);
        } else if (i != 512) {
        } else {
            this.f8391b.m225p(f);
        }
    }

    /* renamed from: o */
    public final void m305o() {
        qi1 m784A = qi1.m784A(1.0f);
        ArrayList arrayList = (ArrayList) this.f8401l.clone();
        this.f8401l.clear();
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i |= ((C1699c) arrayList.get(i2)).f8406a;
        }
        this.f8403n.put(m784A, new C1700d(i, arrayList));
        m784A.m761q(this.f8400k);
        m784A.m1621b(this.f8400k);
        if (this.f8396g) {
            m784A.m779F(this.f8395f);
        }
        if (this.f8394e) {
            m784A.m782C(this.f8393d);
        }
        if (this.f8398i) {
            m784A.m780E(this.f8397h);
        }
        m784A.m777H();
    }
}
