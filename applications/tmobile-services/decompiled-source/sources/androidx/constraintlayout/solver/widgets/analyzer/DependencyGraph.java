package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyGraph.class */
public class DependencyGraph {

    /* renamed from: a */
    private ConstraintWidgetContainer f2388a;

    /* renamed from: d */
    private ConstraintWidgetContainer f2391d;

    /* renamed from: b */
    private boolean f2389b = true;

    /* renamed from: c */
    private boolean f2390c = true;

    /* renamed from: e */
    private ArrayList<WidgetRun> f2392e = new ArrayList<>();

    /* renamed from: f */
    private BasicMeasure.Measurer f2393f = null;

    /* renamed from: g */
    private BasicMeasure.Measure f2394g = new BasicMeasure.Measure();

    /* renamed from: h */
    ArrayList<RunGroup> f2395h = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        new ArrayList();
        this.f2388a = constraintWidgetContainer;
        this.f2391d = constraintWidgetContainer;
    }

    /* renamed from: a */
    private void m20154a(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.f2399d;
        if (widgetRun.f2427c == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f2388a;
            if (!(widgetRun == constraintWidgetContainer.f2240d || widgetRun == constraintWidgetContainer.f2242e)) {
                RunGroup runGroup2 = runGroup;
                if (runGroup == null) {
                    runGroup2 = new RunGroup(widgetRun, i2);
                    arrayList.add(runGroup2);
                }
                widgetRun.f2427c = runGroup2;
                runGroup2.m20120a(widgetRun);
                for (Dependency dependency : widgetRun.f2432h.f2406k) {
                    if (dependency instanceof DependencyNode) {
                        m20154a((DependencyNode) dependency, i, 0, dependencyNode2, arrayList, runGroup2);
                    }
                }
                for (Dependency dependency2 : widgetRun.f2433i.f2406k) {
                    if (dependency2 instanceof DependencyNode) {
                        m20154a((DependencyNode) dependency2, i, 1, dependencyNode2, arrayList, runGroup2);
                    }
                }
                if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                    for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).f2416k.f2406k) {
                        if (dependency3 instanceof DependencyNode) {
                            m20154a((DependencyNode) dependency3, i, 2, dependencyNode2, arrayList, runGroup2);
                        }
                    }
                }
                for (DependencyNode dependencyNode3 : widgetRun.f2432h.f2407l) {
                    if (dependencyNode3 == dependencyNode2) {
                        runGroup2.f2413a = true;
                    }
                    m20154a(dependencyNode3, i, 0, dependencyNode2, arrayList, runGroup2);
                }
                for (DependencyNode dependencyNode4 : widgetRun.f2433i.f2407l) {
                    if (dependencyNode4 == dependencyNode2) {
                        runGroup2.f2413a = true;
                    }
                    m20154a(dependencyNode4, i, 1, dependencyNode2, arrayList, runGroup2);
                }
                if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                    for (DependencyNode dependencyNode5 : ((VerticalWidgetRun) widgetRun).f2416k.f2407l) {
                        m20154a(dependencyNode5, i, 2, dependencyNode2, arrayList, runGroup2);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
        if (r0.f2218K.f2192f == null) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0144, code lost:
        if (r0.f2219L.f2192f == null) goto L_0x0147;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m20153b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r8) {
        /*
            Method dump skipped, instructions count: 1573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.m20153b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):boolean");
    }

    /* renamed from: e */
    private int m20150e(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        int size = this.f2395h.size();
        long j = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j = Math.max(j, this.f2395h.get(i2).m20119b(constraintWidgetContainer, i));
        }
        return (int) j;
    }

    /* renamed from: i */
    private void m20146i(WidgetRun widgetRun, int i, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.f2432h.f2406k) {
            if (dependency instanceof DependencyNode) {
                m20154a((DependencyNode) dependency, i, 0, widgetRun.f2433i, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                m20154a(((WidgetRun) dependency).f2432h, i, 0, widgetRun.f2433i, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.f2433i.f2406k) {
            if (dependency2 instanceof DependencyNode) {
                m20154a((DependencyNode) dependency2, i, 1, widgetRun.f2432h, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                m20154a(((WidgetRun) dependency2).f2433i, i, 1, widgetRun.f2432h, arrayList, null);
            }
        }
        if (i == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).f2416k.f2406k) {
                if (dependency3 instanceof DependencyNode) {
                    m20154a((DependencyNode) dependency3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: l */
    private void m20143l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure.Measure measure = this.f2394g;
        measure.f2376a = dimensionBehaviour;
        measure.f2377b = dimensionBehaviour2;
        measure.f2378c = i;
        measure.f2379d = i2;
        this.f2393f.mo20028b(constraintWidget, measure);
        constraintWidget.m20347Y0(this.f2394g.f2380e);
        constraintWidget.m20302z0(this.f2394g.f2381f);
        constraintWidget.m20304y0(this.f2394g.f2383h);
        constraintWidget.m20323o0(this.f2394g.f2382g);
    }

    /* renamed from: c */
    public void m20152c() {
        m20151d(this.f2392e);
        this.f2395h.clear();
        RunGroup.f2412d = 0;
        m20146i(this.f2388a.f2240d, 0, this.f2395h);
        m20146i(this.f2388a.f2242e, 1, this.f2395h);
        this.f2389b = false;
    }

    /* renamed from: d */
    public void m20151d(ArrayList<WidgetRun> arrayList) {
        HashSet hashSet;
        arrayList.clear();
        this.f2391d.f2240d.mo20100f();
        this.f2391d.f2242e.mo20100f();
        arrayList.add(this.f2391d.f2240d);
        arrayList.add(this.f2391d.f2242e);
        Iterator<ConstraintWidget> it = this.f2391d.f2372L0.iterator();
        HashSet hashSet2 = null;
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (next instanceof Guideline) {
                arrayList.add(new GuidelineReference(next));
            } else {
                if (next.m20340c0()) {
                    if (next.f2236b == null) {
                        next.f2236b = new ChainRun(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.f2236b);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.f2240d);
                }
                if (next.m20336e0()) {
                    if (next.f2238c == null) {
                        next.f2238c = new ChainRun(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.f2238c);
                } else {
                    arrayList.add(next.f2242e);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (next instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(next));
                    hashSet2 = hashSet;
                }
            }
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<WidgetRun> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().mo20100f();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.f2426b != this.f2391d) {
                next2.mo20102d();
            }
        }
    }

    /* renamed from: f */
    public boolean m20149f(boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = z & true;
        if (this.f2389b || this.f2390c) {
            Iterator<ConstraintWidget> it = this.f2388a.f2372L0.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.m20324o();
                next.f2234a = false;
                next.f2240d.m20121r();
                next.f2242e.m20116q();
            }
            this.f2388a.m20324o();
            ConstraintWidgetContainer constraintWidgetContainer = this.f2388a;
            constraintWidgetContainer.f2234a = false;
            constraintWidgetContainer.f2240d.m20121r();
            this.f2388a.f2242e.m20116q();
            this.f2390c = false;
        }
        if (m20153b(this.f2391d)) {
            return false;
        }
        this.f2388a.m20345Z0(0);
        this.f2388a.m20343a1(0);
        ConstraintWidget.DimensionBehaviour v = this.f2388a.m20311v(0);
        ConstraintWidget.DimensionBehaviour v2 = this.f2388a.m20311v(1);
        if (this.f2389b) {
            m20152c();
        }
        int V = this.f2388a.m20354V();
        int W = this.f2388a.m20352W();
        this.f2388a.f2240d.f2432h.mo20138d(V);
        this.f2388a.f2242e.f2432h.mo20138d(W);
        m20142m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (v == dimensionBehaviour || v2 == dimensionBehaviour) {
            boolean z5 = z4;
            if (z4) {
                Iterator<WidgetRun> it2 = this.f2392e.iterator();
                while (true) {
                    z5 = z4;
                    if (it2.hasNext()) {
                        if (!it2.next().mo20093m()) {
                            z5 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z5 && v == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2388a.m20389D0(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.f2388a;
                constraintWidgetContainer2.m20347Y0(m20150e(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f2388a;
                constraintWidgetContainer3.f2240d.f2429e.mo20138d(constraintWidgetContainer3.m20356U());
            }
            if (z5 && v2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2388a.m20355U0(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f2388a;
                constraintWidgetContainer4.m20302z0(m20150e(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.f2388a;
                constraintWidgetContainer5.f2242e.f2429e.mo20138d(constraintWidgetContainer5.m20305y());
            }
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.f2388a.f2227T;
        if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int U = this.f2388a.m20356U() + V;
            this.f2388a.f2240d.f2433i.mo20138d(U);
            this.f2388a.f2240d.f2429e.mo20138d(U - V);
            m20142m();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.f2388a.f2227T;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int y = this.f2388a.m20305y() + W;
                this.f2388a.f2242e.f2433i.mo20138d(y);
                this.f2388a.f2242e.f2429e.mo20138d(y - W);
            }
            m20142m();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<WidgetRun> it3 = this.f2392e.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.f2426b != this.f2388a || next2.f2431g) {
                next2.mo20101e();
            }
        }
        Iterator<WidgetRun> it4 = this.f2392e.iterator();
        while (it4.hasNext()) {
            WidgetRun next3 = it4.next();
            if (z2 || next3.f2426b != this.f2388a) {
                if (!next3.f2432h.f2405j || ((!next3.f2433i.f2405j && !(next3 instanceof GuidelineReference)) || (!next3.f2429e.f2405j && !(next3 instanceof ChainRun) && !(next3 instanceof GuidelineReference)))) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f2388a.m20389D0(v);
        this.f2388a.m20355U0(v2);
        return z3;
    }

    /* renamed from: g */
    public boolean m20148g(boolean z) {
        if (this.f2389b) {
            Iterator<ConstraintWidget> it = this.f2388a.f2372L0.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.m20324o();
                next.f2234a = false;
                HorizontalWidgetRun horizontalWidgetRun = next.f2240d;
                horizontalWidgetRun.f2429e.f2405j = false;
                horizontalWidgetRun.f2431g = false;
                horizontalWidgetRun.m20121r();
                VerticalWidgetRun verticalWidgetRun = next.f2242e;
                verticalWidgetRun.f2429e.f2405j = false;
                verticalWidgetRun.f2431g = false;
                verticalWidgetRun.m20116q();
            }
            this.f2388a.m20324o();
            ConstraintWidgetContainer constraintWidgetContainer = this.f2388a;
            constraintWidgetContainer.f2234a = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.f2240d;
            horizontalWidgetRun2.f2429e.f2405j = false;
            horizontalWidgetRun2.f2431g = false;
            horizontalWidgetRun2.m20121r();
            VerticalWidgetRun verticalWidgetRun2 = this.f2388a.f2242e;
            verticalWidgetRun2.f2429e.f2405j = false;
            verticalWidgetRun2.f2431g = false;
            verticalWidgetRun2.m20116q();
            m20152c();
        }
        if (m20153b(this.f2391d)) {
            return false;
        }
        this.f2388a.m20345Z0(0);
        this.f2388a.m20343a1(0);
        this.f2388a.f2240d.f2432h.mo20138d(0);
        this.f2388a.f2242e.f2432h.mo20138d(0);
        return true;
    }

    /* renamed from: h */
    public boolean m20147h(boolean z, int i) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z3;
        boolean z4 = true;
        boolean z5 = z & true;
        ConstraintWidget.DimensionBehaviour v = this.f2388a.m20311v(0);
        ConstraintWidget.DimensionBehaviour v2 = this.f2388a.m20311v(1);
        int V = this.f2388a.m20354V();
        int W = this.f2388a.m20352W();
        if (z5 && (v == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || v2 == dimensionBehaviour)) {
            Iterator<WidgetRun> it = this.f2392e.iterator();
            while (true) {
                z3 = z5;
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun next = it.next();
                if (next.f2430f == i && !next.mo20093m()) {
                    z3 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z3 && v == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f2388a.m20389D0(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.f2388a;
                    constraintWidgetContainer.m20347Y0(m20150e(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f2388a;
                    constraintWidgetContainer2.f2240d.f2429e.mo20138d(constraintWidgetContainer2.m20356U());
                }
            } else if (z3 && v2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f2388a.m20355U0(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f2388a;
                constraintWidgetContainer3.m20302z0(m20150e(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f2388a;
                constraintWidgetContainer4.f2242e.f2429e.mo20138d(constraintWidgetContainer4.m20305y());
            }
        }
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.f2388a.f2227T;
            if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int U = this.f2388a.m20356U() + V;
                this.f2388a.f2240d.f2433i.mo20138d(U);
                this.f2388a.f2240d.f2429e.mo20138d(U - V);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.f2388a.f2227T;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int y = this.f2388a.m20305y() + W;
                this.f2388a.f2242e.f2433i.mo20138d(y);
                this.f2388a.f2242e.f2429e.mo20138d(y - W);
                z2 = true;
            }
            z2 = false;
        }
        m20142m();
        Iterator<WidgetRun> it2 = this.f2392e.iterator();
        while (it2.hasNext()) {
            WidgetRun next2 = it2.next();
            if (next2.f2430f == i && (next2.f2426b != this.f2388a || next2.f2431g)) {
                next2.mo20101e();
            }
        }
        Iterator<WidgetRun> it3 = this.f2392e.iterator();
        while (it3.hasNext()) {
            WidgetRun next3 = it3.next();
            if (next3.f2430f == i && (z2 || next3.f2426b != this.f2388a)) {
                if (!next3.f2432h.f2405j || !next3.f2433i.f2405j || (!(next3 instanceof ChainRun) && !next3.f2429e.f2405j)) {
                    z4 = false;
                    break;
                }
            }
        }
        this.f2388a.m20389D0(v);
        this.f2388a.m20355U0(v2);
        return z4;
    }

    /* renamed from: j */
    public void m20145j() {
        this.f2389b = true;
    }

    /* renamed from: k */
    public void m20144k() {
        this.f2390c = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
        if (r0 == 1) goto L_0x0086;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016a  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20142m() {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.m20142m():void");
    }

    /* renamed from: n */
    public void m20141n(BasicMeasure.Measurer measurer) {
        this.f2393f = measurer;
    }
}
