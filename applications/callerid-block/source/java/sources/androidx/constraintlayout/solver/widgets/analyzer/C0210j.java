package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.d;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/j.class */
class C0210j {

    /* renamed from: d */
    public static int f1224d;

    /* renamed from: a */
    public boolean f1225a;

    /* renamed from: b */
    WidgetRun f1226b;

    /* renamed from: c */
    ArrayList<WidgetRun> f1227c = new ArrayList<>();

    public C0210j(WidgetRun widgetRun, int i) {
        this.f1226b = null;
        f1224d++;
        this.f1226b = widgetRun;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: c */
    private long m13899c(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.d;
        if (widgetRun instanceof h) {
            return j;
        }
        int size = dependencyNode.k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0208d abstractC0208d = (AbstractC0208d) dependencyNode.k.get(i);
            char c3 = c;
            if (abstractC0208d instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) abstractC0208d;
                c3 = dependencyNode2.d == widgetRun ? c : Math.min((long) c, m13899c(dependencyNode2, dependencyNode2.f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.i) {
            long j2 = widgetRun.j();
            DependencyNode dependencyNode3 = widgetRun.h;
            long j3 = j - j2;
            c4 = Math.min(Math.min((long) c, m13899c(dependencyNode3, j3)), j3 - widgetRun.h.f);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: d */
    private long m13898d(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.d;
        if (widgetRun instanceof h) {
            return j;
        }
        int size = dependencyNode.k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0208d abstractC0208d = (AbstractC0208d) dependencyNode.k.get(i);
            char c3 = c;
            if (abstractC0208d instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) abstractC0208d;
                c3 = dependencyNode2.d == widgetRun ? c : Math.max((long) c, m13898d(dependencyNode2, dependencyNode2.f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.h) {
            long j2 = widgetRun.j();
            DependencyNode dependencyNode3 = widgetRun.i;
            long j3 = j + j2;
            c4 = Math.max(Math.max((long) c, m13898d(dependencyNode3, j3)), j3 - widgetRun.i.f);
        }
        return c4;
    }

    /* renamed from: a */
    public void m13901a(WidgetRun widgetRun) {
        this.f1227c.add(widgetRun);
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* renamed from: b */
    public long m13900b(d dVar, int i) {
        char c;
        char c2;
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode;
        char c3;
        char c4;
        DependencyNode dependencyNode2;
        c cVar = this.f1226b;
        char c5 = 0;
        if (cVar instanceof c) {
            if (((WidgetRun) cVar).f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(cVar instanceof i)) {
                return 0L;
            }
        } else if (!(cVar instanceof k)) {
            return 0L;
        }
        DependencyNode dependencyNode3 = ((WidgetRun) (i == 0 ? dVar.f1134d : dVar.f1136e)).h;
        DependencyNode dependencyNode4 = ((WidgetRun) (i == 0 ? dVar.f1134d : dVar.f1136e)).i;
        boolean contains = ((WidgetRun) cVar).h.l.contains(dependencyNode3);
        boolean contains2 = this.f1226b.i.l.contains(dependencyNode4);
        long j = this.f1226b.j();
        if (!contains || !contains2) {
            if (contains) {
                c4 = m13898d(this.f1226b.h, dependencyNode2.f);
                c3 = this.f1226b.h.f + j;
            } else if (contains2) {
                c3 = (-this.f1226b.i.f) + j;
                c4 = -m13899c(this.f1226b.i, dependencyNode.f);
            } else {
                c2 = widgetRun2.h.f + this.f1226b.j();
                widgetRun = this.f1226b;
            }
            c = Math.max((long) c4, (long) c3);
            return c;
        }
        long m13898d = m13898d(this.f1226b.h, 0L);
        long m13899c = m13899c(this.f1226b.i, 0L);
        ?? r0 = m13898d - j;
        WidgetRun widgetRun3 = this.f1226b;
        int i2 = widgetRun3.i.f;
        char c6 = r0;
        if (r0 >= (-i2)) {
            c6 = r0 + i2;
        }
        long j2 = -m13899c;
        int i3 = widgetRun3.h.f;
        ?? r02 = (j2 - j) - i3;
        char c7 = r02;
        if (r02 >= i3) {
            c7 = r02 - i3;
        }
        float m13945p = widgetRun3.b.m13945p(i);
        if (m13945p > 0.0f) {
            c5 = (c7 / m13945p) + (c6 / (1.0f - m13945p));
        }
        float f = c5;
        widgetRun = this.f1226b;
        c2 = widgetRun.h.f + (f * m13945p) + 0.5f + j + (f * (1.0f - m13945p)) + 0.5f;
        c = c2 - widgetRun.i.f;
        return c;
    }
}
