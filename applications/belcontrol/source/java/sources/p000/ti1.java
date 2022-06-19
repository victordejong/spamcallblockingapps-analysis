package p000;

import android.annotation.TargetApi;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p000.hi1;
import p000.qi1;
@TargetApi(11)
/* renamed from: ti1 */
/* loaded from: classes3-dex2jar.jar:ti1.class */
public class ti1 extends si1 {

    /* renamed from: b */
    public final WeakReference<View> f8248b;

    /* renamed from: c */
    public long f8249c;

    /* renamed from: g */
    public Interpolator f8253g;

    /* renamed from: d */
    public boolean f8250d = false;

    /* renamed from: e */
    public long f8251e = 0;

    /* renamed from: f */
    public boolean f8252f = false;

    /* renamed from: h */
    public boolean f8254h = false;

    /* renamed from: i */
    public hi1.AbstractC1443a f8255i = null;

    /* renamed from: j */
    public C1668b f8256j = new C1668b(this, null);

    /* renamed from: k */
    public ArrayList<C1669c> f8257k = new ArrayList<>();

    /* renamed from: l */
    public Runnable f8258l = new RunnableC1667a();

    /* renamed from: m */
    public HashMap<hi1, C1670d> f8259m = new HashMap<>();

    /* renamed from: ti1$a */
    /* loaded from: classes3-dex2jar.jar:ti1$a.class */
    public class RunnableC1667a implements Runnable {
        public RunnableC1667a() {
            ti1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ti1.this.m477o();
        }
    }

    /* renamed from: ti1$b */
    /* loaded from: classes3-dex2jar.jar:ti1$b.class */
    public class C1668b implements hi1.AbstractC1443a, qi1.AbstractC1634g {
        public C1668b() {
            ti1.this = r4;
        }

        public /* synthetic */ C1668b(ti1 ti1Var, RunnableC1667a runnableC1667a) {
            this();
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: a */
        public void mo304a(hi1 hi1Var) {
            if (ti1.this.f8255i != null) {
                ti1.this.f8255i.mo304a(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: b */
        public void mo303b(hi1 hi1Var) {
            if (ti1.this.f8255i != null) {
                ti1.this.f8255i.mo303b(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: c */
        public void mo302c(hi1 hi1Var) {
            if (ti1.this.f8255i != null) {
                ti1.this.f8255i.mo302c(hi1Var);
            }
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: d */
        public void mo301d(hi1 hi1Var) {
            if (ti1.this.f8255i != null) {
                ti1.this.f8255i.mo301d(hi1Var);
            }
            ti1.this.f8259m.remove(hi1Var);
            if (ti1.this.f8259m.isEmpty()) {
                ti1.this.f8255i = null;
            }
        }

        @Override // p000.qi1.AbstractC1634g
        /* renamed from: e */
        public void mo300e(qi1 qi1Var) {
            View view;
            float m755w = qi1Var.m755w();
            C1670d c1670d = (C1670d) ti1.this.f8259m.get(qi1Var);
            if ((c1670d.f8265a & 511) != 0 && (view = (View) ti1.this.f8248b.get()) != null) {
                view.invalidate();
            }
            ArrayList<C1669c> arrayList = c1670d.f8266b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    C1669c c1669c = arrayList.get(i);
                    ti1.this.m478n(c1669c.f8262a, c1669c.f8263b + (c1669c.f8264c * m755w));
                }
            }
            View view2 = (View) ti1.this.f8248b.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }
    }

    /* renamed from: ti1$c */
    /* loaded from: classes3-dex2jar.jar:ti1$c.class */
    public static class C1669c {

        /* renamed from: a */
        public int f8262a;

        /* renamed from: b */
        public float f8263b;

        /* renamed from: c */
        public float f8264c;

        public C1669c(int i, float f, float f2) {
            this.f8262a = i;
            this.f8263b = f;
            this.f8264c = f2;
        }
    }

    /* renamed from: ti1$d */
    /* loaded from: classes3-dex2jar.jar:ti1$d.class */
    public static class C1670d {

        /* renamed from: a */
        public int f8265a;

        /* renamed from: b */
        public ArrayList<C1669c> f8266b;

        public C1670d(int i, ArrayList<C1669c> arrayList) {
            this.f8265a = i;
            this.f8266b = arrayList;
        }

        /* renamed from: a */
        public boolean m476a(int i) {
            ArrayList<C1669c> arrayList;
            if ((this.f8265a & i) == 0 || (arrayList = this.f8266b) == null) {
                return false;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.f8266b.get(i2).f8262a == i) {
                    this.f8266b.remove(i2);
                    this.f8265a = (i ^ (-1)) & this.f8265a;
                    return true;
                }
            }
            return false;
        }
    }

    public ti1(View view) {
        this.f8248b = new WeakReference<>(view);
    }

    @Override // p000.si1
    /* renamed from: b */
    public si1 mo318b(long j) {
        if (j >= 0) {
            this.f8250d = true;
            this.f8249c = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    @Override // p000.si1
    /* renamed from: c */
    public si1 mo317c(hi1.AbstractC1443a abstractC1443a) {
        this.f8255i = abstractC1443a;
        return this;
    }

    @Override // p000.si1
    /* renamed from: d */
    public si1 mo316d(float f) {
        m481k(1, f);
        return this;
    }

    /* renamed from: k */
    public final void m481k(int i, float f) {
        float m479m = m479m(i);
        m480l(i, m479m, f - m479m);
    }

    /* renamed from: l */
    public final void m480l(int i, float f, float f2) {
        hi1 hi1Var;
        if (this.f8259m.size() > 0) {
            Iterator<hi1> it = this.f8259m.keySet().iterator();
            while (true) {
                hi1Var = null;
                if (!it.hasNext()) {
                    break;
                }
                hi1Var = it.next();
                C1670d c1670d = this.f8259m.get(hi1Var);
                if (c1670d.m476a(i) && c1670d.f8265a == 0) {
                    break;
                }
            }
            if (hi1Var != null) {
                hi1Var.mo774c();
            }
        }
        this.f8257k.add(new C1669c(i, f, f2));
        View view = this.f8248b.get();
        if (view != null) {
            view.removeCallbacks(this.f8258l);
            view.post(this.f8258l);
        }
    }

    /* renamed from: m */
    public final float m479m(int i) {
        View view = this.f8248b.get();
        if (view != null) {
            if (i == 1) {
                return view.getTranslationX();
            }
            if (i == 2) {
                return view.getTranslationY();
            }
            if (i == 4) {
                return view.getScaleX();
            }
            if (i == 8) {
                return view.getScaleY();
            }
            if (i == 16) {
                return view.getRotation();
            }
            if (i == 32) {
                return view.getRotationX();
            }
            if (i == 64) {
                return view.getRotationY();
            }
            if (i == 128) {
                return view.getX();
            }
            if (i == 256) {
                return view.getY();
            }
            if (i == 512) {
                return view.getAlpha();
            }
            return 0.0f;
        }
        return 0.0f;
    }

    /* renamed from: n */
    public final void m478n(int i, float f) {
        View view = this.f8248b.get();
        if (view != null) {
            if (i == 1) {
                view.setTranslationX(f);
            } else if (i == 2) {
                view.setTranslationY(f);
            } else if (i == 4) {
                view.setScaleX(f);
            } else if (i == 8) {
                view.setScaleY(f);
            } else if (i == 16) {
                view.setRotation(f);
            } else if (i == 32) {
                view.setRotationX(f);
            } else if (i == 64) {
                view.setRotationY(f);
            } else if (i == 128) {
                view.setX(f);
            } else if (i == 256) {
                view.setY(f);
            } else if (i != 512) {
            } else {
                view.setAlpha(f);
            }
        }
    }

    /* renamed from: o */
    public final void m477o() {
        qi1 m784A = qi1.m784A(1.0f);
        ArrayList arrayList = (ArrayList) this.f8257k.clone();
        this.f8257k.clear();
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i |= ((C1669c) arrayList.get(i2)).f8262a;
        }
        this.f8259m.put(m784A, new C1670d(i, arrayList));
        m784A.m761q(this.f8256j);
        m784A.m1621b(this.f8256j);
        if (this.f8252f) {
            m784A.m779F(this.f8251e);
        }
        if (this.f8250d) {
            m784A.m782C(this.f8249c);
        }
        if (this.f8254h) {
            m784A.m780E(this.f8253g);
        }
        m784A.m777H();
    }
}
