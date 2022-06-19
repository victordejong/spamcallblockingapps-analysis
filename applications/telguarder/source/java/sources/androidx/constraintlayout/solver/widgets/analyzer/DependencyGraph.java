package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/DependencyGraph.class */
public class DependencyGraph {
    private static final boolean USE_GROUPS = true;
    private ConstraintWidgetContainer container;
    private ConstraintWidgetContainer mContainer;
    private boolean mNeedBuildGraph = true;
    private boolean mNeedRedoMeasures = true;
    private ArrayList<WidgetRun> mRuns = new ArrayList<>();
    private ArrayList<RunGroup> runGroups = new ArrayList<>();
    private BasicMeasure.Measurer mMeasurer = null;
    private BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    ArrayList<RunGroup> mGroups = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.container = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    private void applyGroup(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun.runGroup != null || widgetRun == this.container.horizontalRun || widgetRun == this.container.verticalRun) {
            return;
        }
        RunGroup runGroup2 = runGroup;
        if (runGroup == null) {
            runGroup2 = new RunGroup(widgetRun, i2);
            arrayList.add(runGroup2);
        }
        widgetRun.runGroup = runGroup2;
        runGroup2.add(widgetRun);
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, 0, dependencyNode2, arrayList, runGroup2);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, 1, dependencyNode2, arrayList, runGroup2);
            }
        }
        if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, 2, dependencyNode2, arrayList, runGroup2);
                }
            }
        }
        for (DependencyNode dependencyNode3 : widgetRun.start.targets) {
            if (dependencyNode3 == dependencyNode2) {
                runGroup2.dual = true;
            }
            applyGroup(dependencyNode3, i, 0, dependencyNode2, arrayList, runGroup2);
        }
        for (DependencyNode dependencyNode4 : widgetRun.end.targets) {
            if (dependencyNode4 == dependencyNode2) {
                runGroup2.dual = true;
            }
            applyGroup(dependencyNode4, i, 1, dependencyNode2, arrayList, runGroup2);
        }
        if (i != 1 || !(widgetRun instanceof VerticalWidgetRun)) {
            return;
        }
        for (DependencyNode dependencyNode5 : ((VerticalWidgetRun) widgetRun).baseline.targets) {
            applyGroup(dependencyNode5, i, 2, dependencyNode2, arrayList, runGroup2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0106, code lost:
        if (r0.mRight.mTarget == null) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean basicMeasureWidgets(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r8) {
        /*
            Method dump skipped, instructions count: 1510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.basicMeasureWidgets(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        int size = this.mGroups.size();
        char c = 0;
        for (int i2 = 0; i2 < size; i2++) {
            c = Math.max((long) c, this.mGroups.get(i2).computeWrapSize(constraintWidgetContainer, i));
        }
        return c;
    }

    private void displayGraph() {
        Iterator<WidgetRun> it = this.mRuns.iterator();
        String str = "digraph {\n";
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                PrintStream printStream = System.out;
                printStream.println("content:<<\n" + (str2 + "\n}\n") + "\n>>");
                return;
            }
            str = generateDisplayGraph(it.next(), str2);
        }
    }

    private void findGroup(WidgetRun widgetRun, int i, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i, 1, widgetRun.start, arrayList, null);
            }
        }
        if (i == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private String generateChainDisplayGraph(ChainRun chainRun, String str) {
        String str2;
        String str3;
        int i = chainRun.orientation;
        String str4 = "cluster_" + chainRun.widget.getDebugName();
        if (i == 0) {
            str2 = str4 + "_h";
        } else {
            str2 = str4 + "_v";
        }
        String str5 = "subgraph " + str2 + " {\n";
        Iterator<WidgetRun> it = chainRun.widgets.iterator();
        String str6 = "";
        while (true) {
            String str7 = str6;
            if (!it.hasNext()) {
                return str + str7 + (str5 + "}\n");
            }
            WidgetRun next = it.next();
            String debugName = next.widget.getDebugName();
            if (i == 0) {
                str3 = debugName + "_HORIZONTAL";
            } else {
                str3 = debugName + "_VERTICAL";
            }
            str5 = str5 + str3 + ";\n";
            str6 = generateDisplayGraph(next, str7);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d4, code lost:
        if (((androidx.constraintlayout.solver.widgets.analyzer.ChainRun) r9).orientation == 1) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String generateDisplayGraph(androidx.constraintlayout.solver.widgets.analyzer.WidgetRun r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 829
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.generateDisplayGraph(androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, java.lang.String):java.lang.String");
    }

    private String generateDisplayNode(DependencyNode dependencyNode, boolean z, String str) {
        String str2;
        Iterator<DependencyNode> it = dependencyNode.targets.iterator();
        String str3 = str;
        while (true) {
            String str4 = str3;
            if (it.hasNext()) {
                DependencyNode next = it.next();
                String str5 = ("\n" + dependencyNode.name()) + " -> " + next.name();
                if (dependencyNode.margin <= 0 && !z) {
                    str2 = str5;
                    if (!(dependencyNode.run instanceof HelperReferences)) {
                        str3 = str4 + (str2 + "\n");
                    }
                }
                String str6 = str5 + "[";
                String str7 = str6;
                if (dependencyNode.margin > 0) {
                    String str8 = str6 + "label=\"" + dependencyNode.margin + "\"";
                    str7 = str8;
                    if (z) {
                        str7 = str8 + ",";
                    }
                }
                String str9 = str7;
                if (z) {
                    str9 = str7 + " style=dashed ";
                }
                String str10 = str9;
                if (dependencyNode.run instanceof HelperReferences) {
                    str10 = str9 + " style=bold,color=gray ";
                }
                str2 = str10 + "]";
                str3 = str4 + (str2 + "\n");
            } else {
                return str4;
            }
        }
    }

    private boolean isCenteredConnection(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        int i = 0;
        for (DependencyNode dependencyNode3 : dependencyNode.targets) {
            if (dependencyNode3 != dependencyNode2) {
                i++;
            }
        }
        int i2 = 0;
        for (DependencyNode dependencyNode4 : dependencyNode2.targets) {
            if (dependencyNode4 != dependencyNode) {
                i2++;
            }
        }
        boolean z = false;
        if (i > 0) {
            z = false;
            if (i2 > 0) {
                z = true;
            }
        }
        return z;
    }

    private void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        this.mMeasure.horizontalBehavior = dimensionBehaviour;
        this.mMeasure.verticalBehavior = dimensionBehaviour2;
        this.mMeasure.horizontalDimension = i;
        this.mMeasure.verticalDimension = i2;
        this.mMeasurer.measure(constraintWidget, this.mMeasure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    private String nodeDefinition(WidgetRun widgetRun) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z = widgetRun instanceof VerticalWidgetRun;
        String debugName = widgetRun.widget.getDebugName();
        ConstraintWidget constraintWidget = widgetRun.widget;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = !z ? constraintWidget.getHorizontalDimensionBehaviour() : constraintWidget.getVerticalDimensionBehaviour();
        RunGroup runGroup = widgetRun.runGroup;
        if (!z) {
            str = debugName + "_HORIZONTAL";
        } else {
            str = debugName + "_VERTICAL";
        }
        String str6 = ((str + " [shape=none, label=<") + "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">") + "  <TR>";
        if (!z) {
            String str7 = str6 + "    <TD ";
            String str8 = str7;
            if (widgetRun.start.resolved) {
                str8 = str7 + " BGCOLOR=\"green\"";
            }
            str2 = str8 + " PORT=\"LEFT\" BORDER=\"1\">L</TD>";
        } else {
            String str9 = str6 + "    <TD ";
            String str10 = str9;
            if (widgetRun.start.resolved) {
                str10 = str9 + " BGCOLOR=\"green\"";
            }
            str2 = str10 + " PORT=\"TOP\" BORDER=\"1\">T</TD>";
        }
        String str11 = str2 + "    <TD BORDER=\"1\" ";
        if (widgetRun.dimension.resolved && !widgetRun.widget.measured) {
            str3 = str11 + " BGCOLOR=\"green\" ";
        } else if (!widgetRun.dimension.resolved || !widgetRun.widget.measured) {
            str3 = str11;
            if (!widgetRun.dimension.resolved) {
                str3 = str11;
                if (widgetRun.widget.measured) {
                    str3 = str11 + " BGCOLOR=\"yellow\" ";
                }
            }
        } else {
            str3 = str11 + " BGCOLOR=\"lightgray\" ";
        }
        String str12 = str3;
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            str12 = str3 + "style=\"dashed\"";
        }
        if (runGroup != null) {
            str4 = " [" + (runGroup.groupIndex + 1) + "/" + RunGroup.index + "]";
        } else {
            str4 = "";
        }
        String str13 = str12 + SimpleComparison.GREATER_THAN_OPERATION + debugName + str4 + " </TD>";
        if (!z) {
            String str14 = str13 + "    <TD ";
            String str15 = str14;
            if (widgetRun.end.resolved) {
                str15 = str14 + " BGCOLOR=\"green\"";
            }
            str5 = str15 + " PORT=\"RIGHT\" BORDER=\"1\">R</TD>";
        } else {
            String str16 = str13 + "    <TD ";
            String str17 = str16;
            if (z) {
                str17 = str16;
                if (((VerticalWidgetRun) widgetRun).baseline.resolved) {
                    str17 = str16 + " BGCOLOR=\"green\"";
                }
            }
            String str18 = (str17 + " PORT=\"BASELINE\" BORDER=\"1\">b</TD>") + "    <TD ";
            String str19 = str18;
            if (widgetRun.end.resolved) {
                str19 = str18 + " BGCOLOR=\"green\"";
            }
            str5 = str19 + " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>";
        }
        return (str5 + "  </TR></TABLE>") + ">];\n";
    }

    public void buildGraph() {
        buildGraph(this.mRuns);
        this.mGroups.clear();
        RunGroup.index = 0;
        findGroup(this.container.horizontalRun, 0, this.mGroups);
        findGroup(this.container.verticalRun, 1, this.mGroups);
        this.mNeedBuildGraph = false;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        HashSet hashSet;
        arrayList.clear();
        this.mContainer.horizontalRun.clear();
        this.mContainer.verticalRun.clear();
        arrayList.add(this.mContainer.horizontalRun);
        arrayList.add(this.mContainer.verticalRun);
        Iterator<ConstraintWidget> it = this.mContainer.mChildren.iterator();
        HashSet hashSet2 = null;
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            if (next instanceof Guideline) {
                arrayList.add(new GuidelineReference(next));
            } else {
                if (next.isInHorizontalChain()) {
                    if (next.horizontalChainRun == null) {
                        next.horizontalChainRun = new ChainRun(next, 0);
                    }
                    HashSet hashSet3 = hashSet2;
                    if (hashSet2 == null) {
                        hashSet3 = new HashSet();
                    }
                    hashSet3.add(next.horizontalChainRun);
                    hashSet2 = hashSet3;
                } else {
                    arrayList.add(next.horizontalRun);
                }
                if (next.isInVerticalChain()) {
                    if (next.verticalChainRun == null) {
                        next.verticalChainRun = new ChainRun(next, 1);
                    }
                    hashSet = hashSet2;
                    if (hashSet2 == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.verticalChainRun);
                } else {
                    arrayList.add(next.verticalRun);
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
            it2.next().clear();
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.widget != this.mContainer) {
                next2.apply();
            }
        }
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.mNeedBuildGraph) {
            buildGraph();
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            boolean z = false;
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.isTerminalWidget[0] = true;
                next.isTerminalWidget[1] = true;
                if (next instanceof Barrier) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Iterator<RunGroup> it2 = this.mGroups.iterator();
            while (it2.hasNext()) {
                it2.next().defineTerminalWidgets(dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT, dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        }
    }

    public boolean directMeasure(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = z & true;
        if (this.mNeedBuildGraph || this.mNeedRedoMeasures) {
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.ensureWidgetRuns();
                next.measured = false;
                next.horizontalRun.reset();
                next.verticalRun.reset();
            }
            this.container.ensureWidgetRuns();
            this.container.measured = false;
            this.container.horizontalRun.reset();
            this.container.verticalRun.reset();
            this.mNeedRedoMeasures = false;
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.container.setX(0);
        this.container.setY(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.container.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.container.getDimensionBehaviour(1);
        if (this.mNeedBuildGraph) {
            buildGraph();
        }
        int x = this.container.getX();
        int y = this.container.getY();
        this.container.horizontalRun.start.resolve(x);
        this.container.verticalRun.start.resolve(y);
        measureWidgets();
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            boolean z5 = z4;
            if (z4) {
                Iterator<WidgetRun> it2 = this.mRuns.iterator();
                while (true) {
                    z5 = z4;
                    if (it2.hasNext()) {
                        if (!it2.next().supportsWrapComputation()) {
                            z5 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z5 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer = this.container;
                constraintWidgetContainer.setWidth(computeWrap(constraintWidgetContainer, 0));
                this.container.horizontalRun.dimension.resolve(this.container.getWidth());
            }
            if (z5 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                constraintWidgetContainer2.setHeight(computeWrap(constraintWidgetContainer2, 1));
                this.container.verticalRun.dimension.resolve(this.container.getHeight());
            }
        }
        if (this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int width = this.container.getWidth() + x;
            this.container.horizontalRun.end.resolve(width);
            this.container.horizontalRun.dimension.resolve(width - x);
            measureWidgets();
            if (this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = this.container.getHeight() + y;
                this.container.verticalRun.end.resolve(height);
                this.container.verticalRun.dimension.resolve(height - y);
            }
            measureWidgets();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<WidgetRun> it3 = this.mRuns.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.widget != this.container || next2.resolved) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it4 = this.mRuns.iterator();
        while (true) {
            z3 = true;
            if (!it4.hasNext()) {
                break;
            }
            WidgetRun next3 = it4.next();
            if (z2 || next3.widget != this.container) {
                if (!next3.start.resolved || ((!next3.end.resolved && !(next3 instanceof GuidelineReference)) || (!next3.dimension.resolved && !(next3 instanceof ChainRun) && !(next3 instanceof GuidelineReference)))) {
                    break;
                }
            }
        }
        z3 = false;
        this.container.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.container.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z3;
    }

    public boolean directMeasureSetup(boolean z) {
        if (this.mNeedBuildGraph) {
            Iterator<ConstraintWidget> it = this.container.mChildren.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.ensureWidgetRuns();
                next.measured = false;
                next.horizontalRun.dimension.resolved = false;
                next.horizontalRun.resolved = false;
                next.horizontalRun.reset();
                next.verticalRun.dimension.resolved = false;
                next.verticalRun.resolved = false;
                next.verticalRun.reset();
            }
            this.container.ensureWidgetRuns();
            this.container.measured = false;
            this.container.horizontalRun.dimension.resolved = false;
            this.container.horizontalRun.resolved = false;
            this.container.horizontalRun.reset();
            this.container.verticalRun.dimension.resolved = false;
            this.container.verticalRun.resolved = false;
            this.container.verticalRun.reset();
            buildGraph();
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.container.setX(0);
        this.container.setY(0);
        this.container.horizontalRun.start.resolve(0);
        this.container.verticalRun.start.resolve(0);
        return true;
    }

    public boolean directMeasureWithOrientation(boolean z, int i) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = z & true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.container.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.container.getDimensionBehaviour(1);
        int x = this.container.getX();
        int y = this.container.getY();
        if (z5 && (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
            Iterator<WidgetRun> it = this.mRuns.iterator();
            while (true) {
                z4 = z5;
                if (!it.hasNext()) {
                    break;
                }
                WidgetRun next = it.next();
                if (next.orientation == i && !next.supportsWrapComputation()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.container.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.container;
                    constraintWidgetContainer.setWidth(computeWrap(constraintWidgetContainer, 0));
                    this.container.horizontalRun.dimension.resolve(this.container.getWidth());
                }
            } else if (z4 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                constraintWidgetContainer2.setHeight(computeWrap(constraintWidgetContainer2, 1));
                this.container.verticalRun.dimension.resolve(this.container.getHeight());
            }
        }
        if (i == 0) {
            if (this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = this.container.getWidth() + x;
                this.container.horizontalRun.end.resolve(width);
                this.container.horizontalRun.dimension.resolve(width - x);
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || this.container.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = this.container.getHeight() + y;
                this.container.verticalRun.end.resolve(height);
                this.container.verticalRun.dimension.resolve(height - y);
                z2 = true;
            }
            z2 = false;
        }
        measureWidgets();
        Iterator<WidgetRun> it2 = this.mRuns.iterator();
        while (it2.hasNext()) {
            WidgetRun next2 = it2.next();
            if (next2.orientation == i && (next2.widget != this.container || next2.resolved)) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it3 = this.mRuns.iterator();
        while (true) {
            z3 = true;
            if (!it3.hasNext()) {
                break;
            }
            WidgetRun next3 = it3.next();
            if (next3.orientation == i && (z2 || next3.widget != this.container)) {
                if (!next3.start.resolved || !next3.end.resolved || (!(next3 instanceof ChainRun) && !next3.dimension.resolved)) {
                    break;
                }
            }
        }
        z3 = false;
        this.container.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.container.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z3;
    }

    public void invalidateGraph() {
        this.mNeedBuildGraph = true;
    }

    public void invalidateMeasures() {
        this.mNeedRedoMeasures = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
        if (r0 == 1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measureWidgets() {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph.measureWidgets():void");
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
    }
}
