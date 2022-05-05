package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Guideline;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/GuidelineReference.class */
public class GuidelineReference extends WidgetRun {
    public GuidelineReference(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.f2240d.mo20100f();
        constraintWidget.f2242e.mo20100f();
        this.f2430f = ((Guideline) constraintWidget).m20212f1();
    }

    /* renamed from: q */
    private void m20124q(DependencyNode dependencyNode) {
        this.f2432h.f2406k.add(dependencyNode);
        dependencyNode.f2407l.add(this.f2432h);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    public void mo20105a(Dependency dependency) {
        DependencyNode dependencyNode = this.f2432h;
        if (dependencyNode.f2398c && !dependencyNode.f2405j) {
            this.f2432h.mo20138d((int) ((dependencyNode.f2407l.get(0).f2402g * ((Guideline) this.f2426b).m20205i1()) + 0.5f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo20102d() {
        Guideline guideline = (Guideline) this.f2426b;
        int g1 = guideline.m20210g1();
        int h1 = guideline.m20207h1();
        guideline.m20205i1();
        if (guideline.m20212f1() == 1) {
            if (g1 != -1) {
                this.f2432h.f2407l.add(this.f2426b.f2228U.f2240d.f2432h);
                this.f2426b.f2228U.f2240d.f2432h.f2406k.add(this.f2432h);
                this.f2432h.f2401f = g1;
            } else if (h1 != -1) {
                this.f2432h.f2407l.add(this.f2426b.f2228U.f2240d.f2433i);
                this.f2426b.f2228U.f2240d.f2433i.f2406k.add(this.f2432h);
                this.f2432h.f2401f = -h1;
            } else {
                DependencyNode dependencyNode = this.f2432h;
                dependencyNode.f2397b = true;
                dependencyNode.f2407l.add(this.f2426b.f2228U.f2240d.f2433i);
                this.f2426b.f2228U.f2240d.f2433i.f2406k.add(this.f2432h);
            }
            m20124q(this.f2426b.f2240d.f2432h);
            m20124q(this.f2426b.f2240d.f2433i);
            return;
        }
        if (g1 != -1) {
            this.f2432h.f2407l.add(this.f2426b.f2228U.f2242e.f2432h);
            this.f2426b.f2228U.f2242e.f2432h.f2406k.add(this.f2432h);
            this.f2432h.f2401f = g1;
        } else if (h1 != -1) {
            this.f2432h.f2407l.add(this.f2426b.f2228U.f2242e.f2433i);
            this.f2426b.f2228U.f2242e.f2433i.f2406k.add(this.f2432h);
            this.f2432h.f2401f = -h1;
        } else {
            DependencyNode dependencyNode2 = this.f2432h;
            dependencyNode2.f2397b = true;
            dependencyNode2.f2407l.add(this.f2426b.f2228U.f2242e.f2433i);
            this.f2426b.f2228U.f2242e.f2433i.f2406k.add(this.f2432h);
        }
        m20124q(this.f2426b.f2242e.f2432h);
        m20124q(this.f2426b.f2242e.f2433i);
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo20101e() {
        if (((Guideline) this.f2426b).m20212f1() == 1) {
            this.f2426b.m20345Z0(this.f2432h.f2402g);
        } else {
            this.f2426b.m20343a1(this.f2432h.f2402g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo20100f() {
        this.f2432h.m20139c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo20093m() {
        return false;
    }
}
