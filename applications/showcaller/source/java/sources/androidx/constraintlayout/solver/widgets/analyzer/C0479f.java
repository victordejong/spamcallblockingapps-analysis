package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/f.class */
public class C0479f extends DependencyNode {

    /* renamed from: m */
    public int f2253m;

    public C0479f(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof C0484k) {
            this.f2193e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f2193e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.DependencyNode
    /* renamed from: d */
    public void mo33914d(int i) {
        if (this.f2198j) {
            return;
        }
        this.f2198j = true;
        this.f2195g = i;
        for (AbstractC0477d abstractC0477d : this.f2199k) {
            abstractC0477d.mo33892a(abstractC0477d);
        }
    }
}
