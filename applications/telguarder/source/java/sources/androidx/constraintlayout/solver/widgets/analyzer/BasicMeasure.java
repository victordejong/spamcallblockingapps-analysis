package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure.class */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer constraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure.class */
    public static class Measure {
        public static int SELF_DIMENSIONS = 0;
        public static int TRY_GIVEN_DIMENSIONS = 1;
        public static int USE_GIVEN_DIMENSIONS = 2;
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer.class */
    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.constraintWidgetContainer = constraintWidgetContainer;
    }

    private boolean measure(Measurer measurer, ConstraintWidget constraintWidget, int i) {
        this.mMeasure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        this.mMeasure.measuredNeedsSolverPass = false;
        this.mMeasure.measureStrategy = i;
        boolean z = this.mMeasure.horizontalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z2 = this.mMeasure.verticalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        if (z3 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            this.mMeasure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z4 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            this.mMeasure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, this.mMeasure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        this.mMeasure.measureStrategy = Measure.SELF_DIMENSIONS;
        return this.mMeasure.measuredNeedsSolverPass;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0156, code lost:
        if (r0 == androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureChildren(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r7) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.measureChildren(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):void");
    }

    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, String str, int i, int i2) {
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i);
        constraintWidgetContainer.setHeight(i2);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.constraintWidgetContainer.layout();
    }

    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        boolean z2;
        int i11;
        int i12;
        boolean z3;
        boolean z4;
        int i13;
        boolean z5;
        boolean z6;
        boolean z7;
        int i14;
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        int size = constraintWidgetContainer.mChildren.size();
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean enabled = Optimizer.enabled(i, 128);
        boolean z8 = enabled || Optimizer.enabled(i, 64);
        boolean z9 = z8;
        if (z8) {
            int i15 = 0;
            while (true) {
                z9 = z8;
                if (i15 >= size) {
                    break;
                }
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i15);
                boolean z10 = (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.getDimensionRatio() > 0.0f;
                if ((!constraintWidget.isInHorizontalChain() || !z10) && ((!constraintWidget.isInVerticalChain() || !z10) && !(constraintWidget instanceof VirtualLayout) && !constraintWidget.isInHorizontalChain() && !constraintWidget.isInVerticalChain())) {
                    i15++;
                }
            }
            z9 = false;
        }
        if (z9 && LinearSystem.sMetrics != null) {
            LinearSystem.sMetrics.measures++;
        }
        boolean z11 = z9 & ((i4 == 1073741824 && i6 == 1073741824) || enabled);
        if (z11) {
            int min = Math.min(constraintWidgetContainer.getMaxWidth(), i5);
            int min2 = Math.min(constraintWidgetContainer.getMaxHeight(), i7);
            if (i4 == 1073741824 && constraintWidgetContainer.getWidth() != min) {
                constraintWidgetContainer.setWidth(min);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i6 == 1073741824 && constraintWidgetContainer.getHeight() != min2) {
                constraintWidgetContainer.setHeight(min2);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z7 = constraintWidgetContainer.directMeasure(enabled);
                i14 = 2;
            } else {
                z7 = constraintWidgetContainer.directMeasureSetup(enabled);
                if (i4 == 1073741824) {
                    z7 &= constraintWidgetContainer.directMeasureWithOrientation(enabled, 0);
                    i14 = 1;
                } else {
                    i14 = 0;
                }
                if (i6 == 1073741824) {
                    z7 = constraintWidgetContainer.directMeasureWithOrientation(enabled, 1) & z7;
                    i14++;
                }
            }
            z = z7;
            i10 = i14;
            if (z7) {
                constraintWidgetContainer.updateFromRuns(i4 == 1073741824, i6 == 1073741824);
                z = z7;
                i10 = i14;
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (!z || i10 != 2) {
            int optimizationLevel = constraintWidgetContainer.getOptimizationLevel();
            if (size > 0) {
                measureChildren(constraintWidgetContainer);
            }
            updateHierarchy(constraintWidgetContainer);
            int size2 = this.mVariableDimensionsWidgets.size();
            if (size > 0) {
                solveLinearSystem(constraintWidgetContainer, "First pass", width, height);
            }
            if (size2 > 0) {
                boolean z12 = constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z13 = constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                int max = Math.max(constraintWidgetContainer.getWidth(), this.constraintWidgetContainer.getMinWidth());
                int max2 = Math.max(constraintWidgetContainer.getHeight(), this.constraintWidgetContainer.getMinHeight());
                int i16 = 0;
                boolean z14 = false;
                while (true) {
                    z2 = z14;
                    if (i16 >= size2) {
                        break;
                    }
                    ConstraintWidget constraintWidget2 = this.mVariableDimensionsWidgets.get(i16);
                    if (!(constraintWidget2 instanceof VirtualLayout)) {
                        z6 = z2;
                    } else {
                        int width2 = constraintWidget2.getWidth();
                        int height2 = constraintWidget2.getHeight();
                        boolean measure = measure(measurer, constraintWidget2, Measure.TRY_GIVEN_DIMENSIONS) | z2;
                        if (constraintWidgetContainer.mMetrics != null) {
                            constraintWidgetContainer.mMetrics.measuredMatchWidgets++;
                        }
                        int width3 = constraintWidget2.getWidth();
                        int height3 = constraintWidget2.getHeight();
                        if (width3 != width2) {
                            constraintWidget2.setWidth(width3);
                            int i17 = max;
                            if (z12) {
                                i17 = max;
                                if (constraintWidget2.getRight() > max) {
                                    i17 = Math.max(max, constraintWidget2.getRight() + constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                                }
                            }
                            measure = true;
                            max = i17;
                        }
                        int i18 = max2;
                        if (height3 != height2) {
                            constraintWidget2.setHeight(height3);
                            i18 = max2;
                            if (z13) {
                                i18 = max2;
                                if (constraintWidget2.getBottom() > max2) {
                                    i18 = Math.max(max2, constraintWidget2.getBottom() + constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                                }
                            }
                            measure = true;
                        }
                        z6 = measure | ((VirtualLayout) constraintWidget2).needSolverPass();
                        max2 = i18;
                    }
                    i16++;
                    z14 = z6;
                }
                int i19 = 0;
                while (true) {
                    i11 = max;
                    i12 = max2;
                    z3 = z2;
                    if (i19 >= 2) {
                        break;
                    }
                    int i20 = 0;
                    boolean z15 = z2;
                    int i21 = size2;
                    while (i20 < i21) {
                        ConstraintWidget constraintWidget3 = this.mVariableDimensionsWidgets.get(i20);
                        if ((!(constraintWidget3 instanceof Helper) || (constraintWidget3 instanceof VirtualLayout)) && !(constraintWidget3 instanceof Guideline) && constraintWidget3.getVisibility() != 8 && ((!z11 || !constraintWidget3.horizontalRun.dimension.resolved || !constraintWidget3.verticalRun.dimension.resolved) && !(constraintWidget3 instanceof VirtualLayout))) {
                            int width4 = constraintWidget3.getWidth();
                            int height4 = constraintWidget3.getHeight();
                            int baselineDistance = constraintWidget3.getBaselineDistance();
                            int i22 = Measure.TRY_GIVEN_DIMENSIONS;
                            if (i19 == 1) {
                                i22 = Measure.USE_GIVEN_DIMENSIONS;
                            }
                            z5 = measure(measurer, constraintWidget3, i22) | z15;
                            if (constraintWidgetContainer.mMetrics != null) {
                                constraintWidgetContainer.mMetrics.measuredMatchWidgets++;
                            }
                            int width5 = constraintWidget3.getWidth();
                            int height5 = constraintWidget3.getHeight();
                            int i23 = max;
                            if (width5 != width4) {
                                constraintWidget3.setWidth(width5);
                                i23 = max;
                                if (z12) {
                                    i23 = max;
                                    if (constraintWidget3.getRight() > max) {
                                        i23 = Math.max(max, constraintWidget3.getRight() + constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                                    }
                                }
                                z5 = true;
                            }
                            int i24 = max2;
                            if (height5 != height4) {
                                constraintWidget3.setHeight(height5);
                                i24 = max2;
                                if (z13) {
                                    i24 = max2;
                                    if (constraintWidget3.getBottom() > max2) {
                                        i24 = Math.max(max2, constraintWidget3.getBottom() + constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                                    }
                                }
                                z5 = true;
                            }
                            if (!constraintWidget3.hasBaseline() || baselineDistance == constraintWidget3.getBaselineDistance()) {
                                max2 = i24;
                                i13 = i23;
                            } else {
                                z5 = true;
                                i13 = i23;
                                max2 = i24;
                            }
                        } else {
                            i13 = max;
                            z5 = z15;
                        }
                        i20++;
                        max = i13;
                        z15 = z5;
                    }
                    i11 = max;
                    i12 = max2;
                    z3 = z15;
                    if (!z15) {
                        break;
                    }
                    solveLinearSystem(constraintWidgetContainer, "intermediate pass", width, height);
                    i19++;
                    size2 = i21;
                    z2 = false;
                }
                if (z3) {
                    solveLinearSystem(constraintWidgetContainer, "2nd pass", width, height);
                    if (constraintWidgetContainer.getWidth() < i11) {
                        constraintWidgetContainer.setWidth(i11);
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (constraintWidgetContainer.getHeight() < i12) {
                        constraintWidgetContainer.setHeight(i12);
                        z4 = true;
                    }
                    if (z4) {
                        solveLinearSystem(constraintWidgetContainer, "3rd pass", width, height);
                    }
                }
            }
            constraintWidgetContainer.setOptimizationLevel(optimizationLevel);
            return 0L;
        }
        return 0L;
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mVariableDimensionsWidgets.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i);
            if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.mVariableDimensionsWidgets.add(constraintWidget);
            }
        }
        constraintWidgetContainer.invalidateGraph();
    }
}
