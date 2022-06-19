package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0205b;
import androidx.constraintlayout.solver.widgets.d;
import androidx.constraintlayout.solver.widgets.f;
import androidx.constraintlayout.solver.widgets.h;
import androidx.constraintlayout.solver.widgets.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/e.class */
public class C0209e {

    /* renamed from: a */
    private d f1215a;

    /* renamed from: d */
    private d f1218d;

    /* renamed from: b */
    private boolean f1216b = true;

    /* renamed from: c */
    private boolean f1217c = true;

    /* renamed from: e */
    private ArrayList<WidgetRun> f1219e = new ArrayList<>();

    /* renamed from: f */
    private C0205b.AbstractC0207b f1220f = null;

    /* renamed from: g */
    private C0205b.C0206a f1221g = new C0205b.C0206a();

    /* renamed from: h */
    ArrayList<C0210j> f1222h = new ArrayList<>();

    public C0209e(d dVar) {
        new ArrayList();
        this.f1215a = dVar;
        this.f1218d = dVar;
    }

    /* renamed from: a */
    private void m13915a(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<C0210j> arrayList, C0210j c0210j) {
        k kVar = dependencyNode.d;
        if (((WidgetRun) kVar).c == null) {
            d dVar = this.f1215a;
            if (kVar == dVar.f1134d || kVar == dVar.f1136e) {
                return;
            }
            C0210j c0210j2 = c0210j;
            if (c0210j == null) {
                c0210j2 = new C0210j(kVar, i2);
                arrayList.add(c0210j2);
            }
            ((WidgetRun) kVar).c = c0210j2;
            c0210j2.m13901a(kVar);
            for (AbstractC0208d abstractC0208d : ((WidgetRun) kVar).h.k) {
                if (abstractC0208d instanceof DependencyNode) {
                    m13915a((DependencyNode) abstractC0208d, i, 0, dependencyNode2, arrayList, c0210j2);
                }
            }
            for (AbstractC0208d abstractC0208d2 : ((WidgetRun) kVar).i.k) {
                if (abstractC0208d2 instanceof DependencyNode) {
                    m13915a((DependencyNode) abstractC0208d2, i, 1, dependencyNode2, arrayList, c0210j2);
                }
            }
            if (i == 1 && (kVar instanceof k)) {
                for (AbstractC0208d abstractC0208d3 : kVar.k.k) {
                    if (abstractC0208d3 instanceof DependencyNode) {
                        m13915a((DependencyNode) abstractC0208d3, i, 2, dependencyNode2, arrayList, c0210j2);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : ((WidgetRun) kVar).h.l) {
                if (dependencyNode3 == dependencyNode2) {
                    c0210j2.f1225a = true;
                }
                m13915a(dependencyNode3, i, 0, dependencyNode2, arrayList, c0210j2);
            }
            for (DependencyNode dependencyNode4 : ((WidgetRun) kVar).i.l) {
                if (dependencyNode4 == dependencyNode2) {
                    c0210j2.f1225a = true;
                }
                m13915a(dependencyNode4, i, 1, dependencyNode2, arrayList, c0210j2);
            }
            if (i != 1 || !(kVar instanceof k)) {
                return;
            }
            for (DependencyNode dependencyNode5 : kVar.k.l) {
                m13915a(dependencyNode5, i, 2, dependencyNode2, arrayList, c0210j2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d4, code lost:
        if (r0.f1148k == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010b, code lost:
        if (r0.f1104C.f1084d == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x013f, code lost:
        if (r0.f1105D.f1084d == null) goto L60;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m13914b(androidx.constraintlayout.solver.widgets.d r8) {
        /*
            Method dump skipped, instructions count: 1259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0209e.m13914b(androidx.constraintlayout.solver.widgets.d):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: e */
    private int m13911e(d dVar, int i) {
        int size = this.f1222h.size();
        char c = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c = Math.max((long) c, this.f1222h.get(i2).m13900b(dVar, i));
        }
        return c;
    }

    /* renamed from: i */
    private void m13907i(WidgetRun widgetRun, int i, ArrayList<C0210j> arrayList) {
        for (WidgetRun widgetRun2 : widgetRun.h.k) {
            if (widgetRun2 instanceof DependencyNode) {
                m13915a((DependencyNode) widgetRun2, i, 0, widgetRun.i, arrayList, null);
            } else if (widgetRun2 instanceof WidgetRun) {
                m13915a(widgetRun2.h, i, 0, widgetRun.i, arrayList, null);
            }
        }
        for (WidgetRun widgetRun3 : widgetRun.i.k) {
            if (widgetRun3 instanceof DependencyNode) {
                m13915a((DependencyNode) widgetRun3, i, 1, widgetRun.h, arrayList, null);
            } else if (widgetRun3 instanceof WidgetRun) {
                m13915a(widgetRun3.i, i, 1, widgetRun.h, arrayList, null);
            }
        }
        if (i == 1) {
            for (AbstractC0208d abstractC0208d : ((k) widgetRun).k.k) {
                if (abstractC0208d instanceof DependencyNode) {
                    m13915a((DependencyNode) abstractC0208d, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: l */
    private void m13904l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        C0205b.C0206a c0206a = this.f1221g;
        c0206a.f1205a = dimensionBehaviour;
        c0206a.f1206b = dimensionBehaviour2;
        c0206a.f1207c = i;
        c0206a.f1208d = i2;
        this.f1220f.m13918a(constraintWidget, c0206a);
        constraintWidget.m13998F0(this.f1221g.f1209e);
        constraintWidget.m13958i0(this.f1221g.f1210f);
        constraintWidget.m13960h0(this.f1221g.f1212h);
        constraintWidget.m13970c0(this.f1221g.f1211g);
    }

    /* renamed from: c */
    public void m13913c() {
        m13912d(this.f1219e);
        this.f1222h.clear();
        C0210j.f1224d = 0;
        m13907i(this.f1215a.f1134d, 0, this.f1222h);
        m13907i(this.f1215a.f1136e, 1, this.f1222h);
        this.f1216b = false;
    }

    /* renamed from: d */
    public void m13912d(ArrayList<WidgetRun> arrayList) {
        WidgetRun gVar;
        HashSet hashSet;
        arrayList.clear();
        this.f1218d.f1134d.f();
        this.f1218d.f1136e.f();
        arrayList.add(this.f1218d.f1134d);
        arrayList.add(this.f1218d.f1136e);
        Iterator it = ((k) this.f1218d).D0.iterator();
        HashSet hashSet2 = null;
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (constraintWidget instanceof f) {
                gVar = new g(constraintWidget);
            } else {
                if (constraintWidget.m13976W()) {
                    if (constraintWidget.f1130b == null) {
                        constraintWidget.f1130b = new c(constraintWidget, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(constraintWidget.f1130b);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(constraintWidget.f1134d);
                }
                if (constraintWidget.m13974Y()) {
                    if (constraintWidget.f1132c == null) {
                        constraintWidget.f1132c = new c(constraintWidget, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f1132c);
                } else {
                    arrayList.add(constraintWidget.f1136e);
                    hashSet = hashSet2;
                }
                hashSet2 = hashSet;
                if (constraintWidget instanceof h) {
                    hashSet2 = hashSet;
                    gVar = new h(constraintWidget);
                }
            }
            arrayList.add(gVar);
        }
        if (hashSet2 != null) {
            arrayList.addAll(hashSet2);
        }
        Iterator<WidgetRun> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().f();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next = it3.next();
            if (next.b != this.f1218d) {
                next.d();
            }
        }
    }

    /* renamed from: f */
    public boolean m13910f(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = z & true;
        if (this.f1216b || this.f1217c) {
            Iterator it = ((k) this.f1215a).D0.iterator();
            while (it.hasNext()) {
                ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
                constraintWidget.f1128a = false;
                constraintWidget.f1134d.r();
                constraintWidget.f1136e.q();
            }
            d dVar = this.f1215a;
            dVar.f1128a = false;
            dVar.f1134d.r();
            this.f1215a.f1136e.q();
            this.f1217c = false;
        }
        if (m13914b(this.f1218d)) {
            return false;
        }
        this.f1215a.m13996G0(0);
        this.f1215a.m13994H0(0);
        ConstraintWidget.DimensionBehaviour m13937t = this.f1215a.m13937t(0);
        ConstraintWidget.DimensionBehaviour m13937t2 = this.f1215a.m13937t(1);
        if (this.f1216b) {
            m13913c();
        }
        int m13981R = this.f1215a.m13981R();
        int m13980S = this.f1215a.m13980S();
        ((WidgetRun) this.f1215a.f1134d).h.d(m13981R);
        ((WidgetRun) this.f1215a.f1136e).h.d(m13980S);
        m13903m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (m13937t == dimensionBehaviour || m13937t2 == dimensionBehaviour) {
            boolean z5 = z4;
            if (z4) {
                Iterator<WidgetRun> it2 = this.f1219e.iterator();
                while (true) {
                    z5 = z4;
                    if (it2.hasNext()) {
                        if (!it2.next().m()) {
                            z5 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z5 && m13937t == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f1215a.m13950m0(ConstraintWidget.DimensionBehaviour.FIXED);
                d dVar2 = this.f1215a;
                dVar2.m13998F0(m13911e(dVar2, 0));
                d dVar3 = this.f1215a;
                ((WidgetRun) dVar3.f1134d).e.d(dVar3.m13982Q());
            }
            if (z5 && m13937t2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f1215a.m14006B0(ConstraintWidget.DimensionBehaviour.FIXED);
                d dVar4 = this.f1215a;
                dVar4.m13958i0(m13911e(dVar4, 1));
                d dVar5 = this.f1215a;
                ((WidgetRun) dVar5.f1136e).e.d(dVar5.m13931w());
            }
        }
        d dVar6 = this.f1215a;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = dVar6.f1113L;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int m13982Q = dVar6.m13982Q() + m13981R;
            ((WidgetRun) this.f1215a.f1134d).i.d(m13982Q);
            ((WidgetRun) this.f1215a.f1134d).e.d(m13982Q - m13981R);
            m13903m();
            d dVar7 = this.f1215a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar7.f1113L;
            if (dimensionBehaviourArr2[1] == dimensionBehaviour3 || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m13931w = dVar7.m13931w() + m13980S;
                ((WidgetRun) this.f1215a.f1136e).i.d(m13931w);
                ((WidgetRun) this.f1215a.f1136e).e.d(m13931w - m13980S);
            }
            m13903m();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<WidgetRun> it3 = this.f1219e.iterator();
        while (it3.hasNext()) {
            WidgetRun next = it3.next();
            if (next.b != this.f1215a || next.g) {
                next.e();
            }
        }
        Iterator<WidgetRun> it4 = this.f1219e.iterator();
        while (true) {
            z3 = true;
            if (!it4.hasNext()) {
                break;
            }
            WidgetRun next2 = it4.next();
            if (z2 || next2.b != this.f1215a) {
                if (!next2.h.j || ((!next2.i.j && !(next2 instanceof g)) || (!((DependencyNode) next2.e).j && !(next2 instanceof c) && !(next2 instanceof g)))) {
                    break;
                }
            }
        }
        z3 = false;
        this.f1215a.m13950m0(m13937t);
        this.f1215a.m14006B0(m13937t2);
        return z3;
    }

    /* renamed from: g */
    public boolean m13909g(boolean z) {
        if (this.f1216b) {
            Iterator it = ((k) this.f1215a).D0.iterator();
            while (it.hasNext()) {
                ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
                constraintWidget.f1128a = false;
                i iVar = constraintWidget.f1134d;
                ((DependencyNode) ((WidgetRun) iVar).e).j = false;
                ((WidgetRun) iVar).g = false;
                iVar.r();
                k kVar = constraintWidget.f1136e;
                ((DependencyNode) ((WidgetRun) kVar).e).j = false;
                ((WidgetRun) kVar).g = false;
                kVar.q();
            }
            d dVar = this.f1215a;
            dVar.f1128a = false;
            i iVar2 = dVar.f1134d;
            ((DependencyNode) ((WidgetRun) iVar2).e).j = false;
            ((WidgetRun) iVar2).g = false;
            iVar2.r();
            k kVar2 = this.f1215a.f1136e;
            ((DependencyNode) ((WidgetRun) kVar2).e).j = false;
            ((WidgetRun) kVar2).g = false;
            kVar2.q();
            m13913c();
        }
        if (m13914b(this.f1218d)) {
            return false;
        }
        this.f1215a.m13996G0(0);
        this.f1215a.m13994H0(0);
        ((WidgetRun) this.f1215a.f1134d).h.d(0);
        ((WidgetRun) this.f1215a.f1136e).h.d(0);
        return true;
    }

    /* renamed from: h */
    public boolean m13908h(boolean z, int i) {
        boolean z2;
        boolean z3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z4;
        int i2;
        f fVar;
        boolean z5 = z & true;
        ConstraintWidget.DimensionBehaviour m13937t = this.f1215a.m13937t(0);
        ConstraintWidget.DimensionBehaviour m13937t2 = this.f1215a.m13937t(1);
        int m13981R = this.f1215a.m13981R();
        int m13980S = this.f1215a.m13980S();
        if (z5 && (m13937t == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || m13937t2 == dimensionBehaviour)) {
            Iterator<WidgetRun> it = this.f1219e.iterator();
            while (true) {
                z4 = z5;
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun next = it.next();
                if (next.f == i && !next.m()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && m13937t == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f1215a.m13950m0(ConstraintWidget.DimensionBehaviour.FIXED);
                    d dVar = this.f1215a;
                    dVar.m13998F0(m13911e(dVar, 0));
                    d dVar2 = this.f1215a;
                    fVar = ((WidgetRun) dVar2.f1134d).e;
                    i2 = dVar2.m13982Q();
                    fVar.d(i2);
                }
            } else if (z4 && m13937t2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f1215a.m14006B0(ConstraintWidget.DimensionBehaviour.FIXED);
                d dVar3 = this.f1215a;
                dVar3.m13958i0(m13911e(dVar3, 1));
                d dVar4 = this.f1215a;
                fVar = ((WidgetRun) dVar4.f1136e).e;
                i2 = dVar4.m13931w();
                fVar.d(i2);
            }
        }
        d dVar5 = this.f1215a;
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = dVar5.f1113L;
            if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m13982Q = dVar5.m13982Q() + m13981R;
                ((WidgetRun) this.f1215a.f1134d).i.d(m13982Q);
                ((WidgetRun) this.f1215a.f1134d).e.d(m13982Q - m13981R);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar5.f1113L;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int m13931w = dVar5.m13931w() + m13980S;
                ((WidgetRun) this.f1215a.f1136e).i.d(m13931w);
                ((WidgetRun) this.f1215a.f1136e).e.d(m13931w - m13980S);
                z2 = true;
            }
            z2 = false;
        }
        m13903m();
        Iterator<WidgetRun> it2 = this.f1219e.iterator();
        while (it2.hasNext()) {
            WidgetRun next2 = it2.next();
            if (next2.f == i && (next2.b != this.f1215a || next2.g)) {
                next2.e();
            }
        }
        Iterator<WidgetRun> it3 = this.f1219e.iterator();
        while (true) {
            z3 = true;
            if (!it3.hasNext()) {
                break;
            }
            WidgetRun next3 = it3.next();
            if (next3.f == i && (z2 || next3.b != this.f1215a)) {
                if (!next3.h.j || !next3.i.j || (!(next3 instanceof c) && !((DependencyNode) next3.e).j)) {
                    break;
                }
            }
        }
        z3 = false;
        this.f1215a.m13950m0(m13937t);
        this.f1215a.m14006B0(m13937t2);
        return z3;
    }

    /* renamed from: j */
    public void m13906j() {
        this.f1216b = true;
    }

    /* renamed from: k */
    public void m13905k() {
        this.f1217c = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x000b A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13903m() {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0209e.m13903m():void");
    }

    /* renamed from: n */
    public void m13902n(C0205b.AbstractC0207b abstractC0207b) {
        this.f1220f = abstractC0207b;
    }
}
