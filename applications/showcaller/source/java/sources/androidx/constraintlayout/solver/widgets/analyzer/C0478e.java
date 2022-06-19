package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0473b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/e.class */
public class C0478e {

    /* renamed from: a */
    private C0493d f2244a;

    /* renamed from: d */
    private C0493d f2247d;

    /* renamed from: b */
    private boolean f2245b = true;

    /* renamed from: c */
    private boolean f2246c = true;

    /* renamed from: e */
    private ArrayList<WidgetRun> f2248e = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<C0486l> f2249f = new ArrayList<>();

    /* renamed from: g */
    private C0473b.AbstractC0475b f2250g = null;

    /* renamed from: h */
    private C0473b.C0474a f2251h = new C0473b.C0474a();

    /* renamed from: i */
    ArrayList<C0486l> f2252i = new ArrayList<>();

    public C0478e(C0493d c0493d) {
        this.f2244a = c0493d;
        this.f2247d = c0493d;
    }

    /* renamed from: a */
    private void m33928a(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<C0486l> arrayList, C0486l c0486l) {
        WidgetRun widgetRun = dependencyNode.f2192d;
        if (widgetRun.f2212c == null) {
            C0493d c0493d = this.f2244a;
            if (widgetRun == c0493d.f2136f || widgetRun == c0493d.f2138g) {
                return;
            }
            C0486l c0486l2 = c0486l;
            if (c0486l == null) {
                c0486l2 = new C0486l(widgetRun, i2);
                arrayList.add(c0486l2);
            }
            widgetRun.f2212c = c0486l2;
            c0486l2.m33896a(widgetRun);
            for (AbstractC0477d abstractC0477d : widgetRun.f2217h.f2199k) {
                if (abstractC0477d instanceof DependencyNode) {
                    m33928a((DependencyNode) abstractC0477d, i, 0, dependencyNode2, arrayList, c0486l2);
                }
            }
            for (AbstractC0477d abstractC0477d2 : widgetRun.f2218i.f2199k) {
                if (abstractC0477d2 instanceof DependencyNode) {
                    m33928a((DependencyNode) abstractC0477d2, i, 1, dependencyNode2, arrayList, c0486l2);
                }
            }
            if (i == 1 && (widgetRun instanceof C0487m)) {
                for (AbstractC0477d abstractC0477d3 : ((C0487m) widgetRun).f2265k.f2199k) {
                    if (abstractC0477d3 instanceof DependencyNode) {
                        m33928a((DependencyNode) abstractC0477d3, i, 2, dependencyNode2, arrayList, c0486l2);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.f2217h.f2200l) {
                if (dependencyNode3 == dependencyNode2) {
                    c0486l2.f2259c = true;
                }
                m33928a(dependencyNode3, i, 0, dependencyNode2, arrayList, c0486l2);
            }
            for (DependencyNode dependencyNode4 : widgetRun.f2218i.f2200l) {
                if (dependencyNode4 == dependencyNode2) {
                    c0486l2.f2259c = true;
                }
                m33928a(dependencyNode4, i, 1, dependencyNode2, arrayList, c0486l2);
            }
            if (i != 1 || !(widgetRun instanceof C0487m)) {
                return;
            }
            for (DependencyNode dependencyNode5 : ((C0487m) widgetRun).f2265k.f2200l) {
                m33928a(dependencyNode5, i, 2, dependencyNode2, arrayList, c0486l2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x010d, code lost:
        if (r0.f2112M.f2072f == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
        if (r0.f2114N.f2072f == null) goto L61;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m33927b(androidx.constraintlayout.solver.widgets.C0493d r9) {
        /*
            Method dump skipped, instructions count: 1510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0478e.m33927b(androidx.constraintlayout.solver.widgets.d):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: e */
    private int m33924e(C0493d c0493d, int i) {
        int size = this.f2252i.size();
        char c = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c = Math.max((long) c, this.f2252i.get(i2).m33895b(c0493d, i));
        }
        return c;
    }

    /* renamed from: i */
    private void m33920i(WidgetRun widgetRun, int i, ArrayList<C0486l> arrayList) {
        for (AbstractC0477d abstractC0477d : widgetRun.f2217h.f2199k) {
            if (abstractC0477d instanceof DependencyNode) {
                m33928a((DependencyNode) abstractC0477d, i, 0, widgetRun.f2218i, arrayList, null);
            } else if (abstractC0477d instanceof WidgetRun) {
                m33928a(((WidgetRun) abstractC0477d).f2217h, i, 0, widgetRun.f2218i, arrayList, null);
            }
        }
        for (AbstractC0477d abstractC0477d2 : widgetRun.f2218i.f2199k) {
            if (abstractC0477d2 instanceof DependencyNode) {
                m33928a((DependencyNode) abstractC0477d2, i, 1, widgetRun.f2217h, arrayList, null);
            } else if (abstractC0477d2 instanceof WidgetRun) {
                m33928a(((WidgetRun) abstractC0477d2).f2218i, i, 1, widgetRun.f2217h, arrayList, null);
            }
        }
        if (i == 1) {
            for (AbstractC0477d abstractC0477d3 : ((C0487m) widgetRun).f2265k.f2199k) {
                if (abstractC0477d3 instanceof DependencyNode) {
                    m33928a((DependencyNode) abstractC0477d3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: l */
    private void m33917l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        C0473b.C0474a c0474a = this.f2251h;
        c0474a.f2232d = dimensionBehaviour;
        c0474a.f2233e = dimensionBehaviour2;
        c0474a.f2234f = i;
        c0474a.f2235g = i2;
        this.f2250g.mo33670b(constraintWidget, c0474a);
        constraintWidget.m34004Y0(this.f2251h.f2236h);
        constraintWidget.m33959z0(this.f2251h.f2237i);
        constraintWidget.m33961y0(this.f2251h.f2239k);
        constraintWidget.m33980o0(this.f2251h.f2238j);
    }

    /* renamed from: c */
    public void m33926c() {
        m33925d(this.f2248e);
        this.f2252i.clear();
        C0486l.f2257a = 0;
        m33920i(this.f2244a.f2136f, 0, this.f2252i);
        m33920i(this.f2244a.f2138g, 1, this.f2252i);
        this.f2245b = false;
    }

    /* renamed from: d */
    public void m33925d(ArrayList<WidgetRun> arrayList) {
        HashSet hashSet;
        arrayList.clear();
        this.f2247d.f2136f.mo33889f();
        this.f2247d.f2138g.mo33889f();
        arrayList.add(this.f2247d.f2136f);
        arrayList.add(this.f2247d.f2138g);
        Iterator<ConstraintWidget> it = this.f2247d.f2401N0.iterator();
        HashSet hashSet2 = null;
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (next instanceof C0496f) {
                arrayList.add(new C0482i(next));
            } else {
                if (next.m33997c0()) {
                    if (next.f2132d == null) {
                        next.f2132d = new C0476c(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.f2132d);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.f2136f);
                }
                if (next.m33993e0()) {
                    if (next.f2134e == null) {
                        next.f2134e = new C0476c(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f2134e);
                } else {
                    arrayList.add(next.f2138g);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof C0499h) {
                    arrayList.add(new C0483j(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<WidgetRun> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().mo33889f();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.f2211b != this.f2247d) {
                next2.mo33891d();
            }
        }
    }

    /* renamed from: f */
    public boolean m33923f(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = z & true;
        if (this.f2245b || this.f2246c) {
            Iterator<ConstraintWidget> it = this.f2244a.f2401N0.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.m33981o();
                next.f2128b = false;
                next.f2136f.m33897r();
                next.f2138g.m33887q();
            }
            this.f2244a.m33981o();
            C0493d c0493d = this.f2244a;
            c0493d.f2128b = false;
            c0493d.f2136f.m33897r();
            this.f2244a.f2138g.m33887q();
            this.f2246c = false;
        }
        if (m33927b(this.f2247d)) {
            return false;
        }
        this.f2244a.m34002Z0(0);
        this.f2244a.m34000a1(0);
        ConstraintWidget.DimensionBehaviour m33968v = this.f2244a.m33968v(0);
        ConstraintWidget.DimensionBehaviour m33968v2 = this.f2244a.m33968v(1);
        if (this.f2245b) {
            m33926c();
        }
        int m34011V = this.f2244a.m34011V();
        int m34009W = this.f2244a.m34009W();
        this.f2244a.f2136f.f2217h.mo33914d(m34011V);
        this.f2244a.f2138g.f2217h.mo33914d(m34009W);
        m33916m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (m33968v == dimensionBehaviour || m33968v2 == dimensionBehaviour) {
            boolean z5 = z4;
            if (z4) {
                Iterator<WidgetRun> it2 = this.f2248e.iterator();
                while (true) {
                    z5 = z4;
                    if (it2.hasNext()) {
                        if (!it2.next().mo33888m()) {
                            z5 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z5 && m33968v == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2244a.m34046D0(ConstraintWidget.DimensionBehaviour.FIXED);
                C0493d c0493d2 = this.f2244a;
                c0493d2.m34004Y0(m33924e(c0493d2, 0));
                C0493d c0493d3 = this.f2244a;
                c0493d3.f2136f.f2214e.mo33914d(c0493d3.m34013U());
            }
            if (z5 && m33968v2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2244a.m34012U0(ConstraintWidget.DimensionBehaviour.FIXED);
                C0493d c0493d4 = this.f2244a;
                c0493d4.m33959z0(m33924e(c0493d4, 1));
                C0493d c0493d5 = this.f2244a;
                c0493d5.f2138g.f2214e.mo33914d(c0493d5.m33962y());
            }
        }
        C0493d c0493d6 = this.f2244a;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = c0493d6.f2122V;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int m34013U = c0493d6.m34013U() + m34011V;
            this.f2244a.f2136f.f2218i.mo33914d(m34013U);
            this.f2244a.f2136f.f2214e.mo33914d(m34013U - m34011V);
            m33916m();
            C0493d c0493d7 = this.f2244a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = c0493d7.f2122V;
            if (dimensionBehaviourArr2[1] == dimensionBehaviour3 || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m33962y = c0493d7.m33962y() + m34009W;
                this.f2244a.f2138g.f2218i.mo33914d(m33962y);
                this.f2244a.f2138g.f2214e.mo33914d(m33962y - m34009W);
            }
            m33916m();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<WidgetRun> it3 = this.f2248e.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.f2211b != this.f2244a || next2.f2216g) {
                next2.mo33890e();
            }
        }
        Iterator<WidgetRun> it4 = this.f2248e.iterator();
        while (true) {
            z3 = true;
            if (!it4.hasNext()) {
                break;
            }
            WidgetRun next3 = it4.next();
            if (z2 || next3.f2211b != this.f2244a) {
                if (!next3.f2217h.f2198j || ((!next3.f2218i.f2198j && !(next3 instanceof C0482i)) || (!next3.f2214e.f2198j && !(next3 instanceof C0476c) && !(next3 instanceof C0482i)))) {
                    break;
                }
            }
        }
        z3 = false;
        this.f2244a.m34046D0(m33968v);
        this.f2244a.m34012U0(m33968v2);
        return z3;
    }

    /* renamed from: g */
    public boolean m33922g(boolean z) {
        if (this.f2245b) {
            Iterator<ConstraintWidget> it = this.f2244a.f2401N0.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.m33981o();
                next.f2128b = false;
                C0484k c0484k = next.f2136f;
                c0484k.f2214e.f2198j = false;
                c0484k.f2216g = false;
                c0484k.m33897r();
                C0487m c0487m = next.f2138g;
                c0487m.f2214e.f2198j = false;
                c0487m.f2216g = false;
                c0487m.m33887q();
            }
            this.f2244a.m33981o();
            C0493d c0493d = this.f2244a;
            c0493d.f2128b = false;
            C0484k c0484k2 = c0493d.f2136f;
            c0484k2.f2214e.f2198j = false;
            c0484k2.f2216g = false;
            c0484k2.m33897r();
            C0487m c0487m2 = this.f2244a.f2138g;
            c0487m2.f2214e.f2198j = false;
            c0487m2.f2216g = false;
            c0487m2.m33887q();
            m33926c();
        }
        if (m33927b(this.f2247d)) {
            return false;
        }
        this.f2244a.m34002Z0(0);
        this.f2244a.m34000a1(0);
        this.f2244a.f2136f.f2217h.mo33914d(0);
        this.f2244a.f2138g.f2217h.mo33914d(0);
        return true;
    }

    /* renamed from: h */
    public boolean m33921h(boolean z, int i) {
        boolean z2;
        boolean z3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z4;
        boolean z5 = z & true;
        ConstraintWidget.DimensionBehaviour m33968v = this.f2244a.m33968v(0);
        ConstraintWidget.DimensionBehaviour m33968v2 = this.f2244a.m33968v(1);
        int m34011V = this.f2244a.m34011V();
        int m34009W = this.f2244a.m34009W();
        if (z5 && (m33968v == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || m33968v2 == dimensionBehaviour)) {
            Iterator<WidgetRun> it = this.f2248e.iterator();
            while (true) {
                z4 = z5;
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun next = it.next();
                if (next.f2215f == i && !next.mo33888m()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && m33968v == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f2244a.m34046D0(ConstraintWidget.DimensionBehaviour.FIXED);
                    C0493d c0493d = this.f2244a;
                    c0493d.m34004Y0(m33924e(c0493d, 0));
                    C0493d c0493d2 = this.f2244a;
                    c0493d2.f2136f.f2214e.mo33914d(c0493d2.m34013U());
                }
            } else if (z4 && m33968v2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2244a.m34012U0(ConstraintWidget.DimensionBehaviour.FIXED);
                C0493d c0493d3 = this.f2244a;
                c0493d3.m33959z0(m33924e(c0493d3, 1));
                C0493d c0493d4 = this.f2244a;
                c0493d4.f2138g.f2214e.mo33914d(c0493d4.m33962y());
            }
        }
        if (i == 0) {
            C0493d c0493d5 = this.f2244a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = c0493d5.f2122V;
            if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m34013U = c0493d5.m34013U() + m34011V;
                this.f2244a.f2136f.f2218i.mo33914d(m34013U);
                this.f2244a.f2136f.f2214e.mo33914d(m34013U - m34011V);
                z2 = true;
            }
            z2 = false;
        } else {
            C0493d c0493d6 = this.f2244a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = c0493d6.f2122V;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m33962y = c0493d6.m33962y() + m34009W;
                this.f2244a.f2138g.f2218i.mo33914d(m33962y);
                this.f2244a.f2138g.f2214e.mo33914d(m33962y - m34009W);
                z2 = true;
            }
            z2 = false;
        }
        m33916m();
        Iterator<WidgetRun> it2 = this.f2248e.iterator();
        while (it2.hasNext()) {
            WidgetRun next2 = it2.next();
            if (next2.f2215f == i && (next2.f2211b != this.f2244a || next2.f2216g)) {
                next2.mo33890e();
            }
        }
        Iterator<WidgetRun> it3 = this.f2248e.iterator();
        while (true) {
            z3 = true;
            if (!it3.hasNext()) {
                break;
            }
            WidgetRun next3 = it3.next();
            if (next3.f2215f == i && (z2 || next3.f2211b != this.f2244a)) {
                if (!next3.f2217h.f2198j || !next3.f2218i.f2198j || (!(next3 instanceof C0476c) && !next3.f2214e.f2198j)) {
                    break;
                }
            }
        }
        z3 = false;
        this.f2244a.m34046D0(m33968v);
        this.f2244a.m34012U0(m33968v2);
        return z3;
    }

    /* renamed from: j */
    public void m33919j() {
        this.f2245b = true;
    }

    /* renamed from: k */
    public void m33918k() {
        this.f2246c = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0155  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33916m() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0478e.m33916m():void");
    }

    /* renamed from: n */
    public void m33915n(C0473b.AbstractC0475b abstractC0475b) {
        this.f2250g = abstractC0475b;
    }
}
