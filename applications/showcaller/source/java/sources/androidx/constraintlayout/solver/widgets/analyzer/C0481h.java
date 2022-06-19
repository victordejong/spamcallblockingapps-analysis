package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/h.class */
public class C0481h {
    /* renamed from: a */
    public static C0489n m33904a(ConstraintWidget constraintWidget, int i, ArrayList<C0489n> arrayList, C0489n c0489n) {
        C0489n c0489n2;
        int i2 = i == 0 ? constraintWidget.f2111L0 : constraintWidget.f2113M0;
        if (i2 != -1 && (c0489n == null || i2 != c0489n.f2270c)) {
            int i3 = 0;
            while (true) {
                c0489n2 = c0489n;
                if (i3 >= arrayList.size()) {
                    break;
                }
                c0489n2 = arrayList.get(i3);
                if (c0489n2.m33884c() != i2) {
                    i3++;
                } else if (c0489n != null) {
                    c0489n.m33880g(i, c0489n2);
                    arrayList.remove(c0489n);
                }
            }
        } else {
            c0489n2 = c0489n;
            if (i2 != -1) {
                return c0489n;
            }
        }
        C0489n c0489n3 = c0489n2;
        if (c0489n2 == null) {
            C0489n c0489n4 = c0489n2;
            if (constraintWidget instanceof C0499h) {
                int m33765f1 = ((C0499h) constraintWidget).m33765f1(i);
                c0489n4 = c0489n2;
                if (m33765f1 != -1) {
                    int i4 = 0;
                    while (true) {
                        c0489n4 = c0489n2;
                        if (i4 >= arrayList.size()) {
                            break;
                        }
                        c0489n4 = arrayList.get(i4);
                        if (c0489n4.m33884c() == m33765f1) {
                            break;
                        }
                        i4++;
                    }
                }
            }
            C0489n c0489n5 = c0489n4;
            if (c0489n4 == null) {
                c0489n5 = new C0489n(i);
            }
            arrayList.add(c0489n5);
            c0489n3 = c0489n5;
        }
        if (c0489n3.m33886a(constraintWidget)) {
            if (constraintWidget instanceof C0496f) {
                C0496f c0496f = (C0496f) constraintWidget;
                ConstraintAnchor m33783e1 = c0496f.m33783e1();
                int i5 = 0;
                if (c0496f.m33782f1() == 0) {
                    i5 = 1;
                }
                m33783e1.m34072c(i5, arrayList, c0489n3);
            }
            if (i == 0) {
                constraintWidget.f2111L0 = c0489n3.m33884c();
                constraintWidget.f2108K.m34072c(i, arrayList, c0489n3);
                constraintWidget.f2112M.m34072c(i, arrayList, c0489n3);
            } else {
                constraintWidget.f2113M0 = c0489n3.m33884c();
                constraintWidget.f2110L.m34072c(i, arrayList, c0489n3);
                constraintWidget.f2115O.m34072c(i, arrayList, c0489n3);
                constraintWidget.f2114N.m34072c(i, arrayList, c0489n3);
            }
            constraintWidget.f2118R.m34072c(i, arrayList, c0489n3);
        }
        return c0489n3;
    }

    /* renamed from: b */
    private static C0489n m33903b(ArrayList<C0489n> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0489n c0489n = arrayList.get(i2);
            if (i == c0489n.f2270c) {
                return c0489n;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x068a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m33902c(androidx.constraintlayout.solver.widgets.C0493d r5, androidx.constraintlayout.solver.widgets.analyzer.C0473b.AbstractC0475b r6) {
        /*
            Method dump skipped, instructions count: 1695
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0481h.m33902c(androidx.constraintlayout.solver.widgets.d, androidx.constraintlayout.solver.widgets.analyzer.b$b):boolean");
    }

    /* renamed from: d */
    public static boolean m33901d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }
}
