package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/Optimizer.class */
public class Optimizer {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyDirectResolutionHorizontalChain(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, ConstraintWidget constraintWidget) {
        int i2;
        float f;
        ConstraintWidget constraintWidget2 = constraintWidget;
        ConstraintWidget constraintWidget3 = null;
        int i3 = 0;
        int i4 = 0;
        float f2 = 0.0f;
        while (true) {
            boolean z = true;
            if (constraintWidget2 == null) {
                break;
            }
            if (constraintWidget2.getVisibility() != 8) {
                z = false;
            }
            i3 = i3;
            i4 = i4;
            f2 = f2;
            if (!z) {
                int i5 = i3 + 1;
                if (constraintWidget2.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4 = i4 + constraintWidget2.getWidth() + (constraintWidget2.mLeft.mTarget != null ? constraintWidget2.mLeft.getMargin() : 0) + (constraintWidget2.mRight.mTarget != null ? constraintWidget2.mRight.getMargin() : 0);
                    i3 = i5;
                    f2 = f2;
                } else {
                    f2 += constraintWidget2.mHorizontalWeight;
                    i4 = i4;
                    i3 = i5;
                }
            }
            ConstraintWidget constraintWidget4 = constraintWidget2.mRight.mTarget != null ? constraintWidget2.mRight.mTarget.mOwner : null;
            constraintWidget2 = constraintWidget4;
            if (constraintWidget4 != null) {
                if (constraintWidget4.mLeft.mTarget != null) {
                    constraintWidget2 = constraintWidget4;
                    if (constraintWidget4.mLeft.mTarget != null) {
                        constraintWidget2 = constraintWidget4;
                        if (constraintWidget4.mLeft.mTarget.mOwner == constraintWidget2) {
                        }
                    }
                }
                constraintWidget2 = null;
            }
            constraintWidget3 = constraintWidget2;
        }
        if (constraintWidget3 != null) {
            int x = constraintWidget3.mRight.mTarget != null ? constraintWidget3.mRight.mTarget.mOwner.getX() : 0;
            i2 = x;
            if (constraintWidget3.mRight.mTarget != null) {
                i2 = x;
                if (constraintWidget3.mRight.mTarget.mOwner == constraintWidgetContainer) {
                    i2 = constraintWidgetContainer.getRight();
                }
            }
        } else {
            i2 = 0;
        }
        float f3 = (i2 - 0) - i4;
        float f4 = f3 / (i3 + 1);
        if (i == 0) {
            f = f4;
        } else {
            f = f3 / i;
            f4 = 0.0f;
        }
        while (constraintWidget != null) {
            int margin = constraintWidget.mLeft.mTarget != null ? constraintWidget.mLeft.getMargin() : 0;
            int margin2 = constraintWidget.mRight.mTarget != null ? constraintWidget.mRight.getMargin() : 0;
            if (constraintWidget.getVisibility() != 8) {
                float f5 = margin;
                float f6 = f4 + f5;
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, (int) (f6 + 0.5f));
                float width = constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? f2 == 0.0f ? f6 + ((f - f5) - margin2) : f6 + ((((constraintWidget.mHorizontalWeight * f3) / f2) - f5) - margin2) : f6 + constraintWidget.getWidth();
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, (int) (0.5f + width));
                float f7 = width;
                if (i == 0) {
                    f7 = width + f;
                }
                f4 = f7 + margin2;
            } else {
                int i6 = (int) ((f4 - (f / 2.0f)) + 0.5f);
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i6);
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, i6);
            }
            ConstraintWidget constraintWidget5 = constraintWidget.mRight.mTarget != null ? constraintWidget.mRight.mTarget.mOwner : null;
            ConstraintWidget constraintWidget6 = constraintWidget5;
            if (constraintWidget5 != null) {
                constraintWidget6 = constraintWidget5;
                if (constraintWidget5.mLeft.mTarget != null) {
                    constraintWidget6 = constraintWidget5;
                    if (constraintWidget5.mLeft.mTarget.mOwner != constraintWidget) {
                        constraintWidget6 = null;
                    }
                }
            }
            constraintWidget = constraintWidget6 == constraintWidgetContainer ? null : constraintWidget6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyDirectResolutionVerticalChain(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, ConstraintWidget constraintWidget) {
        int i2;
        float f;
        ConstraintWidget constraintWidget2 = constraintWidget;
        ConstraintWidget constraintWidget3 = null;
        int i3 = 0;
        int i4 = 0;
        float f2 = 0.0f;
        while (true) {
            boolean z = true;
            if (constraintWidget2 == null) {
                break;
            }
            if (constraintWidget2.getVisibility() != 8) {
                z = false;
            }
            i3 = i3;
            i4 = i4;
            f2 = f2;
            if (!z) {
                int i5 = i3 + 1;
                if (constraintWidget2.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4 = i4 + constraintWidget2.getHeight() + (constraintWidget2.mTop.mTarget != null ? constraintWidget2.mTop.getMargin() : 0) + (constraintWidget2.mBottom.mTarget != null ? constraintWidget2.mBottom.getMargin() : 0);
                    i3 = i5;
                    f2 = f2;
                } else {
                    f2 += constraintWidget2.mVerticalWeight;
                    i4 = i4;
                    i3 = i5;
                }
            }
            ConstraintWidget constraintWidget4 = constraintWidget2.mBottom.mTarget != null ? constraintWidget2.mBottom.mTarget.mOwner : null;
            constraintWidget2 = constraintWidget4;
            if (constraintWidget4 != null) {
                if (constraintWidget4.mTop.mTarget != null) {
                    constraintWidget2 = constraintWidget4;
                    if (constraintWidget4.mTop.mTarget != null) {
                        constraintWidget2 = constraintWidget4;
                        if (constraintWidget4.mTop.mTarget.mOwner == constraintWidget2) {
                        }
                    }
                }
                constraintWidget2 = null;
            }
            constraintWidget3 = constraintWidget2;
        }
        if (constraintWidget3 != null) {
            int x = constraintWidget3.mBottom.mTarget != null ? constraintWidget3.mBottom.mTarget.mOwner.getX() : 0;
            i2 = x;
            if (constraintWidget3.mBottom.mTarget != null) {
                i2 = x;
                if (constraintWidget3.mBottom.mTarget.mOwner == constraintWidgetContainer) {
                    i2 = constraintWidgetContainer.getBottom();
                }
            }
        } else {
            i2 = 0;
        }
        float f3 = (i2 - 0) - i4;
        float f4 = f3 / (i3 + 1);
        if (i == 0) {
            f = f4;
        } else {
            f = f3 / i;
            f4 = 0.0f;
        }
        while (constraintWidget != null) {
            int margin = constraintWidget.mTop.mTarget != null ? constraintWidget.mTop.getMargin() : 0;
            int margin2 = constraintWidget.mBottom.mTarget != null ? constraintWidget.mBottom.getMargin() : 0;
            if (constraintWidget.getVisibility() != 8) {
                float f5 = margin;
                float f6 = f4 + f5;
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, (int) (f6 + 0.5f));
                float height = constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? f2 == 0.0f ? f6 + ((f - f5) - margin2) : f6 + ((((constraintWidget.mVerticalWeight * f3) / f2) - f5) - margin2) : f6 + constraintWidget.getHeight();
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, (int) (0.5f + height));
                float f7 = height;
                if (i == 0) {
                    f7 = height + f;
                }
                f4 = f7 + margin2;
            } else {
                int i6 = (int) ((f4 - (f / 2.0f)) + 0.5f);
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i6);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, i6);
            }
            ConstraintWidget constraintWidget5 = constraintWidget.mBottom.mTarget != null ? constraintWidget.mBottom.mTarget.mOwner : null;
            ConstraintWidget constraintWidget6 = constraintWidget5;
            if (constraintWidget5 != null) {
                constraintWidget6 = constraintWidget5;
                if (constraintWidget5.mTop.mTarget != null) {
                    constraintWidget6 = constraintWidget5;
                    if (constraintWidget5.mTop.mTarget.mOwner != constraintWidget) {
                        constraintWidget6 = null;
                    }
                }
            }
            constraintWidget = constraintWidget6 == constraintWidgetContainer ? null : constraintWidget6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkHorizontalSimpleDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        int i;
        if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            constraintWidget.mHorizontalResolution = 1;
        } else if (constraintWidgetContainer.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            int i2 = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i2);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.setHorizontalDimension(i2, width);
            constraintWidget.mHorizontalResolution = 2;
        } else if (constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null) {
            if (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner == constraintWidgetContainer) {
                int margin = constraintWidget.mLeft.getMargin();
                int width2 = constraintWidget.getWidth() + margin;
                constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, margin);
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width2);
                constraintWidget.mHorizontalResolution = 2;
                constraintWidget.setHorizontalDimension(margin, width2);
            } else if (constraintWidget.mRight.mTarget != null && constraintWidget.mRight.mTarget.mOwner == constraintWidgetContainer) {
                constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                int width3 = constraintWidgetContainer.getWidth() - constraintWidget.mRight.getMargin();
                int width4 = width3 - constraintWidget.getWidth();
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, width4);
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width3);
                constraintWidget.mHorizontalResolution = 2;
                constraintWidget.setHorizontalDimension(width4, width3);
            } else if (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mHorizontalResolution == 2) {
                SolverVariable solverVariable = constraintWidget.mLeft.mTarget.mSolverVariable;
                constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                int margin2 = (int) (solverVariable.computedValue + constraintWidget.mLeft.getMargin() + 0.5f);
                int width5 = constraintWidget.getWidth() + margin2;
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, margin2);
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width5);
                constraintWidget.mHorizontalResolution = 2;
                constraintWidget.setHorizontalDimension(margin2, width5);
            } else if (constraintWidget.mRight.mTarget == null || constraintWidget.mRight.mTarget.mOwner.mHorizontalResolution != 2) {
                boolean z = constraintWidget.mLeft.mTarget != null;
                boolean z2 = constraintWidget.mRight.mTarget != null;
                if (!z && !z2) {
                    if (constraintWidget instanceof Guideline) {
                        Guideline guideline = (Guideline) constraintWidget;
                        if (guideline.getOrientation() == 1) {
                            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                            int relativeBegin = (int) ((guideline.getRelativeBegin() != -1 ? guideline.getRelativeBegin() : guideline.getRelativeEnd() != -1 ? constraintWidgetContainer.getWidth() - guideline.getRelativeEnd() : guideline.getRelativePercent() * constraintWidgetContainer.getWidth()) + 0.5f);
                            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, relativeBegin);
                            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, relativeBegin);
                            constraintWidget.mHorizontalResolution = 2;
                            constraintWidget.mVerticalResolution = 2;
                            constraintWidget.setHorizontalDimension(relativeBegin, relativeBegin);
                            constraintWidget.setVerticalDimension(0, constraintWidgetContainer.getHeight());
                            return;
                        }
                        return;
                    }
                    constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                    constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                    int x = constraintWidget.getX();
                    int width6 = constraintWidget.getWidth();
                    linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, x);
                    linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width6 + x);
                    constraintWidget.mHorizontalResolution = 2;
                }
            } else {
                SolverVariable solverVariable2 = constraintWidget.mRight.mTarget.mSolverVariable;
                constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
                constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
                int margin3 = (int) ((solverVariable2.computedValue - constraintWidget.mRight.getMargin()) + 0.5f);
                int width7 = margin3 - constraintWidget.getWidth();
                linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, width7);
                linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, margin3);
                constraintWidget.mHorizontalResolution = 2;
                constraintWidget.setHorizontalDimension(width7, margin3);
            }
        } else if (constraintWidget.mLeft.mTarget.mOwner == constraintWidgetContainer && constraintWidget.mRight.mTarget.mOwner == constraintWidgetContainer) {
            int margin4 = constraintWidget.mLeft.getMargin();
            int margin5 = constraintWidget.mRight.getMargin();
            if (constraintWidgetContainer.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                i = constraintWidgetContainer.getWidth() - margin5;
            } else {
                margin4 += (int) (((((constraintWidgetContainer.getWidth() - margin4) - margin5) - constraintWidget.getWidth()) * constraintWidget.mHorizontalBiasPercent) + 0.5f);
                i = constraintWidget.getWidth() + margin4;
            }
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, margin4);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, i);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.setHorizontalDimension(margin4, i);
        } else {
            constraintWidget.mHorizontalResolution = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        if (constraintWidgetContainer.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            int i = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.setHorizontalDimension(i, width);
            constraintWidget.mHorizontalResolution = 2;
        }
        if (constraintWidgetContainer.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
            int i2 = constraintWidget.mTop.mMargin;
            int height = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i2);
            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height);
            if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i2);
            }
            constraintWidget.setVerticalDimension(i2, height);
            constraintWidget.mVerticalResolution = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkVerticalSimpleDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        int i;
        boolean z = true;
        if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            constraintWidget.mVerticalResolution = 1;
        } else if (constraintWidgetContainer.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
            int i2 = constraintWidget.mTop.mMargin;
            int height = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i2);
            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height);
            if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i2);
            }
            constraintWidget.setVerticalDimension(i2, height);
            constraintWidget.mVerticalResolution = 2;
        } else if (constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null) {
            if (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner == constraintWidgetContainer) {
                int margin = constraintWidget.mTop.getMargin();
                int height2 = constraintWidget.getHeight() + margin;
                constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, margin);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height2);
                if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                    constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                    linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + margin);
                }
                constraintWidget.mVerticalResolution = 2;
                constraintWidget.setVerticalDimension(margin, height2);
            } else if (constraintWidget.mBottom.mTarget != null && constraintWidget.mBottom.mTarget.mOwner == constraintWidgetContainer) {
                constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                int height3 = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.getMargin();
                int height4 = height3 - constraintWidget.getHeight();
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, height4);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height3);
                if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                    constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                    linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + height4);
                }
                constraintWidget.mVerticalResolution = 2;
                constraintWidget.setVerticalDimension(height4, height3);
            } else if (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mVerticalResolution == 2) {
                SolverVariable solverVariable = constraintWidget.mTop.mTarget.mSolverVariable;
                constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                int margin2 = (int) (solverVariable.computedValue + constraintWidget.mTop.getMargin() + 0.5f);
                int height5 = constraintWidget.getHeight() + margin2;
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, margin2);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height5);
                if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                    constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                    linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + margin2);
                }
                constraintWidget.mVerticalResolution = 2;
                constraintWidget.setVerticalDimension(margin2, height5);
            } else if (constraintWidget.mBottom.mTarget != null && constraintWidget.mBottom.mTarget.mOwner.mVerticalResolution == 2) {
                SolverVariable solverVariable2 = constraintWidget.mBottom.mTarget.mSolverVariable;
                constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                int margin3 = (int) ((solverVariable2.computedValue - constraintWidget.mBottom.getMargin()) + 0.5f);
                int height6 = margin3 - constraintWidget.getHeight();
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, height6);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, margin3);
                if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                    constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                    linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + height6);
                }
                constraintWidget.mVerticalResolution = 2;
                constraintWidget.setVerticalDimension(height6, margin3);
            } else if (constraintWidget.mBaseline.mTarget == null || constraintWidget.mBaseline.mTarget.mOwner.mVerticalResolution != 2) {
                boolean z2 = constraintWidget.mBaseline.mTarget != null;
                boolean z3 = constraintWidget.mTop.mTarget != null;
                if (constraintWidget.mBottom.mTarget == null) {
                    z = false;
                }
                if (!z2 && !z3 && !z) {
                    if (constraintWidget instanceof Guideline) {
                        Guideline guideline = (Guideline) constraintWidget;
                        if (guideline.getOrientation() == 0) {
                            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                            int relativeBegin = (int) ((guideline.getRelativeBegin() != -1 ? guideline.getRelativeBegin() : guideline.getRelativeEnd() != -1 ? constraintWidgetContainer.getHeight() - guideline.getRelativeEnd() : guideline.getRelativePercent() * constraintWidgetContainer.getHeight()) + 0.5f);
                            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, relativeBegin);
                            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, relativeBegin);
                            constraintWidget.mVerticalResolution = 2;
                            constraintWidget.mHorizontalResolution = 2;
                            constraintWidget.setVerticalDimension(relativeBegin, relativeBegin);
                            constraintWidget.setHorizontalDimension(0, constraintWidgetContainer.getWidth());
                            return;
                        }
                        return;
                    }
                    constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                    constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                    int y = constraintWidget.getY();
                    int height7 = constraintWidget.getHeight();
                    linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, y);
                    linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height7 + y);
                    if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                        constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                        linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, y + constraintWidget.mBaselineDistance);
                    }
                    constraintWidget.mVerticalResolution = 2;
                }
            } else {
                SolverVariable solverVariable3 = constraintWidget.mBaseline.mTarget.mSolverVariable;
                constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
                constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
                int i3 = (int) ((solverVariable3.computedValue - constraintWidget.mBaselineDistance) + 0.5f);
                int height8 = constraintWidget.getHeight() + i3;
                linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i3);
                linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height8);
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i3);
                constraintWidget.mVerticalResolution = 2;
                constraintWidget.setVerticalDimension(i3, height8);
            }
        } else if (constraintWidget.mTop.mTarget.mOwner == constraintWidgetContainer && constraintWidget.mBottom.mTarget.mOwner == constraintWidgetContainer) {
            int margin4 = constraintWidget.mTop.getMargin();
            int margin5 = constraintWidget.mBottom.getMargin();
            if (constraintWidgetContainer.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                i = constraintWidget.getHeight() + margin4;
            } else {
                margin4 = (int) (margin4 + ((((constraintWidgetContainer.getHeight() - margin4) - margin5) - constraintWidget.getHeight()) * constraintWidget.mVerticalBiasPercent) + 0.5f);
                i = constraintWidget.getHeight() + margin4;
            }
            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, margin4);
            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, i);
            if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + margin4);
            }
            constraintWidget.mVerticalResolution = 2;
            constraintWidget.setVerticalDimension(margin4, i);
        } else {
            constraintWidget.mVerticalResolution = 1;
        }
    }
}
