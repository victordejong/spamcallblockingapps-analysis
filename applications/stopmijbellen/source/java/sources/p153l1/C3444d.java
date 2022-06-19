package p153l1;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0471r0;
import java.util.ArrayList;
import p153l1.AbstractC3451g;
@SuppressLint({"RestrictedApi"})
/* renamed from: l1.d */
/* loaded from: classes-dex2jar.jar:l1/d.class */
public class C3444d extends AbstractC0471r0 {

    /* renamed from: l1.d$a */
    /* loaded from: classes-dex2jar.jar:l1/d$a.class */
    public class C3445a extends AbstractC3451g.AbstractC3454c {
        public C3445a(C3444d c3444d, Rect rect) {
        }
    }

    /* renamed from: l1.d$b */
    /* loaded from: classes-dex2jar.jar:l1/d$b.class */
    public class C3446b implements AbstractC3451g.AbstractC3455d {

        /* renamed from: a */
        public final /* synthetic */ View f11509a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f11510b;

        public C3446b(C3444d c3444d, View view, ArrayList arrayList) {
            this.f11509a = view;
            this.f11510b = arrayList;
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: a */
        public void mo2236a(AbstractC3451g abstractC3451g) {
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: b */
        public void mo2235b(AbstractC3451g abstractC3451g) {
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: c */
        public void mo2234c(AbstractC3451g abstractC3451g) {
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            abstractC3451g.mo2251v(this);
            this.f11509a.setVisibility(8);
            int size = this.f11510b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f11510b.get(i)).setVisibility(0);
            }
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: e */
        public void mo2232e(AbstractC3451g abstractC3451g) {
        }
    }

    /* renamed from: l1.d$c */
    /* loaded from: classes-dex2jar.jar:l1/d$c.class */
    public class C3447c extends C3458j {

        /* renamed from: a */
        public final /* synthetic */ Object f11511a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f11512b;

        /* renamed from: c */
        public final /* synthetic */ Object f11513c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f11514d;

        /* renamed from: e */
        public final /* synthetic */ Object f11515e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f11516f;

        public C3447c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            C3444d.this = r4;
            this.f11511a = obj;
            this.f11512b = arrayList;
            this.f11513c = obj2;
            this.f11514d = arrayList2;
            this.f11515e = obj3;
            this.f11516f = arrayList3;
        }

        @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: b */
        public void mo2235b(AbstractC3451g abstractC3451g) {
            Object obj = this.f11511a;
            if (obj != null) {
                C3444d.this.mo2291p(obj, this.f11512b, null);
            }
            Object obj2 = this.f11513c;
            if (obj2 != null) {
                C3444d.this.mo2291p(obj2, this.f11514d, null);
            }
            Object obj3 = this.f11515e;
            if (obj3 != null) {
                C3444d.this.mo2291p(obj3, this.f11516f, null);
            }
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            abstractC3451g.mo2251v(this);
        }
    }

    /* renamed from: l1.d$d */
    /* loaded from: classes-dex2jar.jar:l1/d$d.class */
    public class C3448d extends AbstractC3451g.AbstractC3454c {
        public C3448d(C3444d c3444d, Rect rect) {
        }
    }

    /* renamed from: z */
    public static boolean m2283z(AbstractC3451g abstractC3451g) {
        return !AbstractC0471r0.m8066k(abstractC3451g.f11525e) || !AbstractC0471r0.m8066k(null) || !AbstractC0471r0.m8066k(null);
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: a */
    public void mo2299a(Object obj, View view) {
        if (obj != null) {
            ((AbstractC3451g) obj).mo2257b(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: b */
    public void mo2298b(Object obj, ArrayList<View> arrayList) {
        AbstractC3451g abstractC3451g = (AbstractC3451g) obj;
        if (abstractC3451g == null) {
            return;
        }
        if (abstractC3451g instanceof C3462l) {
            C3462l c3462l = (C3462l) abstractC3451g;
            int size = c3462l.f11558x.size();
            for (int i = 0; i < size; i++) {
                mo2298b(c3462l.m2260I(i), arrayList);
            }
        } else if (!m2283z(abstractC3451g) && AbstractC0471r0.m8066k(abstractC3451g.f11526f)) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                abstractC3451g.mo2257b(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: c */
    public void mo2297c(ViewGroup viewGroup, Object obj) {
        C3459k.m2269a(viewGroup, (AbstractC3451g) obj);
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: e */
    public boolean mo2296e(Object obj) {
        return obj instanceof AbstractC3451g;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: g */
    public Object mo2295g(Object obj) {
        return obj != null ? ((AbstractC3451g) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: l */
    public Object mo2294l(Object obj, Object obj2, Object obj3) {
        C3462l c3462l = (AbstractC3451g) obj;
        AbstractC3451g abstractC3451g = (AbstractC3451g) obj2;
        AbstractC3451g abstractC3451g2 = (AbstractC3451g) obj3;
        if (c3462l != null && abstractC3451g != null) {
            C3462l c3462l2 = new C3462l();
            c3462l2.m2261H(c3462l);
            c3462l2.m2261H(abstractC3451g);
            c3462l2.m2259J(1);
            c3462l = c3462l2;
        } else if (c3462l == null) {
            c3462l = abstractC3451g != null ? abstractC3451g : null;
        }
        if (abstractC3451g2 != null) {
            C3462l c3462l3 = new C3462l();
            if (c3462l != null) {
                c3462l3.m2261H(c3462l);
            }
            c3462l3.m2261H(abstractC3451g2);
            return c3462l3;
        }
        return c3462l;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: m */
    public Object mo2293m(Object obj, Object obj2, Object obj3) {
        C3462l c3462l = new C3462l();
        if (obj != null) {
            c3462l.m2261H((AbstractC3451g) obj);
        }
        if (obj2 != null) {
            c3462l.m2261H((AbstractC3451g) obj2);
        }
        if (obj3 != null) {
            c3462l.m2261H((AbstractC3451g) obj3);
        }
        return c3462l;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: o */
    public void mo2292o(Object obj, View view) {
        if (obj != null) {
            ((AbstractC3451g) obj).mo2250w(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: p */
    public void mo2291p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC3451g abstractC3451g = (AbstractC3451g) obj;
        if (abstractC3451g instanceof C3462l) {
            C3462l c3462l = (C3462l) abstractC3451g;
            int size = c3462l.f11558x.size();
            for (int i = 0; i < size; i++) {
                mo2291p(c3462l.m2260I(i), arrayList, arrayList2);
            }
        } else if (!m2283z(abstractC3451g)) {
            ArrayList<View> arrayList3 = abstractC3451g.f11526f;
            if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
                return;
            }
            int size2 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                abstractC3451g.mo2257b(arrayList2.get(i2));
            }
            int size3 = arrayList.size();
            while (true) {
                size3--;
                if (size3 < 0) {
                    return;
                }
                abstractC3451g.mo2250w(arrayList.get(size3));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: q */
    public void mo2290q(Object obj, View view, ArrayList<View> arrayList) {
        ((AbstractC3451g) obj).mo2258a(new C3446b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: r */
    public void mo2289r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((AbstractC3451g) obj).mo2258a(new C3447c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: s */
    public void mo2288s(Object obj, Rect rect) {
        if (obj != null) {
            ((AbstractC3451g) obj).mo2267A(new C3448d(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: t */
    public void mo2287t(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m8067j(view, rect);
            ((AbstractC3451g) obj).mo2267A(new C3445a(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: w */
    public void mo2286w(Object obj, View view, ArrayList<View> arrayList) {
        C3462l c3462l = (C3462l) obj;
        ArrayList<View> arrayList2 = c3462l.f11526f;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0471r0.m8071d(arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo2298b(c3462l, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: x */
    public void mo2285x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C3462l c3462l = (C3462l) obj;
        if (c3462l != null) {
            c3462l.f11526f.clear();
            c3462l.f11526f.addAll(arrayList2);
            mo2291p(c3462l, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: y */
    public Object mo2284y(Object obj) {
        if (obj == null) {
            return null;
        }
        C3462l c3462l = new C3462l();
        c3462l.m2261H((AbstractC3451g) obj);
        return c3462l;
    }
}
