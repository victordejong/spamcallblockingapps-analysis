package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/Grouping.class */
public class Grouping {
    /* renamed from: a */
    public static WidgetGroup m20128a(ConstraintWidget constraintWidget, int i, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        WidgetGroup widgetGroup2;
        int i2 = i == 0 ? constraintWidget.f2215I0 : constraintWidget.f2217J0;
        int i3 = 0;
        if (i2 != -1 && (widgetGroup == null || i2 != widgetGroup.f2421b)) {
            int i4 = 0;
            while (true) {
                widgetGroup2 = widgetGroup;
                if (i4 >= arrayList.size()) {
                    break;
                }
                widgetGroup2 = arrayList.get(i4);
                if (widgetGroup2.m20113c() != i2) {
                    i4++;
                } else if (widgetGroup != null) {
                    widgetGroup.m20109g(i, widgetGroup2);
                    arrayList.remove(widgetGroup);
                }
            }
        } else {
            widgetGroup2 = widgetGroup;
            if (i2 != -1) {
                return widgetGroup;
            }
        }
        WidgetGroup widgetGroup3 = widgetGroup2;
        if (widgetGroup2 == null) {
            WidgetGroup widgetGroup4 = widgetGroup2;
            if (constraintWidget instanceof HelperWidget) {
                int f1 = ((HelperWidget) constraintWidget).m20195f1(i);
                widgetGroup4 = widgetGroup2;
                if (f1 != -1) {
                    int i5 = 0;
                    while (true) {
                        widgetGroup4 = widgetGroup2;
                        if (i5 >= arrayList.size()) {
                            break;
                        }
                        widgetGroup4 = arrayList.get(i5);
                        if (widgetGroup4.m20113c() == f1) {
                            break;
                        }
                        i5++;
                    }
                }
            }
            WidgetGroup widgetGroup5 = widgetGroup4;
            if (widgetGroup4 == null) {
                widgetGroup5 = new WidgetGroup(i);
            }
            arrayList.add(widgetGroup5);
            widgetGroup3 = widgetGroup5;
        }
        if (widgetGroup3.m20115a(constraintWidget)) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                ConstraintAnchor e1 = guideline.m20213e1();
                if (guideline.m20212f1() == 0) {
                    i3 = 1;
                }
                e1.m20415c(i3, arrayList, widgetGroup3);
            }
            if (i == 0) {
                constraintWidget.f2215I0 = widgetGroup3.m20113c();
                constraintWidget.f2214I.m20415c(i, arrayList, widgetGroup3);
                constraintWidget.f2218K.m20415c(i, arrayList, widgetGroup3);
            } else {
                constraintWidget.f2217J0 = widgetGroup3.m20113c();
                constraintWidget.f2216J.m20415c(i, arrayList, widgetGroup3);
                constraintWidget.f2220M.m20415c(i, arrayList, widgetGroup3);
                constraintWidget.f2219L.m20415c(i, arrayList, widgetGroup3);
            }
            constraintWidget.f2223P.m20415c(i, arrayList, widgetGroup3);
        }
        return widgetGroup3;
    }

    /* renamed from: b */
    private static WidgetGroup m20127b(ArrayList<WidgetGroup> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            WidgetGroup widgetGroup = arrayList.get(i2);
            if (i == widgetGroup.f2421b) {
                return widgetGroup;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:193:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0696  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m20126c(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r6, androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.Measurer r7) {
        /*
            Method dump skipped, instructions count: 1705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.Grouping.m20126c(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure$Measurer):boolean");
    }

    /* renamed from: d */
    public static boolean m20125d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        return (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT));
    }
}
