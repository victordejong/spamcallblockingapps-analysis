package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0493d;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.l */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/l.class */
public class C0486l {

    /* renamed from: a */
    public static int f2257a;

    /* renamed from: d */
    WidgetRun f2260d;

    /* renamed from: e */
    WidgetRun f2261e;

    /* renamed from: g */
    int f2263g;

    /* renamed from: h */
    int f2264h;

    /* renamed from: b */
    public int f2258b = 0;

    /* renamed from: c */
    public boolean f2259c = false;

    /* renamed from: f */
    ArrayList<WidgetRun> f2262f = new ArrayList<>();

    public C0486l(WidgetRun widgetRun, int i) {
        this.f2260d = null;
        this.f2261e = null;
        this.f2263g = 0;
        int i2 = f2257a;
        this.f2263g = i2;
        f2257a = i2 + 1;
        this.f2260d = widgetRun;
        this.f2261e = widgetRun;
        this.f2264h = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: c */
    private long m33894c(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.f2192d;
        if (widgetRun instanceof C0483j) {
            return j;
        }
        int size = dependencyNode.f2199k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0477d abstractC0477d = dependencyNode.f2199k.get(i);
            char c3 = c;
            if (abstractC0477d instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) abstractC0477d;
                c3 = dependencyNode2.f2192d == widgetRun ? c : Math.min((long) c, m33894c(dependencyNode2, dependencyNode2.f2194f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.f2218i) {
            long mo33932j = widgetRun.mo33932j();
            DependencyNode dependencyNode3 = widgetRun.f2217h;
            long j2 = j - mo33932j;
            c4 = Math.min(Math.min((long) c, m33894c(dependencyNode3, j2)), j2 - widgetRun.f2217h.f2194f);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: d */
    private long m33893d(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.f2192d;
        if (widgetRun instanceof C0483j) {
            return j;
        }
        int size = dependencyNode.f2199k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0477d abstractC0477d = dependencyNode.f2199k.get(i);
            char c3 = c;
            if (abstractC0477d instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) abstractC0477d;
                c3 = dependencyNode2.f2192d == widgetRun ? c : Math.max((long) c, m33893d(dependencyNode2, dependencyNode2.f2194f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.f2217h) {
            long mo33932j = widgetRun.mo33932j();
            DependencyNode dependencyNode3 = widgetRun.f2218i;
            long j2 = j + mo33932j;
            c4 = Math.max(Math.max((long) c, m33893d(dependencyNode3, j2)), j2 - widgetRun.f2218i.f2194f);
        }
        return c4;
    }

    /* renamed from: a */
    public void m33896a(WidgetRun widgetRun) {
        this.f2262f.add(widgetRun);
        this.f2261e = widgetRun;
    }

    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* renamed from: b */
    public long m33895b(C0493d c0493d, int i) {
        char c;
        char c2;
        int i2;
        WidgetRun widgetRun;
        DependencyNode dependencyNode;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun2;
        WidgetRun widgetRun3 = this.f2260d;
        char c3 = 0;
        if (widgetRun3 instanceof C0476c) {
            if (((C0476c) widgetRun3).f2215f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun3 instanceof C0484k)) {
                return 0L;
            }
        } else if (!(widgetRun3 instanceof C0487m)) {
            return 0L;
        }
        DependencyNode dependencyNode3 = (i == 0 ? c0493d.f2136f : c0493d.f2138g).f2217h;
        DependencyNode dependencyNode4 = (i == 0 ? c0493d.f2136f : c0493d.f2138g).f2218i;
        boolean contains = widgetRun3.f2217h.f2200l.contains(dependencyNode3);
        boolean contains2 = this.f2260d.f2218i.f2200l.contains(dependencyNode4);
        long mo33932j = this.f2260d.mo33932j();
        if (!contains || !contains2) {
            if (contains) {
                c = Math.max(m33893d(this.f2260d.f2217h, dependencyNode2.f2194f), this.f2260d.f2217h.f2194f + mo33932j);
            } else if (contains2) {
                c = Math.max(-m33894c(this.f2260d.f2218i, dependencyNode.f2194f), (-this.f2260d.f2218i.f2194f) + mo33932j);
            } else {
                c2 = widgetRun.f2217h.f2194f + this.f2260d.mo33932j();
                i2 = this.f2260d.f2218i.f2194f;
            }
            return c;
        }
        long m33893d = m33893d(this.f2260d.f2217h, 0L);
        long m33894c = m33894c(this.f2260d.f2218i, 0L);
        ?? r0 = m33893d - mo33932j;
        WidgetRun widgetRun4 = this.f2260d;
        int i3 = widgetRun4.f2218i.f2194f;
        char c4 = r0;
        if (r0 >= (-i3)) {
            c4 = r0 + i3;
        }
        long j = -m33894c;
        int i4 = widgetRun4.f2217h.f2194f;
        ?? r02 = (j - mo33932j) - i4;
        char c5 = r02;
        if (r02 >= i4) {
            c5 = r02 - i4;
        }
        float m33976r = widgetRun4.f2211b.m33976r(i);
        if (m33976r > 0.0f) {
            c3 = (c5 / m33976r) + (c4 / (1.0f - m33976r));
        }
        float f = c3;
        long j2 = (f * m33976r) + 0.5f;
        long j3 = (f * (1.0f - m33976r)) + 0.5f;
        c2 = widgetRun2.f2217h.f2194f + j2 + mo33932j + j3;
        i2 = this.f2260d.f2218i.f2194f;
        c = c2 - i2;
        return c;
    }
}
