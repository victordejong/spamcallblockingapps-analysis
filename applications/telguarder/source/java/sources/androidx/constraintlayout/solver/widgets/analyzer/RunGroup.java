package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/RunGroup.class */
public class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i) {
        this.firstRun = null;
        this.lastRun = null;
        this.groupIndex = 0;
        int i2 = index;
        this.groupIndex = i2;
        index = i2 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i) {
        if (!widgetRun.widget.isTerminalWidget[i]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode = (DependencyNode) dependency;
                if (dependencyNode.run != widgetRun && dependencyNode == dependencyNode.run.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                        while (it.hasNext()) {
                            defineTerminalWidget(it.next(), i);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i] = false;
                    }
                    defineTerminalWidget(dependencyNode.run, i);
                }
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency2;
                if (dependencyNode2.run != widgetRun && dependencyNode2 == dependencyNode2.run.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                        while (it2.hasNext()) {
                            defineTerminalWidget(it2.next(), i);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i] = false;
                    }
                    defineTerminalWidget(dependencyNode2.run, i);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    private long traverseEnd(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.dependencies.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            Dependency dependency = dependencyNode.dependencies.get(i);
            char c3 = c;
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                c3 = dependencyNode2.run == widgetRun ? c : Math.min((long) c, traverseEnd(dependencyNode2, dependencyNode2.margin + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = widgetRun.getWrapDimension();
            DependencyNode dependencyNode3 = widgetRun.start;
            long j2 = j - wrapDimension;
            c4 = Math.min(Math.min((long) c, traverseEnd(dependencyNode3, j2)), j2 - widgetRun.start.margin);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    private long traverseStart(DependencyNode dependencyNode, long j) {
        char c;
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.dependencies.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            Dependency dependency = dependencyNode.dependencies.get(i);
            char c3 = c;
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                c3 = dependencyNode2.run == widgetRun ? c : Math.max((long) c, traverseStart(dependencyNode2, dependencyNode2.margin + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = widgetRun.getWrapDimension();
            DependencyNode dependencyNode3 = widgetRun.end;
            long j2 = j + wrapDimension;
            c4 = Math.max(Math.max((long) c, traverseStart(dependencyNode3, j2)), j2 - widgetRun.end.margin);
        }
        return c4;
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        char c;
        char c2;
        int i2;
        WidgetRun widgetRun = this.firstRun;
        char c3 = 0;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = i == 0 ? constraintWidgetContainer.horizontalRun.start : constraintWidgetContainer.verticalRun.start;
        DependencyNode dependencyNode2 = i == 0 ? constraintWidgetContainer.horizontalRun.end : constraintWidgetContainer.verticalRun.end;
        boolean contains = this.firstRun.start.targets.contains(dependencyNode);
        boolean contains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension = this.firstRun.getWrapDimension();
        if (!contains || !contains2) {
            if (contains) {
                c = Math.max(traverseStart(this.firstRun.start, this.firstRun.start.margin), this.firstRun.start.margin + wrapDimension);
            } else if (contains2) {
                c = Math.max(-traverseEnd(this.firstRun.end, this.firstRun.end.margin), (-this.firstRun.end.margin) + wrapDimension);
            } else {
                c2 = this.firstRun.start.margin + this.firstRun.getWrapDimension();
                i2 = this.firstRun.end.margin;
            }
            return c;
        }
        long traverseStart = traverseStart(this.firstRun.start, 0L);
        long traverseEnd = traverseEnd(this.firstRun.end, 0L);
        ?? r0 = traverseStart - wrapDimension;
        char c4 = r0;
        if (r0 >= (-this.firstRun.end.margin)) {
            c4 = r0 + this.firstRun.end.margin;
        }
        ?? r02 = ((-traverseEnd) - wrapDimension) - this.firstRun.start.margin;
        char c5 = r02;
        if (r02 >= this.firstRun.start.margin) {
            c5 = r02 - this.firstRun.start.margin;
        }
        float biasPercent = this.firstRun.widget.getBiasPercent(i);
        if (biasPercent > 0.0f) {
            c3 = (c5 / biasPercent) + (c4 / (1.0f - biasPercent));
        }
        float f = c3;
        c2 = this.firstRun.start.margin + (f * biasPercent) + 0.5f + wrapDimension + (f * (1.0f - biasPercent)) + 0.5f;
        i2 = this.firstRun.end.margin;
        c = c2 - i2;
        return c;
    }

    public void defineTerminalWidgets(boolean z, boolean z2) {
        if (z) {
            WidgetRun widgetRun = this.firstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z2) {
            WidgetRun widgetRun2 = this.firstRun;
            if (!(widgetRun2 instanceof VerticalWidgetRun)) {
                return;
            }
            defineTerminalWidget(widgetRun2, 1);
        }
    }
}
