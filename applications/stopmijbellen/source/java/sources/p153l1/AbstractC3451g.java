package p153l1;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.support.p012v4.media.AbstractC0081a;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p029c4.C0821e;
import p163m0.C3589v;
import p163m0.C3611y;
import p226s.C4251a;
import p226s.C4255d;
import p260v1.C4586g;
import p291y.C4951d;
/* renamed from: l1.g */
/* loaded from: classes-dex2jar.jar:l1/g.class */
public abstract class AbstractC3451g implements Cloneable {

    /* renamed from: u */
    public static final int[] f11518u = {2, 1, 3, 4};

    /* renamed from: v */
    public static final AbstractC0081a f11519v = new C3452a();

    /* renamed from: w */
    public static ThreadLocal<C4251a<Animator, C3453b>> f11520w = new ThreadLocal<>();

    /* renamed from: k */
    public ArrayList<C3466n> f11531k;

    /* renamed from: l */
    public ArrayList<C3466n> f11532l;

    /* renamed from: s */
    public AbstractC3454c f11539s;

    /* renamed from: a */
    public String f11521a = getClass().getName();

    /* renamed from: b */
    public long f11522b = -1;

    /* renamed from: c */
    public long f11523c = -1;

    /* renamed from: d */
    public TimeInterpolator f11524d = null;

    /* renamed from: e */
    public ArrayList<Integer> f11525e = new ArrayList<>();

    /* renamed from: f */
    public ArrayList<View> f11526f = new ArrayList<>();

    /* renamed from: g */
    public C4586g f11527g = new C4586g();

    /* renamed from: h */
    public C4586g f11528h = new C4586g();

    /* renamed from: i */
    public C3462l f11529i = null;

    /* renamed from: j */
    public int[] f11530j = f11518u;

    /* renamed from: m */
    public ArrayList<Animator> f11533m = new ArrayList<>();

    /* renamed from: n */
    public int f11534n = 0;

    /* renamed from: o */
    public boolean f11535o = false;

    /* renamed from: p */
    public boolean f11536p = false;

    /* renamed from: q */
    public ArrayList<AbstractC3455d> f11537q = null;

    /* renamed from: r */
    public ArrayList<Animator> f11538r = new ArrayList<>();

    /* renamed from: t */
    public AbstractC0081a f11540t = f11519v;

    /* renamed from: l1.g$a */
    /* loaded from: classes-dex2jar.jar:l1/g$a.class */
    public static final class C3452a extends AbstractC0081a {
        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: t */
        public Path mo2270t(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: l1.g$b */
    /* loaded from: classes-dex2jar.jar:l1/g$b.class */
    public static class C3453b {

        /* renamed from: a */
        public View f11541a;

        /* renamed from: b */
        public String f11542b;

        /* renamed from: c */
        public C3466n f11543c;

        /* renamed from: d */
        public AbstractC3482z f11544d;

        /* renamed from: e */
        public AbstractC3451g f11545e;

        public C3453b(View view, String str, AbstractC3451g abstractC3451g, AbstractC3482z abstractC3482z, C3466n c3466n) {
            this.f11541a = view;
            this.f11542b = str;
            this.f11543c = c3466n;
            this.f11544d = abstractC3482z;
            this.f11545e = abstractC3451g;
        }
    }

    /* renamed from: l1.g$c */
    /* loaded from: classes-dex2jar.jar:l1/g$c.class */
    public static abstract class AbstractC3454c {
    }

    /* renamed from: l1.g$d */
    /* loaded from: classes-dex2jar.jar:l1/g$d.class */
    public interface AbstractC3455d {
        /* renamed from: a */
        void mo2236a(AbstractC3451g abstractC3451g);

        /* renamed from: b */
        void mo2235b(AbstractC3451g abstractC3451g);

        /* renamed from: c */
        void mo2234c(AbstractC3451g abstractC3451g);

        /* renamed from: d */
        void mo2233d(AbstractC3451g abstractC3451g);

        /* renamed from: e */
        void mo2232e(AbstractC3451g abstractC3451g);
    }

    /* renamed from: c */
    public static void m2280c(C4586g c4586g, View view, C3466n c3466n) {
        ((C4251a) c4586g.f14172a).put(view, c3466n);
        int id = view.getId();
        if (id >= 0) {
            if (((SparseArray) c4586g.f14173b).indexOfKey(id) >= 0) {
                ((SparseArray) c4586g.f14173b).put(id, null);
            } else {
                ((SparseArray) c4586g.f14173b).put(id, view);
            }
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        String m2040k = C3589v.C3598i.m2040k(view);
        if (m2040k != null) {
            if (((C4251a) c4586g.f14175d).m1198e(m2040k) >= 0) {
                ((C4251a) c4586g.f14175d).put(m2040k, null);
            } else {
                ((C4251a) c4586g.f14175d).put(m2040k, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            C4255d c4255d = (C4255d) c4586g.f14174c;
            if (c4255d.f13340a) {
                c4255d.m1221d();
            }
            if (C0821e.m7342c(c4255d.f13341b, c4255d.f13343d, itemIdAtPosition) < 0) {
                C3589v.C3593d.m2076r(view, true);
                ((C4255d) c4586g.f14174c).m1218g(itemIdAtPosition, view);
                return;
            }
            View view2 = (View) ((C4255d) c4586g.f14174c).m1220e(itemIdAtPosition);
            if (view2 == null) {
                return;
            }
            C3589v.C3593d.m2076r(view2, false);
            ((C4255d) c4586g.f14174c).m1218g(itemIdAtPosition, null);
        }
    }

    /* renamed from: o */
    public static C4251a<Animator, C3453b> m2274o() {
        C4251a<Animator, C3453b> c4251a = f11520w.get();
        C4251a<Animator, C3453b> c4251a2 = c4251a;
        if (c4251a == null) {
            c4251a2 = new C4251a<>();
            f11520w.set(c4251a2);
        }
        return c4251a2;
    }

    /* renamed from: t */
    public static boolean m2271t(C3466n c3466n, C3466n c3466n2, String str) {
        boolean z;
        Object obj = c3466n.f11566a.get(str);
        Object obj2 = c3466n2.f11566a.get(str);
        if (obj == null && obj2 == null) {
            z = false;
        } else {
            z = true;
            if (obj != null) {
                z = obj2 == null ? true : true ^ obj.equals(obj2);
            }
        }
        return z;
    }

    /* renamed from: A */
    public void mo2267A(AbstractC3454c abstractC3454c) {
        this.f11539s = abstractC3454c;
    }

    /* renamed from: B */
    public AbstractC3451g mo2266B(TimeInterpolator timeInterpolator) {
        this.f11524d = timeInterpolator;
        return this;
    }

    /* renamed from: C */
    public void mo2265C(AbstractC0081a abstractC0081a) {
        if (abstractC0081a == null) {
            this.f11540t = f11519v;
        } else {
            this.f11540t = abstractC0081a;
        }
    }

    /* renamed from: D */
    public void mo2264D(AbstractC0081a abstractC0081a) {
    }

    /* renamed from: E */
    public AbstractC3451g mo2263E(long j) {
        this.f11522b = j;
        return this;
    }

    /* renamed from: F */
    public void m2281F() {
        if (this.f11534n == 0) {
            ArrayList<AbstractC3455d> arrayList = this.f11537q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f11537q.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC3455d) arrayList2.get(i)).mo2235b(this);
                }
            }
            this.f11536p = false;
        }
        this.f11534n++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00c2, code lost:
        if (r5.f11526f.size() > 0) goto L15;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo2262G(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p153l1.AbstractC3451g.mo2262G(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public AbstractC3451g mo2258a(AbstractC3455d abstractC3455d) {
        if (this.f11537q == null) {
            this.f11537q = new ArrayList<>();
        }
        this.f11537q.add(abstractC3455d);
        return this;
    }

    /* renamed from: b */
    public AbstractC3451g mo2257b(View view) {
        this.f11526f.add(view);
        return this;
    }

    /* renamed from: d */
    public abstract void mo2240d(C3466n c3466n);

    /* renamed from: e */
    public final void m2279e(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C3466n c3466n = new C3466n(view);
            if (z) {
                mo2255g(c3466n);
            } else {
                mo2240d(c3466n);
            }
            c3466n.f11568c.add(this);
            mo2256f(c3466n);
            if (z) {
                m2280c(this.f11527g, view, c3466n);
            } else {
                m2280c(this.f11528h, view, c3466n);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            m2279e(viewGroup.getChildAt(i), z);
        }
    }

    /* renamed from: f */
    public void mo2256f(C3466n c3466n) {
    }

    /* renamed from: g */
    public abstract void mo2255g(C3466n c3466n);

    /* renamed from: h */
    public void m2278h(ViewGroup viewGroup, boolean z) {
        int i;
        m2277i(z);
        if (this.f11525e.size() <= 0 && this.f11526f.size() <= 0) {
            m2279e(viewGroup, z);
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.f11525e.size()) {
                View findViewById = viewGroup.findViewById(this.f11525e.get(i2).intValue());
                if (findViewById != null) {
                    C3466n c3466n = new C3466n(findViewById);
                    if (z) {
                        mo2255g(c3466n);
                    } else {
                        mo2240d(c3466n);
                    }
                    c3466n.f11568c.add(this);
                    mo2256f(c3466n);
                    if (z) {
                        m2280c(this.f11527g, findViewById, c3466n);
                    } else {
                        m2280c(this.f11528h, findViewById, c3466n);
                    }
                }
                i2++;
            }
        }
        for (i = 0; i < this.f11526f.size(); i++) {
            View view = this.f11526f.get(i);
            C3466n c3466n2 = new C3466n(view);
            if (z) {
                mo2255g(c3466n2);
            } else {
                mo2240d(c3466n2);
            }
            c3466n2.f11568c.add(this);
            mo2256f(c3466n2);
            if (z) {
                m2280c(this.f11527g, view, c3466n2);
            } else {
                m2280c(this.f11528h, view, c3466n2);
            }
        }
    }

    /* renamed from: i */
    public void m2277i(boolean z) {
        if (z) {
            ((C4251a) this.f11527g.f14172a).clear();
            ((SparseArray) this.f11527g.f14173b).clear();
            ((C4255d) this.f11527g.f14174c).m1223b();
            return;
        }
        ((C4251a) this.f11528h.f14172a).clear();
        ((SparseArray) this.f11528h.f14173b).clear();
        ((C4255d) this.f11528h.f14174c).m1223b();
    }

    /* renamed from: j */
    public AbstractC3451g clone() {
        try {
            AbstractC3451g abstractC3451g = (AbstractC3451g) super.clone();
            abstractC3451g.f11538r = new ArrayList<>();
            abstractC3451g.f11527g = new C4586g();
            abstractC3451g.f11528h = new C4586g();
            abstractC3451g.f11531k = null;
            abstractC3451g.f11532l = null;
            return abstractC3451g;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: k */
    public Animator mo2239k(ViewGroup viewGroup, C3466n c3466n, C3466n c3466n2) {
        return null;
    }

    /* renamed from: l */
    public void mo2253l(ViewGroup viewGroup, C4586g c4586g, C4586g c4586g2, ArrayList<C3466n> arrayList, ArrayList<C3466n> arrayList2) {
        int i;
        C3466n c3466n;
        View view;
        C4251a<Animator, C3453b> m2274o = m2274o();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C3466n c3466n2 = arrayList.get(i2);
            C3466n c3466n3 = arrayList2.get(i2);
            C3466n c3466n4 = c3466n2;
            if (c3466n2 != null) {
                c3466n4 = c3466n2;
                if (!c3466n2.f11568c.contains(this)) {
                    c3466n4 = null;
                }
            }
            C3466n c3466n5 = c3466n3;
            if (c3466n3 != null) {
                c3466n5 = c3466n3;
                if (!c3466n3.f11568c.contains(this)) {
                    c3466n5 = null;
                }
            }
            if (c3466n4 != null || c3466n5 != null) {
                if (c3466n4 == null || c3466n5 == null || mo2237r(c3466n4, c3466n5)) {
                    Animator mo2239k = mo2239k(viewGroup, c3466n4, c3466n5);
                    if (mo2239k != null) {
                        if (c3466n5 != null) {
                            View view2 = c3466n5.f11567b;
                            String[] mo2238p = mo2238p();
                            if (mo2238p != null && mo2238p.length > 0) {
                                C3466n c3466n6 = new C3466n(view2);
                                C3466n c3466n7 = (C3466n) ((C4251a) c4586g2.f14172a).get(view2);
                                Animator animator = mo2239k;
                                i = size;
                                if (c3466n7 != null) {
                                    int i3 = 0;
                                    while (true) {
                                        animator = mo2239k;
                                        i = size;
                                        if (i3 >= mo2238p.length) {
                                            break;
                                        }
                                        c3466n6.f11566a.put(mo2238p[i3], c3466n7.f11566a.get(mo2238p[i3]));
                                        i3++;
                                    }
                                }
                                int i4 = m2274o.f13365c;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= i4) {
                                        mo2239k = animator;
                                        c3466n = c3466n6;
                                        break;
                                    }
                                    C3453b c3453b = m2274o.get(m2274o.m1195h(i5));
                                    if (c3453b.f11543c != null && c3453b.f11541a == view2 && c3453b.f11542b.equals(this.f11521a) && c3453b.f11543c.equals(c3466n6)) {
                                        mo2239k = null;
                                        c3466n = c3466n6;
                                        break;
                                    }
                                    i5++;
                                }
                            } else {
                                c3466n = null;
                                i = size;
                            }
                            view = view2;
                        } else {
                            view = c3466n4.f11567b;
                            c3466n = null;
                            i = size;
                        }
                        size = i;
                        if (mo2239k != null) {
                            String str = this.f11521a;
                            C4951d c4951d = C3469q.f11571a;
                            m2274o.put(mo2239k, new C3453b(view, str, this, new C3481y(viewGroup), c3466n));
                            this.f11538r.add(mo2239k);
                            size = i;
                        }
                    }
                }
            }
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator2 = this.f11538r.get(sparseIntArray.keyAt(i6));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i6) - Long.MAX_VALUE));
            }
        }
    }

    /* renamed from: m */
    public void m2276m() {
        int i = this.f11534n - 1;
        this.f11534n = i;
        if (i == 0) {
            ArrayList<AbstractC3455d> arrayList = this.f11537q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f11537q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC3455d) arrayList2.get(i2)).mo2233d(this);
                }
            }
            for (int i3 = 0; i3 < ((C4255d) this.f11527g.f14174c).m1217h(); i3++) {
                View view = (View) ((C4255d) this.f11527g.f14174c).m1216i(i3);
                if (view != null) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    C3589v.C3593d.m2076r(view, false);
                }
            }
            for (int i4 = 0; i4 < ((C4255d) this.f11528h.f14174c).m1217h(); i4++) {
                View view2 = (View) ((C4255d) this.f11528h.f14174c).m1216i(i4);
                if (view2 != null) {
                    WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                    C3589v.C3593d.m2076r(view2, false);
                }
            }
            this.f11536p = true;
        }
    }

    /* renamed from: n */
    public C3466n m2275n(View view, boolean z) {
        int i;
        C3462l c3462l = this.f11529i;
        if (c3462l != null) {
            return c3462l.m2275n(view, z);
        }
        ArrayList<C3466n> arrayList = z ? this.f11531k : this.f11532l;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            C3466n c3466n = arrayList.get(i2);
            if (c3466n == null) {
                return null;
            }
            if (c3466n.f11567b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        C3466n c3466n2 = null;
        if (i >= 0) {
            c3466n2 = (z ? this.f11532l : this.f11531k).get(i);
        }
        return c3466n2;
    }

    /* renamed from: p */
    public String[] mo2238p() {
        return null;
    }

    /* renamed from: q */
    public C3466n m2273q(View view, boolean z) {
        C3462l c3462l = this.f11529i;
        if (c3462l != null) {
            return c3462l.m2273q(view, z);
        }
        return (C3466n) ((C4251a) (z ? this.f11527g : this.f11528h).f14172a).getOrDefault(view, null);
    }

    /* renamed from: r */
    public boolean mo2237r(C3466n c3466n, C3466n c3466n2) {
        boolean z = false;
        if (c3466n != null) {
            z = false;
            if (c3466n2 != null) {
                String[] mo2238p = mo2238p();
                if (mo2238p != null) {
                    int length = mo2238p.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m2271t(c3466n, c3466n2, mo2238p[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it2 = c3466n.f11566a.keySet().iterator();
                    do {
                        z = false;
                        if (!it2.hasNext()) {
                            break;
                        }
                    } while (!m2271t(c3466n, c3466n2, it2.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: s */
    public boolean m2272s(View view) {
        return (this.f11525e.size() == 0 && this.f11526f.size() == 0) || this.f11525e.contains(Integer.valueOf(view.getId())) || this.f11526f.contains(view);
    }

    public String toString() {
        return mo2262G("");
    }

    /* renamed from: u */
    public void mo2252u(View view) {
        if (!this.f11536p) {
            C4251a<Animator, C3453b> m2274o = m2274o();
            int i = m2274o.f13365c;
            C4951d c4951d = C3469q.f11571a;
            WindowId windowId = view.getWindowId();
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                C3453b m1192k = m2274o.m1192k(i);
                if (m1192k.f11541a != null) {
                    AbstractC3482z abstractC3482z = m1192k.f11544d;
                    boolean z = false;
                    if (abstractC3482z instanceof C3481y) {
                        z = false;
                        if (((C3481y) abstractC3482z).f11596a.equals(windowId)) {
                            z = true;
                        }
                    }
                    if (z) {
                        m2274o.m1195h(i).pause();
                    }
                }
            }
            ArrayList<AbstractC3455d> arrayList = this.f11537q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f11537q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC3455d) arrayList2.get(i2)).mo2234c(this);
                }
            }
            this.f11535o = true;
        }
    }

    /* renamed from: v */
    public AbstractC3451g mo2251v(AbstractC3455d abstractC3455d) {
        ArrayList<AbstractC3455d> arrayList = this.f11537q;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC3455d);
        if (this.f11537q.size() == 0) {
            this.f11537q = null;
        }
        return this;
    }

    /* renamed from: w */
    public AbstractC3451g mo2250w(View view) {
        this.f11526f.remove(view);
        return this;
    }

    /* renamed from: x */
    public void mo2249x(View view) {
        if (this.f11535o) {
            if (!this.f11536p) {
                C4251a<Animator, C3453b> m2274o = m2274o();
                int i = m2274o.f13365c;
                C4951d c4951d = C3469q.f11571a;
                WindowId windowId = view.getWindowId();
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    C3453b m1192k = m2274o.m1192k(i);
                    if (m1192k.f11541a != null) {
                        AbstractC3482z abstractC3482z = m1192k.f11544d;
                        if ((abstractC3482z instanceof C3481y) && ((C3481y) abstractC3482z).f11596a.equals(windowId)) {
                            m2274o.m1195h(i).resume();
                        }
                    }
                }
                ArrayList<AbstractC3455d> arrayList = this.f11537q;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f11537q.clone();
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((AbstractC3455d) arrayList2.get(i2)).mo2232e(this);
                    }
                }
            }
            this.f11535o = false;
        }
    }

    /* renamed from: y */
    public void mo2248y() {
        m2281F();
        C4251a<Animator, C3453b> m2274o = m2274o();
        Iterator<Animator> it2 = this.f11538r.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (m2274o.containsKey(next)) {
                m2281F();
                if (next != null) {
                    next.addListener(new C3456h(this, m2274o));
                    long j = this.f11523c;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.f11522b;
                    if (j2 >= 0) {
                        next.setStartDelay(next.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.f11524d;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new C3457i(this));
                    next.start();
                }
            }
        }
        this.f11538r.clear();
        m2276m();
    }

    /* renamed from: z */
    public AbstractC3451g mo2247z(long j) {
        this.f11523c = j;
        return this;
    }
}
