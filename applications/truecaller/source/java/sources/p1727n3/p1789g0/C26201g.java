package p1727n3.p1789g0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1859r.p1860a.AbstractC26949o0;
/* renamed from: n3.g0.g */
/* loaded from: classes-dex2jar.jar:n3/g0/g.class */
public class C26201g extends AbstractC26949o0 {

    /* renamed from: n3.g0.g$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/g$a.class */
    public class C26202a extends AbstractC26214m.AbstractC26217c {

        /* renamed from: a */
        public final /* synthetic */ Rect f73058a;

        public C26202a(C26201g c26201g, Rect rect) {
            this.f73058a = rect;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26217c
        /* renamed from: a */
        public Rect mo2524a(AbstractC26214m abstractC26214m) {
            return this.f73058a;
        }
    }

    /* renamed from: n3.g0.g$b */
    /* loaded from: classes-dex2jar.jar:n3/g0/g$b.class */
    public class C26203b implements AbstractC26214m.AbstractC26218d {

        /* renamed from: a */
        public final /* synthetic */ View f73059a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f73060b;

        public C26203b(C26201g c26201g, View view, ArrayList arrayList) {
            this.f73059a = view;
            this.f73060b = arrayList;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: a */
        public void mo2494a(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: b */
        public void mo2493b(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: c */
        public void mo2492c(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            abstractC26214m.mo2497y(this);
            this.f73059a.setVisibility(8);
            int size = this.f73060b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f73060b.get(i)).setVisibility(0);
            }
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: e */
        public void mo2490e(AbstractC26214m abstractC26214m) {
        }
    }

    /* renamed from: n3.g0.g$d */
    /* loaded from: classes-dex2jar.jar:n3/g0/g$d.class */
    public class C26204d extends AbstractC26214m.AbstractC26217c {

        /* renamed from: a */
        public final /* synthetic */ Rect f73061a;

        public C26204d(C26201g c26201g, Rect rect) {
            this.f73061a = rect;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26217c
        /* renamed from: a */
        public Rect mo2524a(AbstractC26214m abstractC26214m) {
            Rect rect = this.f73061a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f73061a;
        }
    }

    /* renamed from: z */
    public static boolean m2551z(AbstractC26214m abstractC26214m) {
        return !AbstractC26949o0.m1087k(abstractC26214m.f73085e) || !AbstractC26949o0.m1087k(null) || !AbstractC26949o0.m1087k(null);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: a */
    public void mo1097a(Object obj, View view) {
        if (obj != null) {
            ((AbstractC26214m) obj).mo2504c(view);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: b */
    public void mo1096b(Object obj, ArrayList<View> arrayList) {
        AbstractC26214m abstractC26214m = (AbstractC26214m) obj;
        if (abstractC26214m == null) {
            return;
        }
        if (abstractC26214m instanceof C26225s) {
            C26225s c26225s = (C26225s) abstractC26214m;
            int size = c26225s.f73118y.size();
            for (int i = 0; i < size; i++) {
                mo1096b(c26225s.m2509N(i), arrayList);
            }
        } else if (!m2551z(abstractC26214m) && AbstractC26949o0.m1087k(abstractC26214m.f73086f)) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                abstractC26214m.mo2504c(arrayList.get(i2));
            }
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: c */
    public void mo1095c(ViewGroup viewGroup, Object obj) {
        C26222q.m2523a(viewGroup, (AbstractC26214m) obj);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: e */
    public boolean mo1093e(Object obj) {
        return obj instanceof AbstractC26214m;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: g */
    public Object mo1091g(Object obj) {
        return obj != null ? ((AbstractC26214m) obj).clone() : null;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: l */
    public Object mo1086l(Object obj, Object obj2, Object obj3) {
        C26225s c26225s = (AbstractC26214m) obj;
        AbstractC26214m abstractC26214m = (AbstractC26214m) obj2;
        AbstractC26214m abstractC26214m2 = (AbstractC26214m) obj3;
        if (c26225s != null && abstractC26214m != null) {
            C26225s c26225s2 = new C26225s();
            c26225s2.m2510M(c26225s);
            c26225s2.m2510M(abstractC26214m);
            c26225s2.m2507P(1);
            c26225s = c26225s2;
        } else if (c26225s == null) {
            c26225s = abstractC26214m != null ? abstractC26214m : null;
        }
        if (abstractC26214m2 != null) {
            C26225s c26225s3 = new C26225s();
            if (c26225s != null) {
                c26225s3.m2510M(c26225s);
            }
            c26225s3.m2510M(abstractC26214m2);
            return c26225s3;
        }
        return c26225s;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: m */
    public Object mo1085m(Object obj, Object obj2, Object obj3) {
        C26225s c26225s = new C26225s();
        if (obj != null) {
            c26225s.m2510M((AbstractC26214m) obj);
        }
        if (obj2 != null) {
            c26225s.m2510M((AbstractC26214m) obj2);
        }
        if (obj3 != null) {
            c26225s.m2510M((AbstractC26214m) obj3);
        }
        return c26225s;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: o */
    public void mo1083o(Object obj, View view) {
        if (obj != null) {
            ((AbstractC26214m) obj).mo2496z(view);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: p */
    public void mo1082p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC26214m abstractC26214m = (AbstractC26214m) obj;
        if (abstractC26214m instanceof C26225s) {
            C26225s c26225s = (C26225s) abstractC26214m;
            int size = c26225s.f73118y.size();
            for (int i = 0; i < size; i++) {
                mo1082p(c26225s.m2509N(i), arrayList, arrayList2);
            }
        } else if (!m2551z(abstractC26214m)) {
            ArrayList<View> arrayList3 = abstractC26214m.f73086f;
            if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
                return;
            }
            int size2 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                abstractC26214m.mo2504c(arrayList2.get(i2));
            }
            int size3 = arrayList.size();
            while (true) {
                size3--;
                if (size3 < 0) {
                    return;
                }
                abstractC26214m.mo2496z(arrayList.get(size3));
            }
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: q */
    public void mo1081q(Object obj, View view, ArrayList<View> arrayList) {
        ((AbstractC26214m) obj).mo2506a(new C26203b(this, view, arrayList));
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: r */
    public void mo1080r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((AbstractC26214m) obj).mo2506a(new c(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: s */
    public void mo1079s(Object obj, Rect rect) {
        if (obj != null) {
            ((AbstractC26214m) obj).mo2517D(new C26204d(this, rect));
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: t */
    public void mo1078t(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m1088j(view, rect);
            ((AbstractC26214m) obj).mo2517D(new C26202a(this, rect));
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: w */
    public void mo1075w(Object obj, View view, ArrayList<View> arrayList) {
        C26225s c26225s = (C26225s) obj;
        ArrayList<View> arrayList2 = c26225s.f73086f;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC26949o0.m1094d(arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo1096b(c26225s, arrayList);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: x */
    public void mo1074x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C26225s c26225s = (C26225s) obj;
        if (c26225s != null) {
            c26225s.f73086f.clear();
            c26225s.f73086f.addAll(arrayList2);
            mo1082p(c26225s, arrayList, arrayList2);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: y */
    public Object mo1073y(Object obj) {
        if (obj == null) {
            return null;
        }
        C26225s c26225s = new C26225s();
        c26225s.m2510M((AbstractC26214m) obj);
        return c26225s;
    }
}
