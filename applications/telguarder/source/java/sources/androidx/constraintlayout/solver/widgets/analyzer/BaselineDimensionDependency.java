package androidx.constraintlayout.solver.widgets.analyzer;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency.class */
class BaselineDimensionDependency extends DimensionDependency {
    public BaselineDimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
    }

    public void update(DependencyNode dependencyNode) {
        ((VerticalWidgetRun) this.run).baseline.margin = this.run.widget.getBaselineDistance();
        this.resolved = true;
    }
}
