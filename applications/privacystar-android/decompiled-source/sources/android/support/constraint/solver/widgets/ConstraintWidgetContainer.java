package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintWidgetContainer.class */
public class ConstraintWidgetContainer extends WidgetContainer {
    static boolean ALLOW_ROOT_GROUP = true;
    private static final int CHAIN_FIRST = 0;
    private static final int CHAIN_FIRST_VISIBLE = 2;
    private static final int CHAIN_LAST = 1;
    private static final int CHAIN_LAST_VISIBLE = 3;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_OPTIMIZE = false;
    private static final int FLAG_CHAIN_DANGLING = 1;
    private static final int FLAG_CHAIN_OPTIMIZE = 0;
    private static final int FLAG_RECOMPUTE_BOUNDS = 2;
    private static final int MAX_ITERATIONS = 8;
    public static final int OPTIMIZATION_ALL = 2;
    public static final int OPTIMIZATION_BASIC = 4;
    public static final int OPTIMIZATION_CHAIN = 8;
    public static final int OPTIMIZATION_NONE = 1;
    private static final boolean USE_SNAPSHOT = true;
    private static final boolean USE_THREAD = false;
    private boolean[] flags;
    protected LinearSystem mBackgroundSystem;
    private ConstraintWidget[] mChainEnds;
    private boolean mHeightMeasuredTooSmall;
    private ConstraintWidget[] mHorizontalChainsArray;
    private int mHorizontalChainsSize;
    private ConstraintWidget[] mMatchConstraintsChainedWidgets;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    private ConstraintWidget[] mVerticalChainsArray;
    private int mVerticalChainsSize;
    private boolean mWidthMeasuredTooSmall;
    int mWrapHeight;
    int mWrapWidth;

    /* renamed from: android.support.constraint.solver.widgets.ConstraintWidgetContainer$2 */
    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintWidgetContainer$2.class */
    static /* synthetic */ class C00622 {

        /* renamed from: $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f8x1d400623 = new int[ConstraintAnchor.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f8x1d400623[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8x1d400623[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8x1d400623[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8x1d400623[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8x1d400623[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public ConstraintWidgetContainer() {
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2) {
        super(i, i2);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        for (int i = 0; i < this.mHorizontalChainsSize; i++) {
            if (this.mHorizontalChainsArray[i] == constraintWidget) {
                return;
            }
        }
        if (this.mHorizontalChainsSize + 1 >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = constraintWidget;
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget constraintWidget) {
        for (int i = 0; i < this.mVerticalChainsSize; i++) {
            if (this.mVerticalChainsArray[i] == constraintWidget) {
                return;
            }
        }
        if (this.mVerticalChainsSize + 1 >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = constraintWidget;
        this.mVerticalChainsSize++;
    }

    /* JADX WARN: Removed duplicated region for block: B:210:0x0925  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0927 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyHorizontalChain(android.support.constraint.solver.LinearSystem r14) {
        /*
            Method dump skipped, instructions count: 2557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.applyHorizontalChain(android.support.constraint.solver.LinearSystem):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x0978  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x097a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyVerticalChain(android.support.constraint.solver.LinearSystem r14) {
        /*
            Method dump skipped, instructions count: 2640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.applyVerticalChain(android.support.constraint.solver.LinearSystem):void");
    }

    private int countMatchConstraintsChainedWidgets(LinearSystem linearSystem, ConstraintWidget[] constraintWidgetArr, ConstraintWidget constraintWidget, int i, boolean[] zArr) {
        int i2;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        zArr[0] = true;
        zArr[1] = false;
        constraintWidgetArr[0] = null;
        constraintWidgetArr[2] = null;
        constraintWidgetArr[1] = null;
        constraintWidgetArr[3] = null;
        if (i == 0) {
            boolean z = constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mOwner == this;
            constraintWidget.mHorizontalNextWidget = null;
            ConstraintWidget constraintWidget6 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget7 = null;
            ConstraintWidget constraintWidget8 = constraintWidget6;
            int i3 = 0;
            ConstraintWidget constraintWidget9 = constraintWidget;
            while (true) {
                constraintWidget4 = constraintWidget6;
                constraintWidget5 = constraintWidget8;
                i2 = i3;
                if (constraintWidget9.mRight.mTarget == null) {
                    break;
                }
                constraintWidget9.mHorizontalNextWidget = null;
                if (constraintWidget9.getVisibility() != 8) {
                    constraintWidget8 = constraintWidget8;
                    if (constraintWidget8 == null) {
                        constraintWidget8 = constraintWidget9;
                    }
                    if (!(constraintWidget6 == null || constraintWidget6 == constraintWidget9)) {
                        constraintWidget6.mHorizontalNextWidget = constraintWidget9;
                    }
                    constraintWidget6 = constraintWidget9;
                } else {
                    linearSystem.addEquality(constraintWidget9.mLeft.mSolverVariable, constraintWidget9.mLeft.mTarget.mSolverVariable, 0, 5);
                    linearSystem.addEquality(constraintWidget9.mRight.mSolverVariable, constraintWidget9.mLeft.mSolverVariable, 0, 5);
                }
                i2 = i3;
                if (constraintWidget9.getVisibility() != 8) {
                    i2 = i3;
                    if (constraintWidget9.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        if (constraintWidget9.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            zArr[0] = false;
                        }
                        i2 = i3;
                        if (constraintWidget9.mDimensionRatio <= 0.0f) {
                            zArr[0] = false;
                            i2 = i3 + 1;
                            if (i2 >= this.mMatchConstraintsChainedWidgets.length) {
                                this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                            }
                            this.mMatchConstraintsChainedWidgets[i3] = constraintWidget9;
                        }
                    }
                }
                if (constraintWidget9.mRight.mTarget.mOwner.mLeft.mTarget == null) {
                    constraintWidget4 = constraintWidget6;
                    constraintWidget5 = constraintWidget8;
                    break;
                } else if (constraintWidget9.mRight.mTarget.mOwner.mLeft.mTarget.mOwner != constraintWidget9) {
                    constraintWidget4 = constraintWidget6;
                    constraintWidget5 = constraintWidget8;
                    break;
                } else if (constraintWidget9.mRight.mTarget.mOwner == constraintWidget9) {
                    constraintWidget4 = constraintWidget6;
                    constraintWidget5 = constraintWidget8;
                    break;
                } else {
                    constraintWidget7 = constraintWidget9.mRight.mTarget.mOwner;
                    constraintWidget9 = constraintWidget7;
                    i3 = i2;
                }
            }
            boolean z2 = z;
            if (constraintWidget9.mRight.mTarget != null) {
                z2 = z;
                if (constraintWidget9.mRight.mTarget.mOwner != this) {
                    z2 = false;
                }
            }
            if (constraintWidget.mLeft.mTarget == null || constraintWidget7.mRight.mTarget == null) {
                zArr[1] = true;
            }
            constraintWidget.mHorizontalChainFixedPosition = z2;
            constraintWidget7.mHorizontalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget5;
            constraintWidgetArr[1] = constraintWidget7;
            constraintWidgetArr[3] = constraintWidget4;
        } else {
            boolean z3 = constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mOwner == this;
            constraintWidget.mVerticalNextWidget = null;
            ConstraintWidget constraintWidget10 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget11 = null;
            ConstraintWidget constraintWidget12 = constraintWidget10;
            int i4 = 0;
            ConstraintWidget constraintWidget13 = constraintWidget;
            while (true) {
                constraintWidget2 = constraintWidget10;
                constraintWidget3 = constraintWidget12;
                i2 = i4;
                if (constraintWidget13.mBottom.mTarget == null) {
                    break;
                }
                constraintWidget13.mVerticalNextWidget = null;
                if (constraintWidget13.getVisibility() != 8) {
                    constraintWidget10 = constraintWidget10;
                    if (constraintWidget10 == null) {
                        constraintWidget10 = constraintWidget13;
                    }
                    if (!(constraintWidget12 == null || constraintWidget12 == constraintWidget13)) {
                        constraintWidget12.mVerticalNextWidget = constraintWidget13;
                    }
                    constraintWidget12 = constraintWidget13;
                } else {
                    linearSystem.addEquality(constraintWidget13.mTop.mSolverVariable, constraintWidget13.mTop.mTarget.mSolverVariable, 0, 5);
                    linearSystem.addEquality(constraintWidget13.mBottom.mSolverVariable, constraintWidget13.mTop.mSolverVariable, 0, 5);
                }
                if (constraintWidget13.getVisibility() == 8 || constraintWidget13.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i2 = i4;
                } else {
                    if (constraintWidget13.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        zArr[0] = false;
                    }
                    i2 = i4;
                    if (constraintWidget13.mDimensionRatio <= 0.0f) {
                        zArr[0] = false;
                        i2 = i4 + 1;
                        if (i2 >= this.mMatchConstraintsChainedWidgets.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[i4] = constraintWidget13;
                    }
                }
                if (!(constraintWidget13.mBottom.mTarget.mOwner.mTop.mTarget == null || constraintWidget13.mBottom.mTarget.mOwner.mTop.mTarget.mOwner != constraintWidget13 || constraintWidget13.mBottom.mTarget.mOwner == constraintWidget13)) {
                    constraintWidget11 = constraintWidget13.mBottom.mTarget.mOwner;
                    constraintWidget13 = constraintWidget11;
                    i4 = i2;
                }
            }
            constraintWidget2 = constraintWidget10;
            constraintWidget3 = constraintWidget12;
            boolean z4 = z3;
            if (constraintWidget13.mBottom.mTarget != null) {
                z4 = z3;
                if (constraintWidget13.mBottom.mTarget.mOwner != this) {
                    z4 = false;
                }
            }
            if (constraintWidget.mTop.mTarget == null || constraintWidget11.mBottom.mTarget == null) {
                zArr[1] = true;
            }
            constraintWidget.mVerticalChainFixedPosition = z4;
            constraintWidget11.mVerticalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget2;
            constraintWidgetArr[1] = constraintWidget11;
            constraintWidgetArr[3] = constraintWidget3;
        }
        return i2;
    }

    public static ConstraintWidgetContainer createContainer(ConstraintWidgetContainer constraintWidgetContainer, String str, ArrayList<ConstraintWidget> arrayList, int i) {
        Rectangle bounds = getBounds(arrayList);
        if (bounds.width == 0 || bounds.height == 0) {
            return null;
        }
        if (i > 0) {
            int min = Math.min(bounds.f10x, bounds.f11y);
            int i2 = i;
            if (i > min) {
                i2 = min;
            }
            bounds.grow(i2, i2);
        }
        constraintWidgetContainer.setOrigin(bounds.f10x, bounds.f11y);
        constraintWidgetContainer.setDimension(bounds.width, bounds.height);
        constraintWidgetContainer.setDebugName(str);
        ConstraintWidget parent = arrayList.get(0).getParent();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = arrayList.get(i3);
            if (constraintWidget.getParent() == parent) {
                constraintWidgetContainer.add(constraintWidget);
                constraintWidget.setX(constraintWidget.getX() - bounds.f10x);
                constraintWidget.setY(constraintWidget.getY() - bounds.f11y);
            }
        }
        return constraintWidgetContainer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0150, code lost:
        if (r0.mHorizontalResolution == (-1)) goto L_0x0153;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean optimize(android.support.constraint.solver.LinearSystem r5) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.optimize(android.support.constraint.solver.LinearSystem):boolean");
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    static int setGroup(ConstraintAnchor constraintAnchor, int i) {
        int i2 = constraintAnchor.mGroup;
        if (constraintAnchor.mOwner.getParent() == null) {
            return i;
        }
        if (i2 <= i) {
            return i2;
        }
        constraintAnchor.mGroup = i;
        ConstraintAnchor opposite = constraintAnchor.getOpposite();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        int i3 = i;
        if (opposite != null) {
            i3 = setGroup(opposite, i);
        }
        int i4 = i3;
        if (constraintAnchor2 != null) {
            i4 = setGroup(constraintAnchor2, i3);
        }
        int i5 = i4;
        if (opposite != null) {
            i5 = setGroup(opposite, i4);
        }
        constraintAnchor.mGroup = i5;
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            while (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget == constraintWidget.mLeft && constraintWidget.mLeft.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mLeft.mTarget.mOwner;
            }
            addHorizontalChain(constraintWidget);
        } else if (i == 1) {
            while (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget == constraintWidget.mTop && constraintWidget.mTop.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mTop.mTarget.mOwner;
            }
            addVerticalChain(constraintWidget);
        }
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem, int i) {
        boolean z;
        addToSolver(linearSystem, i);
        int size = this.mChildren.size();
        if (this.mOptimizationLevel != 2 && this.mOptimizationLevel != 4) {
            z = true;
        } else if (optimize(linearSystem)) {
            return false;
        } else {
            z = false;
        }
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            if (constraintWidget instanceof ConstraintWidgetContainer) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mHorizontalDimensionBehaviour;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mVerticalDimensionBehaviour;
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.addToSolver(linearSystem, i);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            } else {
                if (z) {
                    Optimizer.checkMatchParent(this, linearSystem, constraintWidget);
                }
                constraintWidget.addToSolver(linearSystem, i);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            applyHorizontalChain(linearSystem);
        }
        if (this.mVerticalChainsSize <= 0) {
            return true;
        }
        applyVerticalChain(linearSystem);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x034d, code lost:
        if (r7.mRight.mTarget.mOwner != r5) goto L_0x0350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0286, code lost:
        if (r8.mLeft.mTarget.mOwner != r5) goto L_0x0289;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void findHorizontalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget r5, boolean[] r6) {
        /*
            Method dump skipped, instructions count: 915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.findHorizontalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget, boolean[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x03fd, code lost:
        if (r8.mTop.mTarget.mOwner != r5) goto L_0x0400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02ff, code lost:
        if (r7.mBottom.mTarget.mOwner != r5) goto L_0x0302;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0422  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void findVerticalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget r5, boolean[] r6) {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.findVerticalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget, boolean[]):void");
    }

    public void findWrapSize(ArrayList<ConstraintWidget> arrayList, boolean[] zArr) {
        int size = arrayList.size();
        zArr[0] = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            ConstraintWidget constraintWidget = arrayList.get(i7);
            if (!constraintWidget.isRoot()) {
                if (!constraintWidget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(constraintWidget, zArr);
                }
                if (!constraintWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(constraintWidget, zArr);
                }
                if (zArr[0]) {
                    int i8 = constraintWidget.mDistToLeft;
                    int i9 = constraintWidget.mDistToRight;
                    int width = constraintWidget.getWidth();
                    int i10 = constraintWidget.mDistToTop;
                    int i11 = constraintWidget.mDistToBottom;
                    int height = constraintWidget.getHeight();
                    int width2 = constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT ? constraintWidget.getWidth() + constraintWidget.mLeft.mMargin + constraintWidget.mRight.mMargin : (i8 + i9) - width;
                    int height2 = constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT ? constraintWidget.getHeight() + constraintWidget.mTop.mMargin + constraintWidget.mBottom.mMargin : (i10 + i11) - height;
                    if (constraintWidget.getVisibility() == 8) {
                        width2 = 0;
                        height2 = 0;
                    }
                    i = Math.max(i, constraintWidget.mDistToLeft);
                    i2 = Math.max(i2, constraintWidget.mDistToRight);
                    i5 = Math.max(i5, constraintWidget.mDistToBottom);
                    i4 = Math.max(i4, constraintWidget.mDistToTop);
                    i3 = Math.max(i3, width2);
                    i6 = Math.max(i6, height2);
                } else {
                    return;
                }
            }
        }
        this.mWrapWidth = Math.max(this.mMinWidth, Math.max(Math.max(i, i2), i3));
        this.mWrapHeight = Math.max(this.mMinHeight, Math.max(Math.max(i4, i5), i6));
        for (int i12 = 0; i12 < size; i12++) {
            ConstraintWidget constraintWidget2 = arrayList.get(i12);
            constraintWidget2.mHorizontalWrapVisited = false;
            constraintWidget2.mVerticalWrapVisited = false;
            constraintWidget2.mLeftHasCentered = false;
            constraintWidget2.mRightHasCentered = false;
            constraintWidget2.mTopHasCentered = false;
            constraintWidget2.mBottomHasCentered = false;
        }
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00d4, code lost:
        if (r5.mWrapHeight > r0) goto L_0x00d7;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020c  */
    @Override // android.support.constraint.solver.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 1228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.layout():void");
    }

    public int layoutFindGroups() {
        int i;
        int i2;
        int i3;
        int i4;
        ConstraintAnchor.Type[] typeArr = {ConstraintAnchor.Type.LEFT, ConstraintAnchor.Type.RIGHT, ConstraintAnchor.Type.TOP, ConstraintAnchor.Type.BASELINE, ConstraintAnchor.Type.BOTTOM};
        int size = this.mChildren.size();
        int i5 = 1;
        for (int i6 = 0; i6 < size; i6++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i6);
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            if (constraintAnchor.mTarget != null) {
                i = i5;
                if (setGroup(constraintAnchor, i5) == i5) {
                    i = i5 + 1;
                }
            } else {
                constraintAnchor.mGroup = Integer.MAX_VALUE;
                i = i5;
            }
            ConstraintAnchor constraintAnchor2 = constraintWidget.mTop;
            if (constraintAnchor2.mTarget != null) {
                i2 = i;
                if (setGroup(constraintAnchor2, i) == i) {
                    i2 = i + 1;
                }
            } else {
                constraintAnchor2.mGroup = Integer.MAX_VALUE;
                i2 = i;
            }
            ConstraintAnchor constraintAnchor3 = constraintWidget.mRight;
            if (constraintAnchor3.mTarget != null) {
                i3 = i2;
                if (setGroup(constraintAnchor3, i2) == i2) {
                    i3 = i2 + 1;
                }
            } else {
                constraintAnchor3.mGroup = Integer.MAX_VALUE;
                i3 = i2;
            }
            ConstraintAnchor constraintAnchor4 = constraintWidget.mBottom;
            if (constraintAnchor4.mTarget != null) {
                i4 = i3;
                if (setGroup(constraintAnchor4, i3) == i3) {
                    i4 = i3 + 1;
                }
            } else {
                constraintAnchor4.mGroup = Integer.MAX_VALUE;
                i4 = i3;
            }
            ConstraintAnchor constraintAnchor5 = constraintWidget.mBaseline;
            if (constraintAnchor5.mTarget != null) {
                i5 = i4;
                if (setGroup(constraintAnchor5, i4) == i4) {
                    i5 = i4 + 1;
                }
            } else {
                constraintAnchor5.mGroup = Integer.MAX_VALUE;
                i5 = i4;
            }
        }
        boolean z = true;
        while (z) {
            z = false;
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i7);
                for (ConstraintAnchor.Type type : typeArr) {
                    ConstraintAnchor constraintAnchor6 = null;
                    switch (C00622.f8x1d400623[type.ordinal()]) {
                        case 1:
                            constraintAnchor6 = constraintWidget2.mLeft;
                            break;
                        case 2:
                            constraintAnchor6 = constraintWidget2.mTop;
                            break;
                        case 3:
                            constraintAnchor6 = constraintWidget2.mRight;
                            break;
                        case 4:
                            constraintAnchor6 = constraintWidget2.mBottom;
                            break;
                        case 5:
                            constraintAnchor6 = constraintWidget2.mBaseline;
                            break;
                    }
                    ConstraintAnchor constraintAnchor7 = constraintAnchor6.mTarget;
                    if (constraintAnchor7 != null) {
                        boolean z2 = z;
                        if (constraintAnchor7.mOwner.getParent() != null) {
                            z2 = z;
                            if (constraintAnchor7.mGroup != constraintAnchor6.mGroup) {
                                int i8 = constraintAnchor6.mGroup > constraintAnchor7.mGroup ? constraintAnchor7.mGroup : constraintAnchor6.mGroup;
                                constraintAnchor6.mGroup = i8;
                                constraintAnchor7.mGroup = i8;
                                z2 = true;
                            }
                        }
                        ConstraintAnchor opposite = constraintAnchor7.getOpposite();
                        z = z2;
                        if (opposite != null) {
                            z = z2;
                            if (opposite.mGroup != constraintAnchor6.mGroup) {
                                int i9 = constraintAnchor6.mGroup > opposite.mGroup ? opposite.mGroup : constraintAnchor6.mGroup;
                                constraintAnchor6.mGroup = i9;
                                opposite.mGroup = i9;
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        int[] iArr = new int[(this.mChildren.size() * typeArr.length) + 1];
        Arrays.fill(iArr, -1);
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i11);
            ConstraintAnchor constraintAnchor8 = constraintWidget3.mLeft;
            int i12 = i10;
            if (constraintAnchor8.mGroup != Integer.MAX_VALUE) {
                int i13 = constraintAnchor8.mGroup;
                i12 = i10;
                if (iArr[i13] == -1) {
                    iArr[i13] = i10;
                    i12 = i10 + 1;
                }
                constraintAnchor8.mGroup = iArr[i13];
            }
            ConstraintAnchor constraintAnchor9 = constraintWidget3.mTop;
            int i14 = i12;
            if (constraintAnchor9.mGroup != Integer.MAX_VALUE) {
                int i15 = constraintAnchor9.mGroup;
                i14 = i12;
                if (iArr[i15] == -1) {
                    iArr[i15] = i12;
                    i14 = i12 + 1;
                }
                constraintAnchor9.mGroup = iArr[i15];
            }
            ConstraintAnchor constraintAnchor10 = constraintWidget3.mRight;
            int i16 = i14;
            if (constraintAnchor10.mGroup != Integer.MAX_VALUE) {
                int i17 = constraintAnchor10.mGroup;
                i16 = i14;
                if (iArr[i17] == -1) {
                    iArr[i17] = i14;
                    i16 = i14 + 1;
                }
                constraintAnchor10.mGroup = iArr[i17];
            }
            ConstraintAnchor constraintAnchor11 = constraintWidget3.mBottom;
            int i18 = i16;
            if (constraintAnchor11.mGroup != Integer.MAX_VALUE) {
                int i19 = constraintAnchor11.mGroup;
                i18 = i16;
                if (iArr[i19] == -1) {
                    iArr[i19] = i16;
                    i18 = i16 + 1;
                }
                constraintAnchor11.mGroup = iArr[i19];
            }
            ConstraintAnchor constraintAnchor12 = constraintWidget3.mBaseline;
            i10 = i18;
            if (constraintAnchor12.mGroup != Integer.MAX_VALUE) {
                int i20 = constraintAnchor12.mGroup;
                i10 = i18;
                if (iArr[i20] == -1) {
                    iArr[i20] = i18;
                    i10 = i18 + 1;
                }
                constraintAnchor12.mGroup = iArr[i20];
            }
        }
        return i10;
    }

    public int layoutFindGroupsSimple() {
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.mLeft.mGroup = 0;
            constraintWidget.mRight.mGroup = 0;
            constraintWidget.mTop.mGroup = 1;
            constraintWidget.mBottom.mGroup = 1;
            constraintWidget.mBaseline.mGroup = 1;
        }
        return 2;
    }

    public void layoutWithGroup(int i) {
        int i2 = this.f5mX;
        int i3 = this.f6mY;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            this.f5mX = 0;
            this.f6mY = 0;
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.f5mX = 0;
            this.f6mY = 0;
        }
        int size = this.mChildren.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i4);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        this.mLeft.mGroup = 0;
        this.mRight.mGroup = 0;
        this.mTop.mGroup = 1;
        this.mBottom.mGroup = 1;
        this.mSystem.reset();
        for (int i5 = 0; i5 < i; i5++) {
            try {
                addToSolver(this.mSystem, i5);
                this.mSystem.minimize();
                updateFromSolver(this.mSystem, i5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            updateFromSolver(this.mSystem, -2);
        }
        if (this.mParent != null) {
            int width = getWidth();
            int height = getHeight();
            this.mSnapshot.applyTo(this);
            setWidth(width);
            setHeight(height);
        } else {
            this.f5mX = i2;
            this.f6mY = i3;
        }
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    @Override // android.support.constraint.solver.widgets.WidgetContainer, android.support.constraint.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, int i, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem, i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            constraintWidget.updateFromSolver(linearSystem, i);
            if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                zArr[2] = true;
            }
            if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                zArr[2] = true;
            }
        }
    }
}
