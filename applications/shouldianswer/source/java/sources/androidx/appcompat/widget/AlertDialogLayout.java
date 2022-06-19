package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0051a;
import androidx.appcompat.widget.C0277ae;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AlertDialogLayout.class */
public class AlertDialogLayout extends C0277ae {
    public AlertDialogLayout(Context context) {
        super(context);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private static int m7419a(View view) {
        int m6234m = C0552u.m6234m(view);
        if (m6234m > 0) {
            return m6234m;
        }
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() != 1) {
            return 0;
        }
        return m7419a(viewGroup.getChildAt(0));
    }

    /* renamed from: a */
    private void m7418a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: a */
    private boolean m7420a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == C0051a.C0057f.topPanel) {
                    view = childAt;
                } else if (id == C0051a.C0057f.buttonPanel) {
                    view3 = childAt;
                } else if ((id != C0051a.C0057f.contentPanel && id != C0051a.C0057f.customPanel) || view2 != null) {
                    return false;
                } else {
                    view2 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (view != null) {
            view.measure(i, 0);
            paddingTop += view.getMeasuredHeight();
            i3 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i3 = 0;
        }
        if (view3 != null) {
            view3.measure(i, 0);
            i5 = m7419a(view3);
            i4 = view3.getMeasuredHeight() - i5;
            paddingTop += i5;
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (view2 != null) {
            view2.measure(i, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingTop), mode));
            i6 = view2.getMeasuredHeight();
            paddingTop += i6;
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        } else {
            i6 = 0;
        }
        int i9 = size - paddingTop;
        int i10 = i3;
        int i11 = i9;
        int i12 = paddingTop;
        if (view3 != null) {
            int min = Math.min(i9, i4);
            int i13 = i9;
            int i14 = i5;
            if (min > 0) {
                i13 = i9 - min;
                i14 = i5 + min;
            }
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
            i12 = (paddingTop - i5) + view3.getMeasuredHeight();
            i11 = i13;
            i10 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        }
        int i15 = i10;
        int i16 = i12;
        if (view2 != null) {
            i15 = i10;
            i16 = i12;
            if (i11 > 0) {
                view2.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i11, mode));
                i16 = (i12 - i6) + view2.getMeasuredHeight();
                i15 = View.combineMeasuredStates(i10, view2.getMeasuredState());
            }
        }
        int i17 = 0;
        int i18 = 0;
        while (true) {
            i7 = i18;
            if (i17 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i17);
            int i19 = i7;
            if (childAt2.getVisibility() != 8) {
                i19 = Math.max(i7, childAt2.getMeasuredWidth());
            }
            i17++;
            i18 = i19;
        }
        setMeasuredDimension(View.resolveSizeAndState(i7 + getPaddingLeft() + getPaddingRight(), i, i15), View.resolveSizeAndState(i16, i2, 0));
        if (mode2 != 1073741824) {
            m7417b(childCount, i2);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    private void m7417b(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0277ae.C0278a c0278a = (C0277ae.C0278a) childAt.getLayoutParams();
                if (c0278a.width == -1) {
                    int i4 = c0278a.height;
                    c0278a.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    c0278a.height = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x013c  */
    @Override // androidx.appcompat.widget.C0277ae, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AlertDialogLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.View
    public void onMeasure(int i, int i2) {
        if (!m7420a(i, i2)) {
            super.onMeasure(i, i2);
        }
    }
}
