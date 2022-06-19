package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun.class */
public class VerticalWidgetRun extends WidgetRun {
    public DependencyNode baseline = new DependencyNode(this);
    DimensionDependency baselineDimension = null;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun$1.class */
    static /* synthetic */ class C01951 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$solver$widgets$analyzer$WidgetRun$RunType */
        static final /* synthetic */ int[] f46xbf6f0c8e;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f46xbf6f0c8e = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f46xbf6f0c8e[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f46xbf6f0c8e[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.type = DependencyNode.Type.TOP;
        this.end.type = DependencyNode.Type.BOTTOM;
        this.baseline.type = DependencyNode.Type.BASELINE;
        this.orientation = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void apply() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        if (this.widget.measured) {
            this.dimension.resolve(this.widget.getHeight());
        }
        if (!this.dimension.resolved) {
            this.dimensionBehavior = this.widget.getVerticalDimensionBehaviour();
            if (this.widget.hasBaseline()) {
                this.baselineDimension = new BaselineDimensionDependency(this);
            }
            if (this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent2 = this.widget.getParent()) != null && parent2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int height = parent2.getHeight();
                    int margin = this.widget.mTop.getMargin();
                    int margin2 = this.widget.mBottom.getMargin();
                    addTarget(this.start, parent2.verticalRun.start, this.widget.mTop.getMargin());
                    addTarget(this.end, parent2.verticalRun.end, -this.widget.mBottom.getMargin());
                    this.dimension.resolve((height - margin) - margin2);
                    return;
                } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.dimension.resolve(this.widget.getHeight());
                }
            }
        } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent = this.widget.getParent()) != null && parent.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
            addTarget(this.start, parent.verticalRun.start, this.widget.mTop.getMargin());
            addTarget(this.end, parent.verticalRun.end, -this.widget.mBottom.getMargin());
            return;
        }
        if (this.dimension.resolved && this.widget.measured) {
            if (this.widget.mListAnchors[2].mTarget != null && this.widget.mListAnchors[3].mTarget != null) {
                if (this.widget.isInVerticalChain()) {
                    this.start.margin = this.widget.mListAnchors[2].getMargin();
                    this.end.margin = -this.widget.mListAnchors[3].getMargin();
                } else {
                    DependencyNode target = getTarget(this.widget.mListAnchors[2]);
                    if (target != null) {
                        addTarget(this.start, target, this.widget.mListAnchors[2].getMargin());
                    }
                    DependencyNode target2 = getTarget(this.widget.mListAnchors[3]);
                    if (target2 != null) {
                        addTarget(this.end, target2, -this.widget.mListAnchors[3].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                }
                if (!this.widget.hasBaseline()) {
                    return;
                }
                addTarget(this.baseline, this.start, this.widget.getBaselineDistance());
                return;
            } else if (this.widget.mListAnchors[2].mTarget != null) {
                DependencyNode target3 = getTarget(this.widget.mListAnchors[2]);
                if (target3 == null) {
                    return;
                }
                addTarget(this.start, target3, this.widget.mListAnchors[2].getMargin());
                addTarget(this.end, this.start, this.dimension.value);
                if (!this.widget.hasBaseline()) {
                    return;
                }
                addTarget(this.baseline, this.start, this.widget.getBaselineDistance());
                return;
            } else if (this.widget.mListAnchors[3].mTarget != null) {
                DependencyNode target4 = getTarget(this.widget.mListAnchors[3]);
                if (target4 != null) {
                    addTarget(this.end, target4, -this.widget.mListAnchors[3].getMargin());
                    addTarget(this.start, this.end, -this.dimension.value);
                }
                if (!this.widget.hasBaseline()) {
                    return;
                }
                addTarget(this.baseline, this.start, this.widget.getBaselineDistance());
                return;
            } else if (this.widget.mListAnchors[4].mTarget != null) {
                DependencyNode target5 = getTarget(this.widget.mListAnchors[4]);
                if (target5 == null) {
                    return;
                }
                addTarget(this.baseline, target5, 0);
                addTarget(this.start, this.baseline, -this.widget.getBaselineDistance());
                addTarget(this.end, this.start, this.dimension.value);
                return;
            } else if ((this.widget instanceof Helper) || this.widget.getParent() == null || this.widget.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                return;
            } else {
                addTarget(this.start, this.widget.getParent().verticalRun.start, this.widget.getY());
                addTarget(this.end, this.start, this.dimension.value);
                if (!this.widget.hasBaseline()) {
                    return;
                }
                addTarget(this.baseline, this.start, this.widget.getBaselineDistance());
                return;
            }
        }
        if (this.dimension.resolved || this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            this.dimension.addDependency(this);
        } else {
            int i = this.widget.mMatchConstraintDefaultHeight;
            if (i == 2) {
                ConstraintWidget parent3 = this.widget.getParent();
                if (parent3 != null) {
                    DimensionDependency dimensionDependency = parent3.verticalRun.dimension;
                    this.dimension.targets.add(dimensionDependency);
                    dimensionDependency.dependencies.add(this.dimension);
                    this.dimension.delegateToWidgetRun = true;
                    this.dimension.dependencies.add(this.start);
                    this.dimension.dependencies.add(this.end);
                }
            } else if (i == 3 && !this.widget.isInVerticalChain() && this.widget.mMatchConstraintDefaultWidth != 3) {
                DimensionDependency dimensionDependency2 = this.widget.horizontalRun.dimension;
                this.dimension.targets.add(dimensionDependency2);
                dimensionDependency2.dependencies.add(this.dimension);
                this.dimension.delegateToWidgetRun = true;
                this.dimension.dependencies.add(this.start);
                this.dimension.dependencies.add(this.end);
            }
        }
        if (this.widget.mListAnchors[2].mTarget != null && this.widget.mListAnchors[3].mTarget != null) {
            if (this.widget.isInVerticalChain()) {
                this.start.margin = this.widget.mListAnchors[2].getMargin();
                this.end.margin = -this.widget.mListAnchors[3].getMargin();
            } else {
                DependencyNode target6 = getTarget(this.widget.mListAnchors[2]);
                DependencyNode target7 = getTarget(this.widget.mListAnchors[3]);
                target6.addDependency(this);
                target7.addDependency(this);
                this.mRunType = WidgetRun.RunType.CENTER;
            }
            if (this.widget.hasBaseline()) {
                addTarget(this.baseline, this.start, 1, this.baselineDimension);
            }
        } else if (this.widget.mListAnchors[2].mTarget != null) {
            DependencyNode target8 = getTarget(this.widget.mListAnchors[2]);
            if (target8 != null) {
                addTarget(this.start, target8, this.widget.mListAnchors[2].getMargin());
                addTarget(this.end, this.start, 1, this.dimension);
                if (this.widget.hasBaseline()) {
                    addTarget(this.baseline, this.start, 1, this.baselineDimension);
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.widget.getDimensionRatio() > 0.0f && this.widget.horizontalRun.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.widget.horizontalRun.dimension.dependencies.add(this.dimension);
                    this.dimension.targets.add(this.widget.horizontalRun.dimension);
                    this.dimension.updateDelegate = this;
                }
            }
        } else if (this.widget.mListAnchors[3].mTarget != null) {
            DependencyNode target9 = getTarget(this.widget.mListAnchors[3]);
            if (target9 != null) {
                addTarget(this.end, target9, -this.widget.mListAnchors[3].getMargin());
                addTarget(this.start, this.end, -1, this.dimension);
                if (this.widget.hasBaseline()) {
                    addTarget(this.baseline, this.start, 1, this.baselineDimension);
                }
            }
        } else if (this.widget.mListAnchors[4].mTarget != null) {
            DependencyNode target10 = getTarget(this.widget.mListAnchors[4]);
            if (target10 != null) {
                addTarget(this.baseline, target10, 0);
                addTarget(this.start, this.baseline, -1, this.baselineDimension);
                addTarget(this.end, this.start, 1, this.dimension);
            }
        } else if (!(this.widget instanceof Helper) && this.widget.getParent() != null) {
            addTarget(this.start, this.widget.getParent().verticalRun.start, this.widget.getY());
            addTarget(this.end, this.start, 1, this.dimension);
            if (this.widget.hasBaseline()) {
                addTarget(this.baseline, this.start, 1, this.baselineDimension);
            }
            if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.widget.getDimensionRatio() > 0.0f && this.widget.horizontalRun.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.widget.horizontalRun.dimension.dependencies.add(this.dimension);
                this.dimension.targets.add(this.widget.horizontalRun.dimension);
                this.dimension.updateDelegate = this;
            }
        }
        if (this.dimension.targets.size() != 0) {
            return;
        }
        this.dimension.readyToSolve = true;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        if (this.start.resolved) {
            this.widget.setY(this.start.value);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void clear() {
        this.runGroup = null;
        this.start.clear();
        this.end.clear();
        this.baseline.clear();
        this.dimension.clear();
        this.resolved = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void reset() {
        this.resolved = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.baseline.clear();
        this.baseline.resolved = false;
        this.dimension.resolved = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.mMatchConstraintDefaultHeight == 0;
    }

    public String toString() {
        return "VerticalRun " + this.widget.getDebugName();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        float f;
        float f2;
        float f3;
        int i2 = C01951.f46xbf6f0c8e[this.mRunType.ordinal()];
        if (i2 == 1) {
            updateRunStart(dependency);
        } else if (i2 == 2) {
            updateRunEnd(dependency);
        } else if (i2 == 3) {
            updateRunCenter(dependency, this.widget.mTop, this.widget.mBottom, 1);
            return;
        }
        if (this.dimension.readyToSolve && !this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i3 = this.widget.mMatchConstraintDefaultHeight;
            if (i3 == 2) {
                ConstraintWidget parent = this.widget.getParent();
                if (parent != null && parent.verticalRun.dimension.resolved) {
                    this.dimension.resolve((int) ((parent.verticalRun.dimension.value * this.widget.mMatchConstraintPercentHeight) + 0.5f));
                }
            } else if (i3 == 3 && this.widget.horizontalRun.dimension.resolved) {
                int dimensionRatioSide = this.widget.getDimensionRatioSide();
                if (dimensionRatioSide == -1) {
                    f3 = this.widget.horizontalRun.dimension.value;
                    f2 = this.widget.getDimensionRatio();
                } else if (dimensionRatioSide == 0) {
                    f = this.widget.horizontalRun.dimension.value * this.widget.getDimensionRatio();
                    i = (int) (f + 0.5f);
                    this.dimension.resolve(i);
                } else if (dimensionRatioSide != 1) {
                    i = 0;
                    this.dimension.resolve(i);
                } else {
                    f3 = this.widget.horizontalRun.dimension.value;
                    f2 = this.widget.getDimensionRatio();
                }
                f = f3 / f2;
                i = (int) (f + 0.5f);
                this.dimension.resolve(i);
            }
        }
        if (!this.start.readyToSolve || !this.end.readyToSolve) {
            return;
        }
        if (this.start.resolved && this.end.resolved && this.dimension.resolved) {
            return;
        }
        if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.widget.mMatchConstraintDefaultWidth == 0 && !this.widget.isInVerticalChain()) {
            DependencyNode dependencyNode = this.start.targets.get(0);
            DependencyNode dependencyNode2 = this.end.targets.get(0);
            int i4 = dependencyNode.value + this.start.margin;
            int i5 = dependencyNode2.value + this.end.margin;
            this.start.resolve(i4);
            this.end.resolve(i5);
            this.dimension.resolve(i5 - i4);
            return;
        }
        if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.targets.size() > 0 && this.end.targets.size() > 0) {
            int i6 = (this.end.targets.get(0).value + this.end.margin) - (this.start.targets.get(0).value + this.start.margin);
            if (i6 < this.dimension.wrapValue) {
                this.dimension.resolve(i6);
            } else {
                this.dimension.resolve(this.dimension.wrapValue);
            }
        }
        if (!this.dimension.resolved || this.start.targets.size() <= 0 || this.end.targets.size() <= 0) {
            return;
        }
        DependencyNode dependencyNode3 = this.start.targets.get(0);
        DependencyNode dependencyNode4 = this.end.targets.get(0);
        int i7 = dependencyNode3.value + this.start.margin;
        int i8 = dependencyNode4.value + this.end.margin;
        float verticalBiasPercent = this.widget.getVerticalBiasPercent();
        if (dependencyNode3 == dependencyNode4) {
            i7 = dependencyNode3.value;
            i8 = dependencyNode4.value;
            verticalBiasPercent = 0.5f;
        }
        this.start.resolve((int) (i7 + 0.5f + (((i8 - i7) - this.dimension.value) * verticalBiasPercent)));
        this.end.resolve(this.start.value + this.dimension.value);
    }
}
