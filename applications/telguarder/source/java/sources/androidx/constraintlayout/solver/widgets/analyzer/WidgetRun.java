package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun.class */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$1.class */
    public static /* synthetic */ class C01961 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f48x4c44d048;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f48x4c44d048 = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f48x4c44d048[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f48x4c44d048[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f48x4c44d048[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f48x4c44d048[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType.class */
    public enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    private void resolveDimension(int i, int i2) {
        int i3 = this.matchConstraintsType;
        if (i3 == 0) {
            this.dimension.resolve(getLimitedDimension(i2, i));
        } else if (i3 == 1) {
            this.dimension.resolve(Math.min(getLimitedDimension(this.dimension.wrapValue, i), i2));
        } else if (i3 == 2) {
            ConstraintWidget parent = this.widget.getParent();
            if (parent == null) {
                return;
            }
            HorizontalWidgetRun horizontalWidgetRun = i == 0 ? parent.horizontalRun : parent.verticalRun;
            if (!horizontalWidgetRun.dimension.resolved) {
                return;
            }
            ConstraintWidget constraintWidget = this.widget;
            this.dimension.resolve(getLimitedDimension((int) ((horizontalWidgetRun.dimension.value * (i == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i));
        } else if (i3 != 3) {
        } else {
            if (this.widget.horizontalRun.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.widget.horizontalRun.matchConstraintsType == 3 && this.widget.verticalRun.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.widget.verticalRun.matchConstraintsType == 3) {
                return;
            }
            ConstraintWidget constraintWidget2 = this.widget;
            VerticalWidgetRun verticalWidgetRun = i == 0 ? constraintWidget2.verticalRun : constraintWidget2.horizontalRun;
            if (!verticalWidgetRun.dimension.resolved) {
                return;
            }
            float dimensionRatio = this.widget.getDimensionRatio();
            this.dimension.resolve(i == 1 ? (int) ((verticalWidgetRun.dimension.value / dimensionRatio) + 0.5f) : (int) ((dimensionRatio * verticalWidgetRun.dimension.value) + 0.5f));
        }
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = i;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = i;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    public abstract void apply();

    public abstract void applyToWidget();

    public abstract void clear();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
        if (r5 != r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r5 != r4) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getLimitedDimension(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L2c
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.widget
            int r0 = r0.mMatchConstraintMaxWidth
            r6 = r0
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.widget
            int r0 = r0.mMatchConstraintMinWidth
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L22
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L22:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L53
            goto L51
        L2c:
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.widget
            int r0 = r0.mMatchConstraintMaxHeight
            r6 = r0
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.widget
            int r0 = r0.mMatchConstraintMinHeight
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r6
            if (r0 <= 0) goto L4a
            r0 = r6
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L4a:
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L53
        L51:
            r0 = r5
            r6 = r0
        L53:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun.getLimitedDimension(int, int):int");
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        int i = C01961.f48x4c44d048[constraintAnchor.mTarget.mType.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : constraintWidget.verticalRun.end : constraintWidget.verticalRun.baseline : constraintWidget.verticalRun.start : constraintWidget.horizontalRun.end : constraintWidget.horizontalRun.start;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        DependencyNode dependencyNode;
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        HorizontalWidgetRun horizontalWidgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i2 = C01961.f48x4c44d048[constraintAnchor.mTarget.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        dependencyNode = null;
                        return dependencyNode;
                    }
                }
            }
            dependencyNode = horizontalWidgetRun.end;
            return dependencyNode;
        }
        dependencyNode = horizontalWidgetRun.start;
        return dependencyNode;
    }

    public long getWrapDimension() {
        if (this.dimension.resolved) {
            return this.dimension.value;
        }
        return 0L;
    }

    public boolean isCenterConnection() {
        int i;
        int size = this.start.targets.size();
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= size) {
                break;
            }
            int i4 = i;
            if (this.start.targets.get(i2).run != this) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        int size2 = this.end.targets.size();
        int i5 = i;
        int i6 = 0;
        while (i6 < size2) {
            int i7 = i5;
            if (this.end.targets.get(i6).run != this) {
                i7 = i5 + 1;
            }
            i6++;
            i5 = i7;
        }
        if (i5 >= 2) {
            z = true;
        }
        return z;
    }

    public boolean isDimensionResolved() {
        return this.dimension.resolved;
    }

    public boolean isResolved() {
        return this.resolved;
    }

    abstract void reset();

    public abstract boolean supportsWrapComputation();

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (!target.resolved || !target2.resolved) {
            return;
        }
        int margin = target.value + constraintAnchor.getMargin();
        int margin2 = target2.value - constraintAnchor2.getMargin();
        int i2 = margin2 - margin;
        if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            resolveDimension(i, i2);
        }
        if (!this.dimension.resolved) {
            return;
        }
        if (this.dimension.value == i2) {
            this.start.resolve(margin);
            this.end.resolve(margin2);
            return;
        }
        ConstraintWidget constraintWidget = this.widget;
        float horizontalBiasPercent = i == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
        int i3 = margin;
        if (target == target2) {
            i3 = target.value;
            margin2 = target2.value;
            horizontalBiasPercent = 0.5f;
        }
        this.start.resolve((int) (i3 + 0.5f + (((margin2 - i3) - this.dimension.value) * horizontalBiasPercent)));
        this.end.resolve(this.start.value + this.dimension.value);
    }

    public void updateRunEnd(Dependency dependency) {
    }

    public void updateRunStart(Dependency dependency) {
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    public long wrapSize(int i) {
        char c;
        int i2;
        if (this.dimension.resolved) {
            long j = this.dimension.value;
            if (isCenterConnection()) {
                i2 = this.start.margin - this.end.margin;
            } else if (i != 0) {
                c = j - this.end.margin;
                return c;
            } else {
                i2 = this.start.margin;
            }
            c = j + i2;
            return c;
        }
        return 0L;
    }
}
