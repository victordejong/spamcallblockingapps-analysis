package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DimensionDependency.class */
public class DimensionDependency extends DependencyNode {

    /* renamed from: m */
    public int f2408m;

    public DimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof HorizontalWidgetRun) {
            this.f2400e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f2400e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.DependencyNode
    /* renamed from: d */
    public void mo20138d(int i) {
        if (!this.f2405j) {
            this.f2405j = true;
            this.f2402g = i;
            for (Dependency dependency : this.f2406k) {
                dependency.mo20105a(dependency);
            }
        }
    }
}
