package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/ChainRun.class */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets = new ArrayList<>();

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget = this.widget;
        ConstraintWidget previousChainMember = constraintWidget.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget2 = previousChainMember;
            if (constraintWidget2 == null) {
                break;
            }
            constraintWidget = constraintWidget2;
            previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = nextChainMember;
            if (constraintWidget3 == null) {
                break;
            }
            this.widgets.add(constraintWidget3.getRun(this.orientation));
            nextChainMember = constraintWidget3.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            if (this.orientation == 0) {
                next.widget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                next.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            this.widgets.get(i).applyToWidget();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        WidgetRun widgetRun;
        int size = this.widgets.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = c + widgetRun.start.margin + this.widgets.get(i).getWrapDimension() + widgetRun.end.margin;
        }
        return c;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.widgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb2 = ((sb2 + SimpleComparison.LESS_THAN_OPERATION) + next) + "> ";
        }
        return sb2;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z;
        int i13;
        float f2;
        int i14;
        int i15;
        if (!this.start.resolved || !this.end.resolved) {
            return;
        }
        ConstraintWidget parent = this.widget.getParent();
        boolean isRtl = (parent == null || !(parent instanceof ConstraintWidgetContainer)) ? false : ((ConstraintWidgetContainer) parent).isRtl();
        int i16 = this.end.value - this.start.value;
        int size = this.widgets.size();
        int i17 = 0;
        while (true) {
            if (i17 >= size) {
                i = -1;
                break;
            }
            i = i17;
            if (this.widgets.get(i17).widget.getVisibility() != 8) {
                break;
            }
            i17++;
        }
        int i18 = size - 1;
        int i19 = i18;
        while (true) {
            i2 = -1;
            if (i19 < 0) {
                break;
            }
            if (this.widgets.get(i19).widget.getVisibility() != 8) {
                i2 = i19;
                break;
            }
            i19--;
        }
        for (int i20 = 0; i20 < 2; i20++) {
            int i21 = 0;
            i4 = 0;
            int i22 = 0;
            int i23 = 0;
            f = 0.0f;
            while (i21 < size) {
                WidgetRun widgetRun = this.widgets.get(i21);
                if (widgetRun.widget.getVisibility() == 8) {
                    i11 = i4;
                    i10 = i22;
                } else {
                    int i24 = i23 + 1;
                    int i25 = i4;
                    if (i21 > 0) {
                        i25 = i4;
                        if (i21 >= i) {
                            i25 = i4 + widgetRun.start.margin;
                        }
                    }
                    int i26 = widgetRun.dimension.value;
                    boolean z2 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (!z2) {
                        if (widgetRun.matchConstraintsType == 1 && i20 == 0) {
                            i13 = i22 + 1;
                            i15 = widgetRun.dimension.wrapValue;
                        } else {
                            z = z2;
                            i12 = i26;
                            i13 = i22;
                            if (widgetRun.dimension.resolved) {
                                i13 = i22;
                                i15 = i26;
                            }
                        }
                        z = true;
                        i12 = i15;
                    } else if (this.orientation == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                        return;
                    } else {
                        z = z2;
                        i12 = i26;
                        i13 = i22;
                        if (this.orientation == 1) {
                            z = z2;
                            i12 = i26;
                            i13 = i22;
                            if (!widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            }
                        }
                    }
                    if (!z) {
                        int i27 = i13 + 1;
                        float f3 = widgetRun.widget.mWeight[this.orientation];
                        i14 = i25;
                        i13 = i27;
                        f2 = f;
                        if (f3 >= 0.0f) {
                            f2 = f + f3;
                            i14 = i25;
                            i13 = i27;
                        }
                    } else {
                        i14 = i25 + i12;
                        f2 = f;
                    }
                    i11 = i14;
                    i10 = i13;
                    i23 = i24;
                    f = f2;
                    if (i21 < i18) {
                        i11 = i14;
                        i10 = i13;
                        i23 = i24;
                        f = f2;
                        if (i21 < i2) {
                            i11 = i14 + (-widgetRun.end.margin);
                            f = f2;
                            i23 = i24;
                            i10 = i13;
                        }
                    }
                }
                i21++;
                i4 = i11;
                i22 = i10;
            }
            if (i4 < i16 || i22 == 0) {
                i3 = i23;
                i5 = i22;
                break;
            }
        }
        i3 = 0;
        i4 = 0;
        i5 = 0;
        f = 0.0f;
        int i28 = this.start.value;
        if (isRtl) {
            i28 = this.end.value;
        }
        int i29 = i28;
        if (i4 > i16) {
            i29 = isRtl ? i28 + ((int) (((i4 - i16) / 2.0f) + 0.5f)) : i28 - ((int) (((i4 - i16) / 2.0f) + 0.5f));
        }
        if (i5 > 0) {
            float f4 = i16 - i4;
            int i30 = (int) ((f4 / i5) + 0.5f);
            int i31 = 0;
            int i32 = 0;
            int i33 = i4;
            int i34 = i29;
            while (i31 < size) {
                WidgetRun widgetRun2 = this.widgets.get(i31);
                if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !widgetRun2.dimension.resolved) {
                    int i35 = f > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f4) / f) + 0.5f) : i30;
                    if (this.orientation == 0) {
                        int i36 = widgetRun2.widget.mMatchConstraintMaxWidth;
                        int max = Math.max(widgetRun2.widget.mMatchConstraintMinWidth, widgetRun2.matchConstraintsType == 1 ? Math.min(i35, widgetRun2.dimension.wrapValue) : i35);
                        int i37 = max;
                        if (i36 > 0) {
                            i37 = Math.min(i36, max);
                        }
                        i9 = i35;
                        i8 = i32;
                        if (i37 != i35) {
                            i8 = i32 + 1;
                            i9 = i37;
                        }
                    } else {
                        int i38 = widgetRun2.widget.mMatchConstraintMaxHeight;
                        int max2 = Math.max(widgetRun2.widget.mMatchConstraintMinHeight, widgetRun2.matchConstraintsType == 1 ? Math.min(i35, widgetRun2.dimension.wrapValue) : i35);
                        int i39 = max2;
                        if (i38 > 0) {
                            i39 = Math.min(i38, max2);
                        }
                        i9 = i35;
                        i8 = i32;
                        if (i39 != i35) {
                            i8 = i32 + 1;
                            i9 = i39;
                        }
                    }
                    widgetRun2.dimension.resolve(i9);
                } else {
                    i8 = i32;
                }
                i31++;
                i32 = i8;
            }
            if (i32 > 0) {
                int i40 = i5 - i32;
                i7 = 0;
                for (int i41 = 0; i41 < size; i41++) {
                    WidgetRun widgetRun3 = this.widgets.get(i41);
                    if (widgetRun3.widget.getVisibility() != 8) {
                        int i42 = i7;
                        if (i41 > 0) {
                            i42 = i7;
                            if (i41 >= i) {
                                i42 = i7 + widgetRun3.start.margin;
                            }
                        }
                        int i43 = i42 + widgetRun3.dimension.value;
                        i7 = i43;
                        if (i41 < i18) {
                            i7 = i43;
                            if (i41 < i2) {
                                i7 = i43 + (-widgetRun3.end.margin);
                            }
                        }
                    }
                }
                i5 = i40;
            } else {
                i7 = i33;
            }
            if (this.chainStyle == 2 && i32 == 0) {
                this.chainStyle = 0;
                i4 = i7;
                i6 = i5;
                i29 = i34;
            } else {
                i4 = i7;
                i6 = i5;
                i29 = i34;
            }
        } else {
            i6 = i5;
        }
        if (i4 > i16) {
            this.chainStyle = 2;
        }
        if (i3 > 0 && i6 == 0 && i == i2) {
            this.chainStyle = 2;
        }
        int i44 = this.chainStyle;
        if (i44 != 1) {
            if (i44 == 0) {
                int i45 = (i16 - i4) / (i3 + 1);
                if (i6 > 0) {
                    i45 = 0;
                }
                for (int i46 = 0; i46 < size; i46++) {
                    WidgetRun widgetRun4 = this.widgets.get(isRtl ? size - (i46 + 1) : i46);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i29);
                        widgetRun4.end.resolve(i29);
                    } else {
                        int i47 = isRtl ? i29 - i45 : i29 + i45;
                        int i48 = i47;
                        if (i46 > 0) {
                            i48 = i47;
                            if (i46 >= i) {
                                i48 = isRtl ? i47 - widgetRun4.start.margin : i47 + widgetRun4.start.margin;
                            }
                        }
                        if (isRtl) {
                            widgetRun4.end.resolve(i48);
                        } else {
                            widgetRun4.start.resolve(i48);
                        }
                        int i49 = widgetRun4.dimension.value;
                        int i50 = i49;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            i50 = i49;
                            if (widgetRun4.matchConstraintsType == 1) {
                                i50 = Math.min(i49, widgetRun4.dimension.wrapValue);
                            }
                        }
                        int i51 = isRtl ? i48 - i50 : i48 + i50;
                        if (isRtl) {
                            widgetRun4.start.resolve(i51);
                        } else {
                            widgetRun4.end.resolve(i51);
                        }
                        i29 = i51;
                        if (i46 < i18) {
                            i29 = i51;
                            if (i46 < i2) {
                                i29 = isRtl ? i51 - (-widgetRun4.end.margin) : i51 + (-widgetRun4.end.margin);
                            }
                        }
                    }
                }
                return;
            } else if (i44 != 2) {
                return;
            } else {
                float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
                float f5 = horizontalBiasPercent;
                if (isRtl) {
                    f5 = 1.0f - horizontalBiasPercent;
                }
                int i52 = (int) (((i16 - i4) * f5) + 0.5f);
                if (i52 < 0 || i6 > 0) {
                    i52 = 0;
                }
                int i53 = isRtl ? i29 - i52 : i29 + i52;
                for (int i54 = 0; i54 < size; i54++) {
                    WidgetRun widgetRun5 = this.widgets.get(isRtl ? size - (i54 + 1) : i54);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i53);
                        widgetRun5.end.resolve(i53);
                    } else {
                        int i55 = i53;
                        if (i54 > 0) {
                            i55 = i53;
                            if (i54 >= i) {
                                i55 = isRtl ? i53 - widgetRun5.start.margin : i53 + widgetRun5.start.margin;
                            }
                        }
                        if (isRtl) {
                            widgetRun5.end.resolve(i55);
                        } else {
                            widgetRun5.start.resolve(i55);
                        }
                        int i56 = widgetRun5.dimension.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            i56 = widgetRun5.dimension.wrapValue;
                        }
                        int i57 = isRtl ? i55 - i56 : i55 + i56;
                        if (isRtl) {
                            widgetRun5.start.resolve(i57);
                        } else {
                            widgetRun5.end.resolve(i57);
                        }
                        i53 = i57;
                        if (i54 < i18) {
                            i53 = i57;
                            if (i54 < i2) {
                                i53 = isRtl ? i57 - (-widgetRun5.end.margin) : i57 + (-widgetRun5.end.margin);
                            }
                        }
                    }
                }
                return;
            }
        }
        int i58 = i3 > 1 ? (i16 - i4) / (i3 - 1) : i3 == 1 ? (i16 - i4) / 2 : 0;
        if (i6 > 0) {
            i58 = 0;
        }
        int i59 = 0;
        while (true) {
            int i60 = i29;
            if (i59 >= size) {
                return;
            }
            WidgetRun widgetRun6 = this.widgets.get(isRtl ? size - (i59 + 1) : i59);
            if (widgetRun6.widget.getVisibility() == 8) {
                widgetRun6.start.resolve(i60);
                widgetRun6.end.resolve(i60);
                i29 = i60;
            } else {
                int i61 = i60;
                if (i59 > 0) {
                    i61 = isRtl ? i60 - i58 : i60 + i58;
                }
                int i62 = i61;
                if (i59 > 0) {
                    i62 = i61;
                    if (i59 >= i) {
                        i62 = isRtl ? i61 - widgetRun6.start.margin : i61 + widgetRun6.start.margin;
                    }
                }
                if (isRtl) {
                    widgetRun6.end.resolve(i62);
                } else {
                    widgetRun6.start.resolve(i62);
                }
                int i63 = widgetRun6.dimension.value;
                int i64 = i63;
                if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i64 = i63;
                    if (widgetRun6.matchConstraintsType == 1) {
                        i64 = widgetRun6.dimension.wrapValue;
                    }
                }
                int i65 = isRtl ? i62 - i64 : i62 + i64;
                if (isRtl) {
                    widgetRun6.start.resolve(i65);
                } else {
                    widgetRun6.end.resolve(i65);
                }
                widgetRun6.resolved = true;
                i29 = i65;
                if (i59 < i18) {
                    i29 = i65;
                    if (i59 < i2) {
                        i29 = isRtl ? i65 - (-widgetRun6.end.margin) : i65 + (-widgetRun6.end.margin);
                    }
                }
            }
            i59++;
        }
    }
}
