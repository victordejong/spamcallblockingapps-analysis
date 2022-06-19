package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.LinearLayoutCompat;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AlertDialogLayout.class */
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: q */
    public static int m43149q(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int minimumHeight = view.getMinimumHeight();
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() != 1) {
            return 0;
        }
        return m43149q(viewGroup.getChildAt(0));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0145  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AlertDialogLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == C0032R.C0034id.topPanel) {
                    view = childAt;
                } else if (id != C0032R.C0034id.buttonPanel) {
                    if ((id != C0032R.C0034id.contentPanel && id != C0032R.C0034id.customPanel) || view3 != null) {
                        z = false;
                        break;
                    }
                    view3 = childAt;
                } else {
                    view2 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i, 0);
            paddingBottom += view.getMeasuredHeight();
            i3 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i3 = 0;
        }
        if (view2 != null) {
            view2.measure(i, 0);
            i5 = m43149q(view2);
            i4 = view2.getMeasuredHeight() - i5;
            paddingBottom += i5;
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (view3 != null) {
            view3.measure(i, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            i6 = view3.getMeasuredHeight();
            paddingBottom += i6;
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        } else {
            i6 = 0;
        }
        int i9 = size - paddingBottom;
        int i10 = i3;
        int i11 = i9;
        int i12 = paddingBottom;
        if (view2 != null) {
            int min = Math.min(i9, i4);
            int i13 = i9;
            int i14 = i5;
            if (min > 0) {
                i13 = i9 - min;
                i14 = i5 + min;
            }
            view2.measure(i, View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
            i12 = (paddingBottom - i5) + view2.getMeasuredHeight();
            i11 = i13;
            i10 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        }
        int i15 = i10;
        int i16 = i12;
        if (view3 != null) {
            i15 = i10;
            i16 = i12;
            if (i11 > 0) {
                view3.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i11, mode));
                i16 = (i12 - i6) + view3.getMeasuredHeight();
                i15 = View.combineMeasuredStates(i10, view3.getMeasuredState());
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
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + i7, i, i15), View.resolveSizeAndState(i16, i2, 0));
        if (mode2 != 1073741824) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt3 = getChildAt(i20);
                if (childAt3.getVisibility() != 8) {
                    LinearLayoutCompat.C0057a c0057a = (LinearLayoutCompat.C0057a) childAt3.getLayoutParams();
                    if (((LinearLayout.LayoutParams) c0057a).width == -1) {
                        int i21 = ((LinearLayout.LayoutParams) c0057a).height;
                        ((LinearLayout.LayoutParams) c0057a).height = childAt3.getMeasuredHeight();
                        measureChildWithMargins(childAt3, makeMeasureSpec, 0, i2, 0);
                        ((LinearLayout.LayoutParams) c0057a).height = i21;
                    }
                }
            }
        }
        z = true;
        if (!z) {
            super.onMeasure(i, i2);
        }
    }
}
