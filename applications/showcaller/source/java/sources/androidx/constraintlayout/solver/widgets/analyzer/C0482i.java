package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/i.class */
public class C0482i extends WidgetRun {
    public C0482i(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.f2136f.mo33889f();
        constraintWidget.f2138g.mo33889f();
        this.f2215f = ((C0496f) constraintWidget).m33782f1();
    }

    /* renamed from: q */
    private void m33900q(DependencyNode dependencyNode) {
        this.f2217h.f2199k.add(dependencyNode);
        dependencyNode.f2200l.add(this.f2217h);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    public void mo33892a(AbstractC0477d abstractC0477d) {
        DependencyNode dependencyNode = this.f2217h;
        if (dependencyNode.f2191c && !dependencyNode.f2198j) {
            this.f2217h.mo33914d((int) ((dependencyNode.f2200l.get(0).f2195g * ((C0496f) this.f2211b).m33775i1()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo33891d() {
        C0496f c0496f = (C0496f) this.f2211b;
        int m33780g1 = c0496f.m33780g1();
        int m33777h1 = c0496f.m33777h1();
        c0496f.m33775i1();
        if (c0496f.m33782f1() == 1) {
            if (m33780g1 != -1) {
                this.f2217h.f2200l.add(this.f2211b.f2123W.f2136f.f2217h);
                this.f2211b.f2123W.f2136f.f2217h.f2199k.add(this.f2217h);
                this.f2217h.f2194f = m33780g1;
            } else if (m33777h1 != -1) {
                this.f2217h.f2200l.add(this.f2211b.f2123W.f2136f.f2218i);
                this.f2211b.f2123W.f2136f.f2218i.f2199k.add(this.f2217h);
                this.f2217h.f2194f = -m33777h1;
            } else {
                DependencyNode dependencyNode = this.f2217h;
                dependencyNode.f2190b = true;
                dependencyNode.f2200l.add(this.f2211b.f2123W.f2136f.f2218i);
                this.f2211b.f2123W.f2136f.f2218i.f2199k.add(this.f2217h);
            }
            m33900q(this.f2211b.f2136f.f2217h);
            m33900q(this.f2211b.f2136f.f2218i);
            return;
        }
        if (m33780g1 != -1) {
            this.f2217h.f2200l.add(this.f2211b.f2123W.f2138g.f2217h);
            this.f2211b.f2123W.f2138g.f2217h.f2199k.add(this.f2217h);
            this.f2217h.f2194f = m33780g1;
        } else if (m33777h1 != -1) {
            this.f2217h.f2200l.add(this.f2211b.f2123W.f2138g.f2218i);
            this.f2211b.f2123W.f2138g.f2218i.f2199k.add(this.f2217h);
            this.f2217h.f2194f = -m33777h1;
        } else {
            DependencyNode dependencyNode2 = this.f2217h;
            dependencyNode2.f2190b = true;
            dependencyNode2.f2200l.add(this.f2211b.f2123W.f2138g.f2218i);
            this.f2211b.f2123W.f2138g.f2218i.f2199k.add(this.f2217h);
        }
        m33900q(this.f2211b.f2138g.f2217h);
        m33900q(this.f2211b.f2138g.f2218i);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo33890e() {
        if (((C0496f) this.f2211b).m33782f1() == 1) {
            this.f2211b.m34002Z0(this.f2217h.f2195g);
        } else {
            this.f2211b.m34000a1(this.f2217h.f2195g);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo33889f() {
        this.f2217h.m33948c();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo33888m() {
        return false;
    }
}
